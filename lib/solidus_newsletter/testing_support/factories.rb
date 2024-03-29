# frozen_string_literal: true

FactoryBot.define do
  factory :newsletter, class: Spree::Newsletter do
    name { 'User Test' }
    email { 'user@test.com' }
  end
end
