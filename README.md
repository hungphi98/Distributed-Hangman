# Elixir_beginner
My attempt to learn this beautiful language

### How to run
You should have Elixir on your computer. Instructions for installing here: https://elixir-lang.org/install.html

The application is divided to 3 sections. 
- Dictionary - for storing the library APIs
- The Server - for server logics
- The Client - for interactions from the client

You should first start the Server by cd to `/hangman` and run `iex --sname hangman -S mix` <br>
Then connect the client to the Server to initiate a game by cd to `/text_client` and run `iex --sname client_1 -S mix` <br>

You can have any number of clients as you want, as many as 2 millions concurrently.

