defmodule Wabanex.Users.List do
  alias Wabanex.{Repo, User}

  def call() do
    case Repo.all(User) do
      nil -> {:error, "Empty users"}
      users -> {:ok, users}
    end
  end

  # defp load_trainigns(users) do
  #   |> Repo.preload(users, trainings: [:exercises])
  # end

end
