defmodule AtmPseudoAppCa.Domain.UseCase.GetPropietarioUsecase do

  @moduledoc """
  TODO Updates usecase description
  """
  alias AtmPseudoAppCa.Domain.Model.Propietario
  require Logger
  @propietario_behaviour Application.compile_env(:atm_pseudo_app_ca, :propietario_behaviour)
  ## TODO Add functions to business logic app
  def find_by_id(data) do
    with {:ok, propietario} <- Propietario.find_by_id(data[:id]),
         #{:ok, _} <- legal_validation(propietario),
         {:ok, get_propietario} <- find_by_id_propietario(Map.get(propietario, :id))  do
           Logger.info("Founded propietario: #{inspect(get_propietario)}")
         {:ok, get_propietario}
    end
  end

  def find_by_id_propietario(id) do
    @propietario_behaviour.find_by_id(id)
  end
end
