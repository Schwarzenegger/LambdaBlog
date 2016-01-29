ExUnit.start

Mix.Task.run "ecto.create", ~w(-r LambdaBlog.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r LambdaBlog.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(LambdaBlog.Repo)

