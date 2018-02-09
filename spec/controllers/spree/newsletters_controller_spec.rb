require 'spec_helper'

describe Spree::NewslettersController, type: :controller do
  context '#create' do
    it 'returns true' do
      post :create, params: { newsletters: { name: 'User Test', email: 'user@test.com' } }

      expect(response.status).to eq(302)
      expect(flash[:success]).to include(Spree.t('newsletter.controller.success'))
    end

    it 'returns false' do
      post :create, params: { newsletters: { name: '', email: '' } }

      expect(response.status).to eq(302)
      expect(flash[:error]).to include(Spree.t('newsletter.controller.error'))
    end
  end
end