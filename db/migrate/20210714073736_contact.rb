class Contact < ActiveRecord::Migration[6.1]
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :address
      t.text :message

      t.timestamps null: false
    end
  end
end
