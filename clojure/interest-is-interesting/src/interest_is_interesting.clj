(ns interest-is-interesting)

(defn interest-rate
  "Calculates the interest rate based on the specified balance"
  [balance]
  (cond (neg? balance) -3.213
        (< balance 1000M) 0.5
        (< balance 5000M) 1.621
        :else 2.475)
  )

(defn annual-balance-update
  "Calculates the annual balance update, taking into account the interest rate"
  [balance]
  (+ balance (* (abs balance) (* 0.01M (bigdec (interest-rate balance)))))
  )

(defn amount-to-donate
  "Calculates how much money to donate to charities based on the balance and the tax-free percentage that the government allows"
  [balance tax-free-percentage]
  (cond (pos? balance) (int (* balance 0.02 tax-free-percentage))
        :else 0))