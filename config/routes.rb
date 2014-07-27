T::Application.routes.draw do

  resources :quizzes

  post '/solve/:id' => 'quizzes#solve'

  root to: 'quizzes#home'

end
