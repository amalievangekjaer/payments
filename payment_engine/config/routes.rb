PaymentEngine::Engine.routes.draw do
  resources :payments

  mount CustomerEngine::Engine, at: '/customers'

end
