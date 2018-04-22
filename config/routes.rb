Rails.application.routes.draw do
  match '/request_feedback' => 'feedback#request_feedback', via: :post
  match '/request_f' => 'feedback#request_feedback', via: :get

end
