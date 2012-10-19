class CreateLogos < ActiveRecord::Migration
  def change
    create_table :logos do |t|
      t.string :title
      t.attachment :image
      t.date :start_date
      t.date :end_date
      t.text :description
      t.text :credits
      t.boolean :published

      t.timestamps
    end
  end
end
