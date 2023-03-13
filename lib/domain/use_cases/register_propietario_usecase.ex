defmodule AtmPseudoAppCa.Domain.UseCase.RegisterPropietarioUsecase do

  @moduledoc """
  TODO Updates usecase description
  """
  alias AtmPseudoAppCa.Domain.Model.Propietario
  require Logger

  @propietario_behaviour Application.compile_env(:atm_pseudo_app_ca, :propietario_behaviour)
  @generate_uuid_behavior  Application.compile_env(:atm_pseudo_app_ca, :generate_uuid_behavior)

  @spec register(map()) :: {:error, atom()} | {:ok, Propietario.t()}
  ## TODO Add functions to business logic app
  def register(data) do
    map_with_id = Map.put(data, :id, generate_uuid_propietario())

    with {:ok, propietario} <- Propietario.new(map_with_id[:id], map_with_id[:nombres], map_with_id[:apellidos], map_with_id[:edad], map_with_id[:num_iden], map_with_id[:fecha_nac]),
         #{:ok, _} <- legal_validation(propietario),
         {:ok, new_propietario} <- register_propietario(propietario) do
           Logger.info("New propietario: #{inspect(new_propietario)}")
         {:ok, new_propietario}
    end
  end




  #defp legal_validation(propietario) do
  #  {:ok, propietario}
  #end

  #Behaviors


  defp register_propietario(propietario) do
    #{:ok, propietario}
    @propietario_behaviour.register(propietario)
  end

  defp generate_uuid_propietario() do
    @generate_uuid_behavior.generate_uuid()
  end


end
