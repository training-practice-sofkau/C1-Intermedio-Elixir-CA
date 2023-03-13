defmodule AtmPseudoAppCa.Infrastructure.DrivenAdapters.Repository.Generic.UuidData do
  alias AtmPseudoAppCa.Utils.IdGenerator
  @behaviour AtmPseudoAppCa.Domain.Behaviours.Generic.GenericBehaviour

  def generate_uuid() do
    IdGenerator.generate_uuid()
  end

end
