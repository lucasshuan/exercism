defmodule KitchenCalculator do
  def get_volume(volume_pair) do
    elem(volume_pair, 1)
  end

  def to_milliliter({unit, volume}) when unit == :milliliter, do: {:milliliter, volume}
  def to_milliliter({unit, volume}) when unit == :cup, do: {:milliliter, volume * 240}
  def to_milliliter({unit, volume}) when unit == :fluid_ounce, do: {:milliliter, volume * 30}
  def to_milliliter({unit, volume}) when unit == :teaspoon, do: {:milliliter, volume * 5}
  def to_milliliter({unit, volume}) when unit == :tablespoon, do: {:milliliter, volume * 15}

  def from_milliliter(volume_pair, unit) when unit == :milliliter, do: volume_pair
  def from_milliliter({_, volume}, unit) when unit == :cup, do: {unit, volume / 240}
  def from_milliliter({_, volume}, unit) when unit == :fluid_ounce, do: {unit, volume / 30}
  def from_milliliter({_, volume}, unit) when unit == :teaspoon, do: {unit, volume / 5}
  def from_milliliter({_, volume}, unit) when unit == :tablespoon, do: {unit, volume / 15}

  def convert(volume_pair, unit) do
    from_milliliter(to_milliliter(volume_pair), unit)
  end
end
