defmodule GuessingGame do
  def compare(secret_number, guess \\ nil)
  def compare(_s, g) when not is_integer(g), do: "Make a guess"
  def compare(s, g) when s == g, do: "Correct"
  def compare(s, g) when abs(s - g) == 1, do: "So close"
  def compare(s, g) when s < g, do: "Too high"
  def compare(s, g) when s > g, do: "Too low"
end
