require 'rails_helper'

RSpec.describe TransractsController, type: :request do
  describe 'transracts index' do
    before(:each) do
      get group_transracts_path(1)
    end

    it 'returns a 200 status code' do
      expect(response).to have_http_status(200)
    end

    it 'returns a list of transracts' do
      expect(response.body).to include('Add new Transaction')
    end

    it 'render index action' do
      expect(response).to render_template(:index)
    end
  end
end
