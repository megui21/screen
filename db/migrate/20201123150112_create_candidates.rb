class CreateCandidates < ActiveRecord::Migration[6.0]
  def change
    create_table :candidates do |t|
      t.references :video, null: false, foreign_key: true
      t.string :first_name
      t.string :last_name
      t.string :email

      t.timestamps
    end
  end
end
