defmodule GenReportChallengeTest do
  use ExUnit.Case

  describe "build/1" do
    test "builds the report" do
      filename = "report_complete.csv"

      response = GenReportChallenge.build(filename)

      expected_response = %GenReportChallenge.Report{
        all_hours: %{
          "Cleiton" => 13796,
          "Daniele" => 13257,
          "Danilo" => 13577,
          "Diego" => 13012,
          "Giuliano" => 13668,
          "Jakeliny" => 13901,
          "Joseph" => 13171,
          "Mayk" => 13522,
          "Rafael" => 13590,
          "Vinicius" => 13404
        },
        hours_per_month: %{
          "Cleiton" => %{
            "Abril" => 1161,
            "Agosto" => 1149,
            "Dezembro" => 1100,
            "Fevereiro" => 1168,
            "Janeiro" => 1271,
            "Julho" => 1236,
            "Junho" => 1122,
            "Maio" => 998,
            "Março" => 1091,
            "Novembro" => 1266,
            "Outubro" => 1073,
            "Setembro" => 1161
          },
          "Daniele" => %{
            "Abril" => 1131,
            "Agosto" => 1018,
            "Dezembro" => 1019,
            "Fevereiro" => 1003,
            "Janeiro" => 1130,
            "Julho" => 1135,
            "Junho" => 1092,
            "Maio" => 1170,
            "Março" => 1177,
            "Novembro" => 1131,
            "Outubro" => 1046,
            "Setembro" => 1205
          },
          "Danilo" => %{
            "Abril" => 1232,
            "Agosto" => 1200,
            "Dezembro" => 1149,
            "Fevereiro" => 1150,
            "Janeiro" => 1121,
            "Julho" => 1114,
            "Junho" => 966,
            "Maio" => 1075,
            "Março" => 1096,
            "Novembro" => 1122,
            "Outubro" => 1237,
            "Setembro" => 1115
          },
          "Diego" => %{
            "Abril" => 1112,
            "Agosto" => 1129,
            "Dezembro" => 1177,
            "Fevereiro" => 1144,
            "Janeiro" => 1118,
            "Julho" => 1099,
            "Junho" => 1073,
            "Maio" => 1082,
            "Março" => 1029,
            "Novembro" => 995,
            "Outubro" => 928,
            "Setembro" => 1126
          },
          "Giuliano" => %{
            "Abril" => 1152,
            "Agosto" => 1126,
            "Dezembro" => 1100,
            "Fevereiro" => 1170,
            "Janeiro" => 1107,
            "Julho" => 1169,
            "Junho" => 1197,
            "Maio" => 1182,
            "Março" => 1097,
            "Novembro" => 1105,
            "Outubro" => 1123,
            "Setembro" => 1140
          },
          "Jakeliny" => %{
            "Abril" => 1172,
            "Agosto" => 1098,
            "Dezembro" => 1122,
            "Fevereiro" => 1119,
            "Janeiro" => 1118,
            "Julho" => 1237,
            "Junho" => 1182,
            "Maio" => 1129,
            "Março" => 1178,
            "Novembro" => 1085,
            "Outubro" => 1197,
            "Setembro" => 1264
          },
          "Joseph" => %{
            "Abril" => 1047,
            "Agosto" => 1167,
            "Dezembro" => 1122,
            "Fevereiro" => 1202,
            "Janeiro" => 1084,
            "Julho" => 1153,
            "Junho" => 1105,
            "Maio" => 1082,
            "Março" => 1035,
            "Novembro" => 1005,
            "Outubro" => 1058,
            "Setembro" => 1111
          },
          "Mayk" => %{
            "Abril" => 1016,
            "Agosto" => 1079,
            "Dezembro" => 1155,
            "Fevereiro" => 1085,
            "Janeiro" => 1100,
            "Julho" => 1093,
            "Junho" => 1190,
            "Maio" => 1173,
            "Março" => 1166,
            "Novembro" => 1257,
            "Outubro" => 1094,
            "Setembro" => 1114
          },
          "Rafael" => %{
            "Abril" => 1171,
            "Agosto" => 1199,
            "Dezembro" => 965,
            "Fevereiro" => 1042,
            "Janeiro" => 1125,
            "Julho" => 1090,
            "Junho" => 1218,
            "Maio" => 1141,
            "Março" => 1220,
            "Novembro" => 1163,
            "Outubro" => 1161,
            "Setembro" => 1095
          },
          "Vinicius" => %{
            "Abril" => 1149,
            "Agosto" => 1055,
            "Dezembro" => 1186,
            "Fevereiro" => 1102,
            "Janeiro" => 1036,
            "Julho" => 971,
            "Junho" => 1213,
            "Maio" => 1109,
            "Março" => 1191,
            "Novembro" => 1169,
            "Outubro" => 1113,
            "Setembro" => 1110
          }
        },
        hours_per_year: %{
          "Cleiton" => %{2016 => 2699, 2017 => 2684, 2018 => 2805, 2019 => 2714, 2020 => 2894},
          "Daniele" => %{2016 => 2573, 2017 => 2862, 2018 => 2626, 2019 => 2562, 2020 => 2634},
          "Danilo" => %{2016 => 2746, 2017 => 2534, 2018 => 2972, 2019 => 2660, 2020 => 2665},
          "Diego" => %{2016 => 2574, 2017 => 2647, 2018 => 2792, 2019 => 2486, 2020 => 2513},
          "Giuliano" => %{2016 => 2784, 2017 => 2693, 2018 => 2693, 2019 => 2850, 2020 => 2648},
          "Jakeliny" => %{2016 => 2869, 2017 => 2617, 2018 => 2765, 2019 => 2709, 2020 => 2941},
          "Joseph" => %{2016 => 2603, 2017 => 2614, 2018 => 2587, 2019 => 2672, 2020 => 2695},
          "Mayk" => %{2016 => 2644, 2017 => 2735, 2018 => 2770, 2019 => 2774, 2020 => 2599},
          "Rafael" => %{2016 => 2684, 2017 => 2563, 2018 => 2628, 2019 => 2786, 2020 => 2929},
          "Vinicius" => %{2016 => 2530, 2017 => 2720, 2018 => 2654, 2019 => 2640, 2020 => 2860}
        }
      }

      assert response == expected_response
    end
  end

  describe "build_from_many/1" do
    test "when a list of files is provided, builds a report" do
      filenames = ["report_1.csv", "report_2.csv", "report_3.csv"]

      response = GenReportChallenge.build_from_many(filenames)

      expected_response = %GenReportChallenge.Report{
        all_hours: %{
          "Cleiton" => 13791,
          "Daniele" => 13251,
          "Danilo" => 13565,
          "Diego" => 13003,
          "Giuliano" => 13660,
          "Jakeliny" => 13893,
          "Joseph" => 13157,
          "Mayk" => 13515,
          "Rafael" => 13579,
          "Vinicius" => 13397
        },
        hours_per_month: %{
          "Cleiton" => %{
            "Abril" => 1158,
            "Agosto" => 1147,
            "Dezembro" => 1100,
            "Fevereiro" => 1168,
            "Janeiro" => 1271,
            "Julho" => 1236,
            "Junho" => 1122,
            "Maio" => 998,
            "Março" => 1091,
            "Novembro" => 1266,
            "Outubro" => 1073,
            "Setembro" => 1161
          },
          "Daniele" => %{
            "Abril" => 1131,
            "Agosto" => 1018,
            "Dezembro" => 1019,
            "Fevereiro" => 1003,
            "Janeiro" => 1130,
            "Julho" => 1135,
            "Junho" => 1090,
            "Maio" => 1170,
            "Março" => 1173,
            "Novembro" => 1131,
            "Outubro" => 1046,
            "Setembro" => 1205
          },
          "Danilo" => %{
            "Abril" => 1232,
            "Agosto" => 1194,
            "Dezembro" => 1149,
            "Fevereiro" => 1144,
            "Janeiro" => 1121,
            "Julho" => 1114,
            "Junho" => 966,
            "Maio" => 1075,
            "Março" => 1096,
            "Novembro" => 1122,
            "Outubro" => 1237,
            "Setembro" => 1115
          },
          "Diego" => %{
            "Abril" => 1112,
            "Agosto" => 1129,
            "Dezembro" => 1177,
            "Fevereiro" => 1144,
            "Janeiro" => 1118,
            "Julho" => 1094,
            "Junho" => 1073,
            "Maio" => 1082,
            "Março" => 1029,
            "Novembro" => 995,
            "Outubro" => 924,
            "Setembro" => 1126
          },
          "Giuliano" => %{
            "Abril" => 1152,
            "Agosto" => 1126,
            "Dezembro" => 1100,
            "Fevereiro" => 1168,
            "Janeiro" => 1107,
            "Julho" => 1169,
            "Junho" => 1197,
            "Maio" => 1182,
            "Março" => 1097,
            "Novembro" => 1105,
            "Outubro" => 1117,
            "Setembro" => 1140
          },
          "Jakeliny" => %{
            "Abril" => 1172,
            "Agosto" => 1095,
            "Dezembro" => 1117,
            "Fevereiro" => 1119,
            "Janeiro" => 1118,
            "Julho" => 1237,
            "Junho" => 1182,
            "Maio" => 1129,
            "Março" => 1178,
            "Novembro" => 1085,
            "Outubro" => 1197,
            "Setembro" => 1264
          },
          "Joseph" => %{
            "Abril" => 1040,
            "Agosto" => 1167,
            "Dezembro" => 1122,
            "Fevereiro" => 1202,
            "Janeiro" => 1084,
            "Julho" => 1153,
            "Junho" => 1105,
            "Maio" => 1082,
            "Março" => 1028,
            "Novembro" => 1005,
            "Outubro" => 1058,
            "Setembro" => 1111
          },
          "Mayk" => %{
            "Abril" => 1014,
            "Agosto" => 1079,
            "Dezembro" => 1155,
            "Fevereiro" => 1085,
            "Janeiro" => 1100,
            "Julho" => 1093,
            "Junho" => 1190,
            "Maio" => 1168,
            "Março" => 1166,
            "Novembro" => 1257,
            "Outubro" => 1094,
            "Setembro" => 1114
          },
          "Rafael" => %{
            "Abril" => 1171,
            "Agosto" => 1199,
            "Dezembro" => 965,
            "Fevereiro" => 1042,
            "Janeiro" => 1125,
            "Julho" => 1090,
            "Junho" => 1211,
            "Maio" => 1141,
            "Março" => 1220,
            "Novembro" => 1159,
            "Outubro" => 1161,
            "Setembro" => 1095
          },
          "Vinicius" => %{
            "Abril" => 1149,
            "Agosto" => 1055,
            "Dezembro" => 1186,
            "Fevereiro" => 1102,
            "Janeiro" => 1036,
            "Julho" => 971,
            "Junho" => 1212,
            "Maio" => 1109,
            "Março" => 1191,
            "Novembro" => 1169,
            "Outubro" => 1113,
            "Setembro" => 1104
          }
        },
        hours_per_year: %{
          "Cleiton" => %{2016 => 2697, 2017 => 2684, 2018 => 2805, 2019 => 2711, 2020 => 2894},
          "Daniele" => %{2016 => 2573, 2017 => 2862, 2018 => 2626, 2019 => 2562, 2020 => 2628},
          "Danilo" => %{2016 => 2740, 2017 => 2534, 2018 => 2966, 2019 => 2660, 2020 => 2665},
          "Diego" => %{2016 => 2574, 2017 => 2647, 2018 => 2792, 2019 => 2481, 2020 => 2509},
          "Giuliano" => %{2016 => 2784, 2017 => 2687, 2018 => 2693, 2019 => 2848, 2020 => 2648},
          "Jakeliny" => %{2016 => 2869, 2017 => 2612, 2018 => 2765, 2019 => 2706, 2020 => 2941},
          "Joseph" => %{2016 => 2603, 2017 => 2614, 2018 => 2587, 2019 => 2665, 2020 => 2688},
          "Mayk" => %{2016 => 2637, 2017 => 2735, 2018 => 2770, 2019 => 2774, 2020 => 2599},
          "Rafael" => %{2016 => 2677, 2017 => 2559, 2018 => 2628, 2019 => 2786, 2020 => 2929},
          "Vinicius" => %{2016 => 2529, 2017 => 2720, 2018 => 2648, 2019 => 2640, 2020 => 2860}
        }
      }

      assert response == expected_response
    end

    test "when a list of files is not provided, returns an error" do
      response = GenReportChallenge.build_from_many("banana")

      expected_response =
        {:error, "Please, provide a list of strings with the name of the files!"}

      assert response == expected_response
    end
  end
end
