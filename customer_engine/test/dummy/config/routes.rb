Rails.application.routes.draw do
  mount CustomerEngine::Engine => "/customer_engine"
end
