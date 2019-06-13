class CreateLeituras < ActiveRecord::Migration[5.2]
  def change
    create_table :leituras do |t|
      t.integer :valor

      t.timestamps
    end
  end
end
