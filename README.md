# Customer

To start your Phoenix server:

  * Run `mix setup` to install and setup dependencies
  * Start Phoenix endpoint with `mix phx.server` or inside IEx with `iex -S mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Learn more

  * Official website: https://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Forum: https://elixirforum.com/c/phoenix-forum
  * Source: https://github.com/phoenixframework/phoenix

Steps:
1. mix phx.new customer
2. check config/dev.exs for correct database settings
  - username
  - password
3. mix ecto.create
4. mix phx.gen.schema [DB Name] [table] [column:type]
  - mix phx.gen.schema Customer customers first_name:string last_name:string email:string age:integer
5. mix ecto.migrate
6. add validations to changeset in customer.ex
7. use terminal to test
  - Repo.insert(changeset)
  - Repo.all(Customer)
8. import Ecto.Query
9. Repo.all(from c in Customer, select: c.email)
  - john = Repo.one(from c in Customer, where: c.email == "jdoe@email.com")
10. Repo.update(changeset) 