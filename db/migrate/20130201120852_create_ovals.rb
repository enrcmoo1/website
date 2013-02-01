class CreateOvals < ActiveRecord::Migration
  def change
    create_table :ovals do |t|
      t.string :as2

      t.timestamps
    end
  end
end
