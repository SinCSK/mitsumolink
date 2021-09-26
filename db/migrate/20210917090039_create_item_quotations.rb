class CreateItemQuotations < ActiveRecord::Migration[6.0]
  def change
    create_table :item_quotations do |t|
      t.float :quantity,             null: false
      t.references :item,              null: false, foreign_key: true
      t.references :quotation,         null: false, foreign_key: true
      t.timestamps
    end
  end
end
