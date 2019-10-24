class CreateStrolls < ActiveRecord::Migration[6.0]
  def change
    create_table :strolls do |t|
      t.datetime :date
      t.belongs_to :dogsitter, index: true
      t.belongs_to :city, index: true
      
      t.timestamps
    end
  end
end
