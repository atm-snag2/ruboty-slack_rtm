module Ruboty
  module SlackRTM
    class SlackWebClientWrapper < ::Slack::Web::Client
      def request(...)
        super(...)
      rescue ::Slack::Web::Api::Errors::SlackError => e
        e.response.body
      end
    end
  end
end
