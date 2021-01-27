defmodule Vxtel.Simulate do
    def code_map do
        %{
            "011" => %{
                "016" => 1.9,
                "017" => 1.7,
                "018" => 0.9
            },
            "016" => %{
                "011" => 2.9
            },
            "017" => %{
                "011" => 2.7
            },
            "018" => %{
                "011" => 1.9
            }
        }
    end

    def calculate(from, to, minutes) do
        codes = code_map()
        if Map.has_key?(codes, from) do
            if Map.has_key?(codes[from], to) do
                codes[from][to] * minutes
            end
        end
    end
end
