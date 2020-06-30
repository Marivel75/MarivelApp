class CreateSpecificContents < ActiveRecord::Migration[5.2]
  def change
    create_table :specific_contents do |t|
      t.string :title
      t.string :subtitle
      t.text :content
      t.string :external_link

      t.timestamps
    end
  end
end
