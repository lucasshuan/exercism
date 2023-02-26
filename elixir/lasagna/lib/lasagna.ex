defmodule Lasagna do
  def expected_minutes_in_oven() do
    40
  end

  def remaining_minutes_in_oven(minutes) do
    expected_minutes_in_oven() - minutes
  end

  def preparation_time_in_minutes(layers) do
    layers * 2
  end

  # Please define the 'total_time_in_minutes/2' function
  def total_time_in_minutes(layers, minutes) do
    remaining_minutes_in_oven(minutes) + preparation_time_in_minutes(layers)
  end

  # Please define the 'alarm/0' function
  def alarm() do

  end

end
