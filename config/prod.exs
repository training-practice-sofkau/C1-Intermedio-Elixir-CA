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

config :atm_pseudo_app_ca, AtmPseudoAppCa.Infrastructure.Adapters.Repository.Repo,
database: "",
username: "",
password: "",
hostname: "",
pool_size: 10
