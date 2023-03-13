defmodule AtmPseudoAppCa.Infrastructure.Adapters.Repository.Propietario.Data.PropietarioData do
  use Ecto.Schema
  import Ecto.Changeset

  ## TODO: Add schema definition
  # Types https://hexdocs.pm/ecto/Ecto.Schema.html#module-primitive-types

  @primary_key {:id, :binary_id, autogenerate: false}
  #@foreign_key_type :binary_id
  schema "propietarios" do
    field :apellidos, :string
    field :edad, :integer
    field :fecha_nac, :date
    field :nombres, :string
    field :num_iden, :string
    #has_many :vehiculos, AtmPseudoApp.Vehiculos.Vehiculo
    #has_one :licencia, AtmPseudoApp.Licencias.Licencia

    timestamps()
  end

  @doc false
  def changeset(propietario, attrs) do
    propietario
    |> cast(attrs, [:id, :num_iden, :nombres, :apellidos, :fecha_nac, :edad])
    |> validate_required([:num_iden, :nombres, :apellidos, :fecha_nac, :edad])
    |> validate_length(:num_iden, max: 10, message: "El número de identificación sólo tiene 10 dígitos")
    |> unique_constraint(:num_iden, message: "Propietario ya existe en la BD")
  end
end
