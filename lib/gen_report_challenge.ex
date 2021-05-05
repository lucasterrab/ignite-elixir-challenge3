defmodule GenReportChallenge do
  alias GenReportChallenge.Parser

  @available_workers [
    "Daniele",
    "Mayk",
    "Giuliano",
    "Cleiton",
    "Jakeliny",
    "Joseph",
    "Diego",
    "Rafael",
    "Danilo",
    "Vinicius"
  ]

  def build(filename) do
    filename
    |> Parser.parse_file()
    |> Enum.reduce(report_acc(), fn line, report -> sum_values(line,report) end)
  end

  defp sum_values([worker, hours, _day, _month, _year], %{"all_hours" => workers} = report) do
    workers = Map.put(workers, worker, workers[worker] + hours)

    report
    |> Map.put("all_hours", workers)
  end

  defp report_acc do
    workers = Enum.into(@available_workers, %{}, fn x -> {x, 0} end)
    # months = Enum.into(1..12, %{}, fn x -> {Integer.to_string(x), 0} end)
    # years = Enum.into(2016..2020, %{}, fn x -> {Integer.to_string(x), 0} end)

    build_report(workers)
  end

  defp build_report(workers) do
    %{"all_hours" => workers}
  end
end
