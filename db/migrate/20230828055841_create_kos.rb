class CreateKos < ActiveRecord::Migration[7.0]
  def change
    create_table :kos do |t|
      t.string :title
      t.string :name
      t.text :content
      t.integer :number

      t.timestamps
    end
  end
end
