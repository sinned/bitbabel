class CreateWalletmaps < ActiveRecord::Migration
  def change
    create_table :walletmaps do |t|
      t.string :wallet
      t.string :address
      t.string :address_type

      t.timestamps
    end
  end
end
