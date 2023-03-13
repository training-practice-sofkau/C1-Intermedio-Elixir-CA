import Config

config :atm_pseudo_app_ca, timezone: "America/Bogota"

config :atm_pseudo_app_ca,
       http_port: 8083,
       enable_server: true,
       secret_name: "",
       region: "",
       version: "0.0.1",
       in_test: false,
       custom_metrics_prefix_name: "atm_pseudo_app_ca_local"

config :logger,
       level: :debug

#Se configura para que Ecto se halle
config :atm_pseudo_app_ca, ecto_repos: [AtmPseudoAppCa.Infrastructure.Adapters.Repository.Repo]

#Se configura la base de datos a la que va conectada el repo
config :atm_pseudo_app_ca, AtmPseudoAppCa.Infrastructure.Adapters.Repository.Repo,
       database: "atm_app_ca",
       username: "postgres",
       password: "postgres",
       hostname: "localhost",
       port: 5432,
       show_sensitive_data_on_connection_error: true,
       pool_size: 10


config :atm_pseudo_app_ca,
      propietario_behaviour: AtmPseudoAppCa.Infrastructure.Adapters.Repository.Propietario.PropietarioDataRepository,
      generate_uuid_behavior: AtmPseudoAppCa.Infrastructure.DrivenAdapters.Repository.Generic.UuidData
