defmodule InfinibirdEngine.DataProvider do
  def get_chart_mock_data(),
    do: %{
      pie_chart_data: [
        ["Coconut", 50],
        ["Blueberry", 44],
        ["Strawberry", 23],
        ["Banana", 22],
        ["Apple", 21],
        ["Grape", 13]
      ],
      line_chart_data: %{
        "2013-02-10 00:00:00 -0800": 11,
        "2013-02-11 00:00:00 -0800": 6,
        "2013-02-12 00:00:00 -0800": 3,
        "2013-02-13 00:00:00 -0800": 2,
        "2013-02-14 00:00:00 -0800": 5,
        "2013-02-15 00:00:00 -0800": 3,
        "2013-02-16 00:00:00 -0800": 8,
        "2013-02-17 00:00:00 -0800": 6,
        "2013-02-18 00:00:00 -0800": 6,
        "2013-02-19 00:00:00 -0800": 12,
        "2013-02-20 00:00:00 -0800": 5,
        "2013-02-21 00:00:00 -0800": 5,
        "2013-02-22 00:00:00 -0800": 3,
        "2013-02-23 00:00:00 -0800": 1,
        "2013-02-24 00:00:00 -0800": 10,
        "2013-02-25 00:00:00 -0800": 1,
        "2013-02-26 00:00:00 -0800": 3,
        "2013-02-27 00:00:00 -0800": 2,
        "2013-02-28 00:00:00 -0800": 3,
        "2013-03-01 00:00:00 -0800": 2,
        "2013-03-02 00:00:00 -0800": 8
      },
      area_chart_data: %{
        "2013-07-27 07:00:00 UTC": 2,
        "2013-07-27 07:01:00 UTC": 5,
        "2013-07-27 07:02:00 UTC": 3,
        "2013-07-27 07:03:00 UTC": 3,
        "2013-07-27 07:04:00 UTC": 2,
        "2013-07-27 07:05:00 UTC": 5,
        "2013-07-27 07:06:00 UTC": 1,
        "2013-07-27 07:07:00 UTC": 3,
        "2013-07-27 07:08:00 UTC": 4,
        "2013-07-27 07:09:00 UTC": 3,
        "2013-07-27 07:10:00 UTC": 2
      },
      geo_chart_data: [
        ["United States", 101],
        ["Russia", 63],
        ["Germany", 65],
        ["China", 50],
        ["France", 37],
        ["Italy", 35],
        ["Australia", 41]
      ],
      multilines_chart_data: [
        %{
          name: "Workout",
          data: %{
            "2013-02-10 00:00:00 -0800": 3,
            "2013-02-17 00:00:00 -0800": 3,
            "2013-02-24 00:00:00 -0800": 3,
            "2013-03-03 00:00:00 -0800": 1,
            "2013-03-10 00:00:00 -0800": 4,
            "2013-03-17 00:00:00 -0700": 3,
            "2013-03-24 00:00:00 -0700": 2,
            "2013-03-31 00:00:00 -0700": 3
          }
        },
        %{
          name: "Eat breakfast",
          data: %{
            "2013-02-10 00:00:00 -0800": 3,
            "2013-02-17 00:00:00 -0800": 2,
            "2013-02-24 00:00:00 -0800": 1,
            "2013-03-03 00:00:00 -0800": 0,
            "2013-03-10 00:00:00 -0800": 2,
            "2013-03-17 00:00:00 -0700": 2,
            "2013-03-24 00:00:00 -0700": 3,
            "2013-03-31 00:00:00 -0700": 0
          }
        }
      ],
      column_chart_data: [[0, 32], [1, 46], [2, 28], [3, 21], [4, 20], [5, 13], [6, 27]]
    }

  def get_summary_mock_data() do
    data = %{
      amount_of_km: 12583,
      number_of_trips: 218,
      average_speed: 67,
      safety_index: "89/100"
    }

    Bson.encode(data)
  end

  def get_trip_mock_data() do
    data = %{
      trip1: %{
        name: "Trasa 1",
        points: [
          [50.05552, 19.92819],
          [50.05639, 19.9292],
          [50.05745, 19.93042],
          [50.05831, 19.93217],
          [50.0589, 19.93327],
          [50.05983, 19.93273],
          [50.06045, 19.93253],
          [50.06045, 19.93253],
          [50.06199, 19.93177],
          [50.06263, 19.93203],
          [50.0639, 19.93352],
          [50.06524, 19.93505],
          [50.06615, 19.93623],
          [50.06631, 19.93905],
          [50.06762, 19.93869],
          [50.06887, 19.93829]
        ]
      },
      trip2: %{
        name: "Trasa 2",
        points: [
          [50.0518, 19.9416],
          [50.0548, 19.9443],
          [50.0567, 19.9455],
          [50.0579, 19.9439],
          [50.0596, 19.9421],
          [50.06067, 19.94366],
          [50.06149, 19.94431],
          [50.06337, 19.94503],
          [50.06452, 19.94493],
          [50.06624, 19.9451],
          [50.06728, 19.94513],
          [50.06727, 19.94284],
          [50.06741, 19.94263],
          [50.06578, 19.94157],
          [50.06629, 19.93942],
          [50.06617, 19.93632]
        ]
      }
    }

    Bson.encode(data)
  end
end
