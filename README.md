# Wabanex

To start your Phoenix server:

- Install dependencies with `mix deps.get`
- Create and migrate your database with `mix ecto.setup`
- Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Learn more

- Official website: https://www.phoenixframework.org/
- Guides: https://hexdocs.pm/phoenix/overview.html
- Docs: https://hexdocs.pm/phoenix
- Forum: https://elixirforum.com/c/phoenix-forum
- Source: https://github.com/phoenixframework/phoenix

## RUN Project

docker run --name postgres -e POSTGRES_PASSWORD=postgres -p 5432:5432 -d postgres

mix ecto.setup

Modo interativo dentro do projeto
~/ iex -S mix

Rodar server
~/ mix phx.server

Criar migrations
~/ mix ecto.gen.migration create_users_table

Download de dependencias
~/ mix dep.get

Get route app
~/ mix phx.routes
