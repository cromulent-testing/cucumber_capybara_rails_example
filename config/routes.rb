CucumberCapybaraRailsExample::Application.routes.draw do
  resources :hellos

  root :to =>'home#index'
end
