# frozen_string_literal: true

module Spree
  class Newsletter < Spree::Base
    validates :name, presence: true
    validates :email, presence: true, uniqueness: true
  end
end
