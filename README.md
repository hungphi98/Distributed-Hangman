# Elixir_beginner
Distributed Client for the Hangman game, supports up to 20000 clients. Easy to scale, thanks to decoupling designs.

### How to run
You should have Elixir on your computer. Instructions for installing here: https://elixir-lang.org/install.html

The application is divided to 3 sections. 
- Dictionary - for storing the library APIs
- The Server - for server logics
- The Client - for interactions from the client

You should first start the Server by cd to `/hangman` and run `iex --sname hangman -S mix` <br> - Setting up the server
Then connect the client to the Server to initiate a game by cd to `/text_client` and run `iex --sname client_1 -S mix` <br>

You can have any number of clients as you want, as many as 20000 concurrently. You can check the max processes by `observer.start` on `iex`

