class CreateExampleAlts < ActiveRecord::Migration
  def change
    create_table :example_alts do |t|
      t.belongs_to :user, index: true
      t.belongs_to :example, index: true
      t.text :description
      t.integer :votes
      t.decimal :rank

      t.timestamps
    end
  end
end
