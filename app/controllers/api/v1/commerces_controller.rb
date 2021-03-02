class Api::V1::CommercesController < ApplicationController
  def index
    @commerces = Commerce.list_commerces

    render(
      json: @commerces,
      root: 'commerces',
      status: :ok,
      each_serializer: BaseCommerceSerializer
    )
  end
end