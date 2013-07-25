Persistence::Application.routes.draw do

  root to: redirect('/counter')

  resource :counter, only: 'show' do
    %w(form object cookie database).each do |action|
      get action
      post action
    end
  end
end
