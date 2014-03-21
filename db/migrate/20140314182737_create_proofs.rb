class CreateProofs < ActiveRecord::Migration
  def change
    create_table :proofs do |t|
      t.string :url
      t.references :walletmap, index: true

      t.timestamps
    end
  end
end
