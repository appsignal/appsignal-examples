PadrinoExample::App.controllers do
  # GET /
  get "/" do
    "Hello world!"
  end

  # GET /slow
  get "/slow" do
    sleep 2
    "ZzZzZzZz"
  end

  # GET /error
  get "/error" do
    raise "error"
  end
end

PadrinoExample::App.controllers :foo do
  # GET /foo
  get "/" do
    "Hello Foo!"
  end

  # GET /foo/slow
  get "/slow" do
    sleep 2
    "ZzZzZzZz"
  end

  # GET /foo/error
  get "/error" do
    raise "error"
  end

  # GET /foo/something/:id
  # get :something, with: :id do
  get "/something/:id" do
    "Foo something #{params[:id]}"
  end

  # GET /foo/bar
  get :foo_bar, :map => "/foo/bar" do
    %(Maps to `:foo_bar`, with static url "/foo/bar")
  end

  # GET /foo/baz/:id
  get :baz, :with => :id do
    %(Maps to `:foo`, with dynamic url "/foo/baz/:id" => "/foo/baz/#{params[:id]}")
  end
end

PadrinoExample::App.controllers :boo, :parent => :foo do
  # GET /foo/:id/boo
  get "/" do
    "Hello Boo!"
  end

  # GET /foo/:id/boo/slow
  get "/slow" do
    sleep 2
    "ZzZzZzZz"
  end

  # GET /foo/:id/boo/error
  get "/error" do
    raise "error"
  end
end
