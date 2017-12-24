class CreateThemes < ActiveRecord::Migration[5.1]
  def change
    create_table :themes do |t|
      t.belongs_to :forum
      t.timestamps
    end
  end
end