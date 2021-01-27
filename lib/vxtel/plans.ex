defmodule Vxtel.Plans do
    def list_plans do
        [
            %{
              key: "FaleMais 30",
              value: 30
            },
            %{
              key: "FaleMais 60",
              value: 60
            },
            %{
              key: "FaleMais 120",
              value: 120
            }
        ]
    end

    def calculate(minutes, plan_key) do
      result = String.to_integer(minutes) - Enum.find(list_plans(), fn map -> map.key == plan_key end).value

      case result do
        result when result <= 0 -> 0
        _ -> result
      end
    end
end
