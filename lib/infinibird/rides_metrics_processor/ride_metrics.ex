defmodule Infinibird.RideMetrics do
  defstruct travel_time_minutes: nil,
            max_speed_kmh: nil,
            avg_speed_kmh: nil,
            accelerations: nil,
            decelerations: nil,
            stoppings: nil,
            right_turns: nil,
            left_turns: nil,
            distance_m: nil,
            distance_m_speed_below_25_kmh: nil,
            distance_m_speed_25_50_kmh: nil,
            distance_m_speed_50_75_kmh: nil,
            distance_m_speed_75_100_kmh: nil,
            distance_m_speed_100_125_kmh: nil,
            distance_m_speed_over_125_kmh: nil,
            date: nil,
            time: nil,
            day: nil,
            month: nil,
            time_of_day: nil,
            season: nil
end
