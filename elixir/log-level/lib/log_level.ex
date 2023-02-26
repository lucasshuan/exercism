defmodule LogLevel do
  def to_label(level, legacy?) do
    default = fn ->
      cond do
        level == 1 -> :debug
        level == 2 -> :info
        level == 3 -> :warning
        level == 4 -> :error
        true -> :unknown
      end
    end
    cond do
      not legacy? ->
        cond do
          level == 0 -> :trace
          level == 5 -> :fatal
          true -> default.()
        end
      true -> default.()
    end
  end

  def alert_recipient(level, legacy?) do
    label = to_label(level, legacy?)
    cond do
      label == :error or label == :fatal -> :ops
      label == :unknown ->
        cond do
          legacy? -> :dev1
          true -> :dev2
        end
      true -> false
    end
  end
end
