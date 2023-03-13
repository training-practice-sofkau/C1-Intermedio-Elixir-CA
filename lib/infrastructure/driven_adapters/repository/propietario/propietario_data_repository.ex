defmodule AtmPseudoAppCa.Infrastructure.Adapters.Repository.Propietario.PropietarioDataRepository do
  alias AtmPseudoAppCa.Domain.Model.Propietario
  alias AtmPseudoAppCa.Infrastructure.Adapters.Repository.Repo
  alias AtmPseudoAppCa.Infrastructure.Adapters.Repository.Propietario.Data.PropietarioData

  ## TODO: Update behaviour

  #Register a propietario
  @behaviour AtmPseudoAppCa.Domain.Behaviours.PropietarioBehaviour

  def register(entity) do
    case to_data(entity) |> Repo.insert do
      {:ok, entity} -> {:ok, entity |> to_entity()}
      error -> error
    end
  end

  def find_by_id(id) do
    case PropietarioData |> Repo.get!(id) do
      {:ok, entity} -> {:ok, entity |> to_entity()}
      error -> error
    end
  end

  #DTOs logic
  defp to_entity(nil), do: nil

  defp to_entity(data) do
    struct(Propietario, data |> Map.from_struct)
  end

  defp to_data(entity) do
    prop = PropietarioData.changeset(%PropietarioData{}, entity |> Map.from_struct).changes
    struct(PropietarioData, prop)
  end

end
