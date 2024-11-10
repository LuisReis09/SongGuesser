# lib/songapp_web/live/game_live.ex
defmodule SongappWeb.GameLive do
  use SongappWeb, :live_view

  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  def render(assigns) do
    ~H"""
    <%!-- <h1>Game Page</h1> --%>
    <%!-- <nav> --%>
    <%!-- <a href="#" phx-click="navigate" phx-value-page="home">Home</a> --%>
    <%!-- <a href="#" phx-click="navigate" phx-value-page="about">About</a> --%>
    <%!-- <a href="#" phx-click="navigate" phx-value-page="how">How to Play</a> --%>
    <%!-- </nav> --%>
    <!-- CSS específico (opcional) -->
    <link rel="stylesheet" href={@socket.endpoint.static_path("/assets/game_live.css")}>







    <%!-- <!DOCTYPE html> --%>
    <%!-- <html lang="en">
    <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="/songapp/assets/css/app.css">
    <link rel="stylesheet" href="/songapp/assets/css/game_live.css">

    <link rel="shortcut icon" href="/SongGuesser/assets/logo.png" type="image/x-icon">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">


    <title>Song Guesser</title>
    </head> --%>
    <%!-- <body> --%>
    <div class="content">
    <!-- inicio da logo -->
    <div class="logo">
    <!-- img logo -->
    <img src="/images/logo.png" alt="logotipo do Song Guesser">
    </div>
    <!-- inicio da logo -->


    <!-- início classe da sala -->
    <div id="room">

    <!-- inicio de players -->
    <div id="players_box">

    <!-- link pra outra sala -->
    <div id="room_link">
    <p><span id="room_code_exib"></span>  <i class="fa fa-long-arrow-right" style="color: #fff;"></i>  <a id="link_button" ><i class="fa-sharp-duotone fa-solid fa-share-nodes"></i></a></p>
    </div>

    <h1>Players (<span id="players_min"></span>/<span id="players_max"></span>)</h1>

    <div id="players"></div>
    </div>
    <!-- fim de players -->

    <!-- inicio de round -->
    <div id="round_box" >
    <div id="word_box">
    <h1 class="round_word">WORD</h1>
    </div>

    <div id="waiting_for">
    <p>Waiting for the host to start</p>
    </div>

    <div id="while_playing" style="display: none">
    <div id="content">
    <p>Enter a song with the word <span class="round_word">WORD</span></p>

    <div id="inputs">
    <div class="input">
    <label for="artist_name">Artist name:</label>
    <input class="enter_input" type="text" id="artist_name" placeholder="Enter the artist name" maxlength="50"/>
    </div>

    <div class="input">
    <label for="track_name">Song title:</label>
    <input class="enter_input" type="text" id="track_name" placeholder="Enter the song name" maxlength="100"/>
    </div>

    </div>

    <button class="button" id="search_song">Search</button>
    </div>

    <div id="timer_box">
    <div id="timer_clock">
    <i class="fa fa-clock-o"></i>
    </div>
    <div id="timer_counter">
    <div id="timer_run"></div>
    </div>
    </div>

    </div>

    <div id="between_rounds" style="display: none">
    <div>
    <p>For the word <span class="round_word">palavra</span> you are...</p>
    <h1 id="isRight">WROOOONG!</h1>
    <br>
    <p>Listen to a preview of this song on the player below</p>
    </div>

    <div id="music_player_box">
    <div id="song_information">
    <div id="album_image"></div>

    <div id="song_description">
    <div>
    <h5 id="track_info"></h5>
    <h6 id="artist_info"></h6>
    </div>


    <i class="fa fa-check-circle" id="symbol_isRight"></i>
    </div>
    </div>

    <div id="music_player">
    <audio id="audio" controls>
    <!-- Aqui contera a musica vinda do backend -->

      <source src="#" type="audio/ogg">
      </audio>
      </div>
      </div>

      </div>

      <div id="no_music_player_box" style="display: none;">
        <p>You entered no music</p>
        <p>Waiting for the host to call the next round...</p>
      </div>

    <div id="ranking_box" style="display: none;">
    <div id="playersCards_box">
    <div class="playerCard" id="second_place">
    <div class="playerCard_img" id="second_place_img"></div>
    <div class="playerCard_name" id="second_place_name">Herick</div>
    <div class="playerCard_points" id="second_place_points">0 points</div>
    </div>

    <div class="playerCard" id="first_place">
    <div class="playerCard_img" id="first_place_img"></div>
    <div class="playerCard_name" id="first_place_name">Luis</div>
    <div class="playerCard_points" id="first_place_points">10 points</div>
    </div>

    <div class="playerCard" id="third_place">
    <div class="playerCard_img" id="third_place_img"></div>
    <div class="playerCard_name" id="third_place_name">Alguem</div>
    <div class="playerCard_points" id="third_place_points">-10 points</div>
    </div>
    </div>

    <div>
    <p><span id="winner_name">Player</span> won with <span id="winner_points">n</span> points!</p>
    <h2 id="congrat_msg">Congratulations!</h2>
    </div>
    </div>

    </div>


    <!-- inicio de songsInfo -->
    <div id="songs_box">

    <%!-- <hr></hr> --%>
    <div id="waiting_for_song">
    <h1>Start the Game!</h1>
    <p>Wait for the host to start the game</p>
    <div class="btns">
    <button class="button btn_start">Start</button>
    <a href="#" phx-click="navigate" phx-value-page="home"><button class="button btn_exit">Exit</button></a>

    </div>
    </div>

    <div id="didnt_found" style="display: none;">
    <h1>No music found</h1>
    <a href="#" phx-click="navigate" phx-value-page="home"><button class="button btn_exit">Exit</button></a>
    </div>

    <div id="while_playing_song"  style="display: none;">
    <h1>Which song?</h1>

    <div class="songs"></div>

    <div class="btns">
    <a href="#" phx-click="navigate" phx-value-page="home"><button class="button btn_exit">Exit</button></a>
    </div>

    </div>

    <div id="between_rounds_song" style="display: none;">
    <h1>Answers: </h1>

    <div class="songs results_songs_box">

    <div class="song_results correct_song">
    <div class="cover"></div>
    <div class="info">
    <h6>Fulano e beltrano</h6>
    <h2>I Think They Call This Love</h2>
    <p>Sei lá o nome</p>
    </div>
    </div>
    <div class="song_results wrong_song">
    <div class="cover"></div>
    <div class="info">
    <h6>Fulano e beltrano</h6>
    <h2>Hair</h2>
    <p>Suriel Hess</p>
    </div>
    </div>
    <div class="song_results correct_song">
    <div class="cover"></div>
    <div class="info">
    <h6>Fulano e beltrano</h6>
    <h2>Believer</h2>
    <p>Imagine Dragons</p>
    </div>
    </div>
    <div class="song_results correct_song">
    <div class="cover"></div>
    <div class="info">
    <h6>Fulano e beltrano</h6>
    <h2>Roses</h2>
    <p>Shawn Mendes</p>
    </div>
    </div>



    </div>

    <div class="btns">
    <button class="button btn_next_round">Next round</button>
    <a href="#" phx-click="navigate" phx-value-page="home"><button class="button btn_exit">Exit</button></a>
    </div>
    </div>

    <div id="ranking_box_song" style="display: none;">
    <h1>Check the Results</h1>

    <div class="btns">
    <button class="button" id="btn_restart" style="display: none">Restart</button>
    <a href="#" phx-click="navigate" phx-value-page="home"><button class="button btn_exit">Exit</button></a>
    </div>
    </div>


        <div id="chat_box">
          <div id="chat_area">
            <%!-- <p><span>herick: </span>Oi, genteeeeeeeeeeeeeeeeeeeeeeeeeeeeeee!</p>
            <p><span>herick: </span>Oi, gente!</p>
            <p><span>herick: </span>Oi, gente!</p> --%>
          </div>
          <div id="message_box">
            <input class="enter_input" type="text" id="msg_text" placeholder="Enter a message">
            <button id="send_msg" ><i class="fa-solid fa-paper-plane"></i></button>
          </div>
        </div>
      </div>
    </div>
    <!-- fim de songsInfo -->


    <!-- final classe da sala -->
    </div>
    <!-- </body> -->
    <!-- </html> -->

    <div id="game_live" data-page="game_live" phx-hook="LoadSpecificJs"/>







    <%!-- </div> --%>
    """
  end

  def handle_event("navigate", %{"page" => page}, socket) do
    {:noreply, push_redirect(socket, to: "/" <> page)}
  end
end

# <div id="chat_box">
# <div id="text_area">
#   <p><span>herick: </span>Oi, gente!</p>
# </div>
# <div id="message_box">
#   <div id="enter_text"></div>
#   <i class="fa fa-paper-plane"></i>
# </div>
# </div>
