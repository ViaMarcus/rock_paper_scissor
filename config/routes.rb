Rails.application.routes.draw do
  get 'single/index'
  root 'single#index'

  post 'single/throw' => 'single#throw'

end
