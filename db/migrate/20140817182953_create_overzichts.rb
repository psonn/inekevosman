class CreateOverzichts < ActiveRecord::Migration
  def change
    create_table :overzichts do |t|
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
