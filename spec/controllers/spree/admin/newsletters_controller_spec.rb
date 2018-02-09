require 'spec_helper'

describe Spree::Admin::NewslettersController, type: :controller do
  stub_authorization!

  before do
    SolidusNewsletter::Config[:title] = 'Newsletter'
    SolidusNewsletter::Config[:text] = 'Gets 10%'
  end

  context '#update' do
    it 'returns true' do
      put :update, params: { newsletters: { title: 'Newsletter Test', text: 'Gets 20%' } }

      expect(response.status).to eq(302)
      expect(SolidusNewsletter::Config[:title]).to eq('Newsletter Test')
      expect(SolidusNewsletter::Config[:text]).to eq('Gets 20%')
    end

    it 'returns false' do
      put :update, params: { newsletters: { title: '', text: '' } }

      expect(response.status).to eq(302)
      expect(flash[:error]).to include('Something went wrong, please try again')
    end
  end
end