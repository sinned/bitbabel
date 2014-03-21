class Walletmap < ActiveRecord::Base
  has_many :proofs, dependent: :destroy
end
