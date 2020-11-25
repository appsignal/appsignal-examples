import Appsignal from "@appsignal/javascript"
import { ErrorBoundary } from "@appsignal/react"

import "../styles/index.css"

const appsignal = new Appsignal({
  key: ""
})

export function reportWebVitals(metric) {
  const body = JSON.stringify(metric)
  const url = "/__appsignal-web-vitals"

  // Use `navigator.sendBeacon()` if available, falling back to `fetch()`.
  ;(navigator.sendBeacon && navigator.sendBeacon(url, body)) ||
    fetch(url, { body, method: "POST", keepalive: true })
}

export default function MyApp({ Component, pageProps }) {
  return (
    <ErrorBoundary instance={appsignal}>
      <Component {...pageProps} />
    </ErrorBoundary>
  )
}
