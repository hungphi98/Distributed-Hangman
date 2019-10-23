defmodule TextClient.Player do

  alias TextClient.{Mover, State, Summary, Prompter}

  # won, lost, good guessed, bad guessed, already used, initalizing
  def play(%State{tally: %{game_state: :won}}) do
    exit_with_msg("You WON")
  end

  def play(%State{tally: %{game_state: :lost}}) do
    exit_with_msg("You LOST")
  end

  def play(game = %State{tally: %{game_state: :good_guess}}) do
    continue_with_msg(game, "You score a good guess")
  end

  def play(game = %State{tally: %{game_state: :bad_guess}}) do
    continue_with_msg(game, "You score a bad guess")
  end

  def play(game = %State{tally: %{game_state: :already_used}}) do
    continue_with_msg(game, "You already used this word")
  end

  def play(game) do
    continue(game)
  end

  def continue_with_msg(game, msg) do
    IO.puts(msg)
    continue(game)
  end

  def continue(game) do
    game
    |> Summary.display()
    |> Prompter.accept_move()
    |> Mover.make_move()
    |> play()
  end

  defp exit_with_msg(msg) do
    IO.puts(msg)
    exit(:normal)
  end
end
