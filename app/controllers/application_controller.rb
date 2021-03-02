class ApplicationController < ActionController::API
  rescue_from ActiveRecord::RecordNotFound do |e|
    msgs = [I18n.t('activerecord.errors.messages.record_not_found', model: e.model)]

    render json: { errors: msgs }, status: :not_found
  end
end
