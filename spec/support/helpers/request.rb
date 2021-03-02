module Helpers
  module Request
    def headers_for(client: nil, session_token: nil)
      headers = base_headers

      case client
      when :app
        headers.merge!(app_headers)
      when :dashboard
        headers.merge!(dashboard_headers)
      end

      headers.merge!(authenticated_headers(session_token, client)) if session_token

      headers
    end

    private

    def app_headers
      { 'X-Client' => 'app' }
    end

    def authenticated_headers(session_token, audience)
      jwt_claims = {
        sub: session_token.content,
        exp: (DateTime.now + 15.minutes).to_i,
        aud: audience
      }

      { Authorization: "Bearer #{JsonWebToken.encode(jwt_claims)}" }
    end

    def base_headers
      { 'Accept' => 'application/vnd.stc.v1+json' }
    end

    def dashboard_headers
      {
        'X-Client' => 'dashboard'
      }
    end
  end
end
