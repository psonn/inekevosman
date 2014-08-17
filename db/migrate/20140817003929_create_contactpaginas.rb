class CreateContactpaginas < ActiveRecord::Migration
  def change
    create_table :contactpaginas do |t|
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
