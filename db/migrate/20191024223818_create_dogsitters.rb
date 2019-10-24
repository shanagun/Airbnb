class CreateDogsitters < ActiveRecord::Migration[6.0]
  def change
    create_table :dogsitters do |t|
      t.string :sitter_name
      t.belongs_to :city , optional: true
      
      t.timestamps
    end
  end
end
