Rails.application.routes.draw do
  mount Lookbook::Engine, at: "/lookbook"

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", :as => :rails_health_check

  scope "docs" do
    # COMPONENTS
    get "accordion", to: "docs#accordion", as: :docs_accordion
    get "alert", to: "docs#alert_component", as: :docs_alert # alert is a reserved word for controller action
    get "alert_dialog", to: "docs#alert_dialog", as: :docs_alert_dialog
  end

  # Defines the root path route ("/")
  # root "posts#index"
  root to: "static#index"
  get "test" => "test#index"
end
