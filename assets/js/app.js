// If you want to use Phoenix channels, run `mix help phx.gen.channel`
// to get started and then uncomment the line below.
// import "./user_socket.js"

// You can include dependencies in two ways.
//
// The simplest option is to put them in assets/vendor and
// import them using relative paths:
//
//     import "../vendor/some-package.js"
//
// Alternatively, you can `npm install some-package --prefix assets` and import
// them using a path starting with the package name:
//
//     import "some-package"
//

// Include phoenix_html to handle method=PUT/DELETE in forms and buttons.
import "phoenix_html"
// Establish Phoenix Socket and LiveView configuration.
import {Socket} from "phoenix"
import {LiveSocket} from "phoenix_live_view"
import topbar from "../vendor/topbar"

// Importa o WebSocket e módulos específicos do projeto
import socket from "./user_socket.js"
import room from "./room.js"
window.Rooms = room;

// Defina os hooks, incluindo o LoadSpecificJs
let Hooks = {};

Hooks.LoadSpecificJs = {
  mounted() {
    const page = this.el.getAttribute("data-page");
    import(`./${page}.js`).then(module => {
      module.default(); // chama a função padrão exportada do módulo
    }).catch(err => console.error(`Erro ao carregar o JS para ${page}:`, err));
  }
};

// Inicialize o LiveSocket e passe o objeto `Hooks`
let csrfToken = document.querySelector("meta[name='csrf-token']").getAttribute("content");
let liveSocket = new LiveSocket("/live", Socket, {
  hooks: Hooks, // Aqui passamos os hooks
  longPollFallbackMs: 2500,
  params: { _csrf_token: csrfToken }
});

// Show progress bar on live navigation and form submits
topbar.config({barColors: {0: "#29d"}, shadowColor: "rgba(0, 0, 0, .3)"});
window.addEventListener("phx:page-loading-start", _info => topbar.show(300));
window.addEventListener("phx:page-loading-stop", _info => topbar.hide());

// Conectar ao LiveView se houver views na página
liveSocket.connect();

// Expor o liveSocket para o console para debug
window.liveSocket = liveSocket;

// Inicializa o WebSocket de sala do arquivo room.js
window.Rooms.init(socket);
