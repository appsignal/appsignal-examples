import Appsignal from "@appsignal/javascript";

const appsignal = new Appsignal({
  key: "FRONTEND KEY HERE",
  revision: "VALID REVISION HERE",
});

(function () {
  appsignal.sendError(new Error("I am an error"));
})();
