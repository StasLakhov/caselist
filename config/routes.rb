Rails.application.routes.draw do

  resources :casetitles do
    resources :testcases
  end

end
