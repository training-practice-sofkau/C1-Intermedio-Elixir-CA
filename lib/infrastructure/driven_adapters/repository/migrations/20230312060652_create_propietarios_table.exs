defmodule AtmPseudoAppCa.Infrastructure.Adapters.Repository.Repo.Migrations.CreatePropietariosTable do
  use Ecto.Migration

  def change do
    create table(:propietarios, primary_key: false) do
      add :id, :binary_id, primary_key: true
      add :num_iden, :string
      add :nombres, :string
      add :apellidos, :string
      add :fecha_nac, :date
      add :edad, :integer

      timestamps()
    end

    create unique_index(:propietarios, [:num_iden])
  end
end
