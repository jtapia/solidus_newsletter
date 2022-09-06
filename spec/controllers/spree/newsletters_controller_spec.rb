# frozen_string_literal: true

require 'spec_helper'

RSpec.describe Spree::NewslettersController, type: :controller do
  let(:newsletter) { create(:newsletter) }

  context '#create' do
    it 'returns true new object' do
      post :create,
           params: {
             newsletters: {
               name: 'User Test',
               email: 'user@test.com'
             }
           }

      expect(response.status).to eq(302)
      expect(flash[:success])
        .to include(I18n.t('spree.newsletter.controller.success'))
    end

    it 'returns false' do
      post :create,
           params: {
             newsletters: {
               name: '',
               email: ''
             }
           }

      expect(response.status).to eq(302)
      expect(flash[:error]).to include(I18n.t('spree.newsletter.controller.error'))
    end

    it 'returns already added' do
      post :create,
           params: {
             newsletters: {
               name: newsletter.name,
               email: newsletter.email
             }
           }

      expect(response.status).to eq(302)
      expect(flash[:notice])
        .to include(I18n.t('spree.newsletter.controller.already_subscribed'))
    end
  end
end
