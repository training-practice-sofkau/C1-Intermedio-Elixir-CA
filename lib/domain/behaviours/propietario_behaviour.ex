defmodule AtmPseudoAppCa.Domain.Behaviours.PropietarioBehaviour do
  alias AtmPseudoAppCa.Domain.Model.Propietario
  @moduledoc """
  TODO Updates description and add new functions
  """
  # @callback replace_function_name(param_one::term, param_two::term)::{:ok, true::term} | {:error, reason::term}
  @callback register(Propietario.t()) :: {:ok, Propietario.t()} | {:error, reason::atom()}

  @callback find_by_id(String.t()) :: {:ok, Propietario.t()} | {:error, reason::atom()}

  #@callback generate_uuuid() :: binary()
end
