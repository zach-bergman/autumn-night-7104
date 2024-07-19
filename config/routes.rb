Rails.application.routes.draw do
  root "welcome#index"
  get "search", to: "search#index"
end

# https://last-airbender-api.fly.dev/api/v1/characters?affiliation=Fire+Nation