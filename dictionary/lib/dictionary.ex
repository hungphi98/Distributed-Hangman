defmodule Dictionary do

  def random do
    word_list()
    |> Enum.random()
  end

  def word_list do
    "assets/words.txt"
    |> File.read!()
    |> String.split( ~r/\n/)
  end
end
