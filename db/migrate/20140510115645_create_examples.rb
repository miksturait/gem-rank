class CreateExamples < ActiveRecord::Migration
  def change
    create_table :examples do |t|
      t.belongs_to :user, index: true
      t.text :description
      t.integer :votes
      t.decimal :rank

      t.timestamps
    end
  end
end
