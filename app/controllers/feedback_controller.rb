require 'net/http'

class FeedbackController < ApplicationController

  def request_feedback
    message = params[:text].gsub(params[:trigger_word], '').strip

    action, repo = message.split('_').map {|c| c.strip.downcase }
    repo_url = URI("https://api.github.com/repos/#{repo}")

    case action
      when 'issues'
        resp = Net::HTTP.get(repo_url)
        resp = JSON.parse(resp)
        respond_message("There are #{resp['open_issues_count']} open issues on #{repo}")
    end
  end

  def respond_message(message)
    {text: message}.to_json
  end
end
