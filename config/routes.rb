Rails.application.routes.draw do
  scope module: :api do
    scope module: :v1, constraints: ApiVersionConstraint.new(version: 1) do
      resources :commerces, only: [:index]
    end
  end
end
