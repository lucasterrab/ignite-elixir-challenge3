# GenReportChallenge

In this challenge, you must generate a report from a `.csv` file.

Ten people worked for a company X for five years and the history with all the data of each one of these people (name, hours worked, day, month and year) was transferred to a CSV file in the following order: name, hours of work in day (which will vary from 1 to 8 hours), day (which will vary from 1 to 30 even for the month of February and without leap years) referring to the hours of work, month and year (which goes from 2016 to 2020) . In short: **name**, **number of hours**, **day**, **month** and **year**.
The report generated from the file must be in the following format:

```elixir
%{
  all_hours: %{
        danilo: 500,
        rafael: 854,
        ...
    },
  hours_per_month: %{
        danilo: %{
            janeiro: 40,
            fevereiro: 64,
            ...
        },
        rafael: %{
            janeiro: 52,
            fevereiro: 37,
            ...
        }
    },
  hours_per_year: %{
        danilo: %{
            2016: 276,
            2017: 412,
            ...
        },
        rafael: %{
            2016: 376,
            2017: 348,
            ...
        }
    }
}
```
