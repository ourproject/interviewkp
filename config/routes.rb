Erecruitment::Application.routes.draw do

  get "demo_question/question"
  get "demo_test/demo"
  resources :final_decisions

  
  resources :clips

  resources :interviews
  
  resources :interview_questions
  

  resources :answers

  get "testpaper/test"
  get "candidates/index"
  get "candidates/show_tests"
  get "candidates/show_results"
  get "organization/show_candidates"  
  get "organization/show_clips"  
  get "candidate/index"
  get "organization/index"
  get "admin/aboutus"
  get "testpaper/thankyou"
  get "interview_session/thankyou"
  get "demo_test/thankyou"
  resources :tests


  get 'admin' => 'admin#index'
  get 'results_homepage' => 'final_decisions#index'
  get "interview_session/interview"
  get 'interview_list_page' => 'interviews#index'
  get 'interview_question_homepage' => 'interview_questions#index '
  get 'all_answers' => 'answers#index'
  get 'candidates_homepage' => 'candidates#index '
  get 'candidate_homepage' => 'candidate#index '
  get 'organisaion_homepage' => 'organization#index'
  get 'tests_homepage' => 'tests#index'
  get 'user_homepage' => 'users#index'
  get 'testpapers_list' => 'testpaper#index '
  get 'question_bank' => 'my_questions#index'
  #get '' => ''


controller :sessions do
 get 'login' => :new
 post 'login' => :create
 delete 'logout' => :destroy
end
  
  resources :users
  
  get 'candidates_homepage' => 'candidates#index '
  get 'candidate_homepage' => 'candidate#index '
  get 'organisaion_homepage' => 'organization#index'
  
  get "testpaper/index"

  resources :my_questions


  root "sessions#new"
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
