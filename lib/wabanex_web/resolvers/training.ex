defmodule WabanexWeb.Resolvers.Training do
  # def get(%{id: user_id}, _context), do: Wabanex.Users.Get.call(user_id)
  def create(%{input: params}, _context), do: Wabanex.Trainigns.Create.call(params)
end
