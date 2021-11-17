class CreateNikulogs < ActiveRecord::Migration[6.1]
  def change
    create_table :nikulogs do |t|
      t.string :nikudate
      t.text :nikumenu

      t.timestamps
    end
  end
end
