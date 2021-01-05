const paths = require("./paths");

const childProcess = require("child_process");
const { merge } = require("webpack-merge");
const common = require("./webpack.common.js");

const MiniCssExtractPlugin = require("mini-css-extract-plugin");
const CssMinimizerPlugin = require("css-minimizer-webpack-plugin");
const { AppsignalPlugin } = require("@appsignal/webpack");

module.exports = merge(common, {
  mode: "production",
  devtool: "source-map",
  output: {
    path: paths.build,
    publicPath: "/",
    filename: "js/[name].[contenthash].bundle.js",
  },
  plugins: [
    // Extracts CSS into separate files
    // Note: style-loader is for development, MiniCssExtractPlugin is for production
    new MiniCssExtractPlugin({
      filename: "styles/[name].[contenthash].css",
      chunkFilename: "[id].css",
    }),

    // AppSignal plugin
    new AppsignalPlugin({
      // required
      apiKey: process.env["APPSIGNAL_PUSH_API_KEY"],
      release: childProcess
        .execSync(`git describe --always`, { encoding: "utf8" })
        .trim(),
      appName: process.env["APPSIGNAL_APP_NAME"],
      environment: process.env.NODE_ENV || "development",
      urlRoot: "http://localhost:8080",
    }),
  ],
  module: {
    rules: [
      {
        test: /\.(scss|css)$/,
        use: [
          MiniCssExtractPlugin.loader,
          {
            loader: "css-loader",
            options: {
              importLoaders: 2,
              sourceMap: false,
            },
          },
          "postcss-loader",
        ],
      },
    ],
  },
  optimization: {
    minimize: true,
    minimizer: [new CssMinimizerPlugin(), "..."],
    // Once your build outputs multiple chunks, this option will ensure they share the webpack runtime
    // instead of having their own. This also helps with long-term caching, since the chunks will only
    // change when actual code changes, not the webpack runtime.
    runtimeChunk: {
      name: "runtime",
    },
  },
  performance: {
    hints: false,
    maxEntrypointSize: 512000,
    maxAssetSize: 512000,
  },
});
