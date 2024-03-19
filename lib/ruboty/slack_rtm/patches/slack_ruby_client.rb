require 'slack/web/faraday/request'

module SlackWebFaradayRequestMonkeyPatch
  def request(*)
    super
  rescue Slack::Web::Api::Errors::SlackError => e
    e.response.body
  end
end

Slack::Web::Faraday::Request.prepend(SlackWebFaradayRequestMonkeyPatch)
