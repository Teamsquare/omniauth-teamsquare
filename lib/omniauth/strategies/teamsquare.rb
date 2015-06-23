require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Teamsquare < OmniAuth::Strategies::OAuth2
      option :client_options, {
        :site => 'https://id.teamsquare.co/',
        :authorize_url => 'https://id.teamsquare.co/oauth/authorize',
        :token_url => 'https://id.teamsquare.co/oauth/token'
      }

      def request_phase
        super
      end

      uid { user_data['id'] }

      info do
        {
          'email' => user_data['email'],
          'name' => user_data['name'],
          'image' => user_data['image']
        }
      end

      def user_data
        access_token.options[:mode] = :query
        user_data ||= access_token.get('/1/me').parsed
      end

    end
  end
end
