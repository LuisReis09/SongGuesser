# lib/songapp_web/live/about_live.ex
defmodule SongappWeb.AboutLive do
  use SongappWeb, :live_view

  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  def render(assigns) do
    ~H"""
      <%!-- <h1>About Page</h1> --%>
      <%!-- <nav> --%>
        <%!-- <a href="#" phx-click="navigate" phx-value-page="home">Home</a> --%>
        <%!-- <a href="#" phx-click="navigate" phx-value-page="about">About</a> --%>
        <%!-- <a href="#" phx-click="navigate" phx-value-page="game">Game</a> --%>
        <%!-- <a href="#" phx-click="navigate" phx-value-page="how">How to Play</a> --%>
      <%!-- </nav> --%>
    <%!-- </div> --%>






    <link rel="stylesheet" href={@socket.endpoint.static_path("/assets/about_live.css")}>







    <%!-- <!DOCTYPE html> --%>
    <%!-- <html lang="en"> --%>
    <%!-- <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="shortcut icon" href="/frontend/assets/logo.png" type="image/x-icon">
    <link rel="stylesheet" href="/css/app.css">
    <link rel="stylesheet" href="/css/aboutUs.css">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:ital,opsz,wght@0,14..32,100..900;1,14..32,100..900&display=swap" rel="stylesheet">

    <title>Song Guesser</title>
    </head>
    <body> --%>
    <!-- início do header -->
    <header>

        <!-- início do menu -->
        <div class="menu">
            <!-- botao de voltar ao inicio -->
            <%!-- <a href="index.html">Home</a> --%>
             <a href="#" phx-click="navigate" phx-value-page="home">Home</a>
            <!-- botao que direciona a um tutorial em texto -->
            <%!-- <a href="howToPlay.html">How To Play</a> --%>
            <a href="#" phx-click="navigate" phx-value-page="how">How to Play</a>
            <!-- botao que direciona a uma pagina que nos apresenta -->
            <%!-- <a href="aboutUs.html">About Us</a> --%>
            <a href="#" phx-click="navigate" phx-value-page="about">About us</a>
        </div>
        <!-- fim do menu -->


        <!-- inicio da logo -->
        <div class="logo">
            <!-- img logo -->
            <img src="/images/logo.png" alt="logotipo do Song Guesser">
        </div>
        <!-- inicio da logo -->

    </header>
    <!-- final do header -->

    <section>
        <div id="creators_box">
            <!-- Criador 1 -->
            <div class="creator_box">
                <div class="creator_img" id="creator_img_1"></div>
                <div class="creator_info">
                    <h2>Herick Freitas</h2>
                    <p>Front-end & Creative Designer</p>
                    <div class="socialmedia_links">
                        <a target="_blank" href="https://github.com/Herickjf"><i class="fa fa-github"></i></a>
                        <a target="_blank" href="https://www.linkedin.com/in/herick-jos%C3%A9-de-freitas-99a1ba266/"><i class="fa fa-linkedin"></i></a>
                    </div>
                </div>
            </div>

            <!-- Criador 2 -->
            <div class="creator_box">
                <div class="creator_img" id="creator_img_2"></div>
                <div class="creator_info">
                    <h2>João Marcos</h2>
                    <p>WebSocket Integration</p>
                    <div class="socialmedia_links">
                        <a target="_blank" href="https://github.com/j4marcos"><i class="fa fa-github"></i></a>
                        <a target="_blank" href="https://www.linkedin.com/in/j4marcos/"><i class="fa fa-linkedin"></i></a>
                    </div>
                </div>
            </div>


            <!-- Criador 3 -->
            <div class="creator_box">
                <div class="creator_img" id="creator_img_3"></div>
                <div class="creator_info">
                    <h2>Kaique Santos</h2>
                    <p>API Integration</p>
                    <div class="socialmedia_links">
                        <a target="_blank" href="https://github.com/KaiqueSantos2004"><i class="fa fa-github"></i></a>
                        <a target="_blank" href="https://www.linkedin.com/in/kaique-santos-b25664331/"><i class="fa fa-linkedin"></i></a>
                    </div>
                </div>
            </div>

            <!-- Criador 4 -->
            <div class="creator_box">
                <div class="creator_img" id="creator_img_4"></div>
                <div class="creator_info">
                    <h2>Lucas Fontes</h2>
                    <p>API Integration</p>
                    <div class="socialmedia_links">
                        <a target="_blank" href="https://github.com/LucasGabrielFontes"><i class="fa fa-github"></i></a>
                        <a target="_blank" href="https://www.linkedin.com/in/lucas-gabriel-fontes-da-silva-02b12930a/"><i class="fa fa-linkedin"></i></a>
                    </div>
                </div>
            </div>

            <!-- Criador 5 -->
            <div class="creator_box">
                <div class="creator_img" id="creator_img_5"></div>
                <div class="creator_info">
                    <h2>Luis Reis</h2>
                    <p>Team Manager & Full-stack</p>
                    <div class="socialmedia_links">
                        <a target="_blank" href="https://github.com/LuisReis09"><i class="fa fa-github"></i></a>
                        <a target="_blank" href="https://www.linkedin.com/in/luis-reis-7b22a6330/"><i class="fa fa-linkedin"></i></a>
                    </div>
                </div>
            </div>

            <!-- Criador 6 -->
            <div class="creator_box">
                <div class="creator_img" id="creator_img_6"></div>
                <div class="creator_info">
                    <h2>Rafael de França</h2>
                    <p>Full-stack Developer</p>
                    <div class="socialmedia_links">
                        <a target="_blank" href="https://github.com/rafaelfranca1"><i class="fa fa-github"></i></a>
                        <a target="_blank" href="https://www.linkedin.com/in/rafael-franca-ofc/"><i class="fa fa-linkedin"></i></a>
                    </div>
                </div>
            </div>
        </div>

        <div id="text_box">
            <h1>Welcome to Song Guesser!</h1>
            <br>
            <p>
                We're thrilled to have you here! Song Guesser was born from our shared love for music and the special way it connects people.
                Whether it’s an unforgettable melody or a lyric that resonates deeply, music has a unique way of bringing individuals and groups closer together.
                We wanted to capture that feeling and turn it into a fun, interactive game.
            </p>
            <br>
            <p>
                Our goal with Song Guesser is simple: to challenge your musical knowledge while giving you the chance to discover new songs and test your memory with old favorites.
                Whether you're a casual listener or a die-hard fan, we believe you'll enjoy the thrill of remember songs based on lyrics, melodies, and more.
            </p>
            <br>
            <p>
                We are a team of six Computer Science students from the <span>Univerdade Federal da Paraíba (UFPB)</span>, and we created this project as part of our "Functional Programming" course.
                Song Guesser is built using the <span>Phoenix</span> framework and <span>Elixir</span>, a Brazilian functional programming language, both of which allowed us to explore powerful and innovative ways to deliver this experience to you.
            </p>
            <br>
            <p>
                As a team, we’re not just developers—we’re also avid gamers and music enthusiasts who believe in the power of collaboration and creativity.
                Many of the friendships within our group were forged through online games and shared experiences, and this project is our way of giving back to those communities.
                We hope that as you play, you feel the same joy and connection that inspired us to create Song Guesser.
            </p>
            <br>
            <p>
                Thank you for being part of our journey, and we hope you enjoy the game as much as we enjoyed making it!
            </p>
            <br>

            <p class="final_text" >Sincerely,</p>
            <div class="final_text" ><b>The Song Guesser Team</b></div>

        </div>
    </section>
    <%!-- </body> --%>
    <%!-- </html> --%>




    <div id="about_live" data-page="about_live" phx-hook="LoadSpecificJs"/>












    """
  end

  def handle_event("navigate", %{"page" => page}, socket) do
    {:noreply, push_redirect(socket, to: "/" <> page)}
  end
end
