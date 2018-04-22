Rails.application.routes.draw do
  match '/request_feedback' => 'feedback#request_feedback', via: :post
end
