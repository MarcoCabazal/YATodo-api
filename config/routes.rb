Rails.application.routes.draw do
  namespace   :v1, defaults: { format: :json } do
    get       '/todos',                            to: 'todos#index'
    post      '/todos',                            to: 'todos#create'
    patch     '/todos/:id',                        to: 'todos#update'
    delete    '/todos/:id',                        to: 'todos#destroy'
  end

  root 'todos#index'
end
