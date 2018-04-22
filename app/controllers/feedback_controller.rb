require 'net/http'

class FeedbackController < ApplicationController

  def request_feedback
    render html: '<div>Testing</div>'.html_safe
  end

  def respond_message message
    content_type :json
    {:text => message}.to_json
  end
end
