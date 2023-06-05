(ns bird-watcher)

(def last-week
  [0 2 5 3 7 8 4])

(defn today [birds]
  (last birds))

(defn inc-bird [birds]
  (let [len (count birds)
        num (today birds)]
    (-> birds
        (assoc (- len 1) (+ num 1)))))

(defn day-without-birds? [birds]
  (contains? (set birds) 0))

(defn n-days-count [birds n]
  (reduce + (take n birds))
  )

(defn busy-days [birds]
  (count (filter (fn [x] (>= x 5)) birds)))

(defn odd-week? [birds]
  (= birds (take (count birds) (cycle [1 0]))))
