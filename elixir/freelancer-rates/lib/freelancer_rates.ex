defmodule FreelancerRates do
  def daily_rate(hourly_rate) do
    hourly_rate * 8.0
  end

  def apply_discount(before_discount, discount) do
    factor = discount * 0.01
    before_discount * (1 - factor)
  end

  def monthly_rate(hourly_rate, discount) do
    monthly_value = daily_rate(hourly_rate) * 22
    trunc(Float.ceil(apply_discount(monthly_value, discount)))
  end

  def days_in_budget(budget, hourly_rate, discount) do
    discounted_value = apply_discount(daily_rate(hourly_rate), discount)
    Float.floor(budget / discounted_value, 1)
  end
end
