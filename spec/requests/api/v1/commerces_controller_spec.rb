require 'rails_helper'

RSpec.describe Api::V1::CommercesController, type: :request do
  describe '#GET  index ' do
    let(:headers) { headers_for(client: :nil, session_token: nil) }

    let(:user) { create(:user) }

    it 'responds with http ok' do
      get '/commerces', headers: headers

      expect(response).to have_http_status(:ok)
    end

    it 'responds with companies' do
      get '/commerces', headers: headers

      expect(response.body).to include('commerces')
    end
  end
end
