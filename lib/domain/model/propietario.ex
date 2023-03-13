defmodule AtmPseudoAppCa.Domain.Model.Propietario do

  @moduledoc """
  TODO Updates module description
  """

  defstruct [
    :id,
    :nombres,
    :apellidos,
    :edad,
    :num_iden,
    :fecha_nac,
  ]

  @type t() :: %__MODULE__{id: binary(),
  nombres: String.t() ,
  apellidos: String.t(),
  edad: number(),
  num_iden: String.t(),
  fecha_nac: Date.t()
  }

  def new(id, _, _, _, _, _) when(is_nil(id)), do: {:error, :invalid_propietario}
  def new(id, nombres, apellidos, edad, num_iden, fecha_nac) do
    {
      :ok,
      %__MODULE__{id: id,
                  nombres: nombres,
                  apellidos: apellidos,
                  edad: edad,
                  num_iden: num_iden,
                  fecha_nac: fecha_nac,
                }
    }
  end

  def find_by_id(id) do
    {
      :ok,
      %__MODULE__{id: id
                }
    }
  end

  #def generate_uuid do
  #  Ecto.UUID.generate()
  #end



end
