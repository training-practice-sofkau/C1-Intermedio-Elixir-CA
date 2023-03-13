defmodule AtmPseudoAppCa.Infrastructure.Adapters.Repository.Repo do
  use Ecto.Repo,
  otp_app: :atm_pseudo_app_ca,
  adapter: Ecto.Adapters.Postgres
end
