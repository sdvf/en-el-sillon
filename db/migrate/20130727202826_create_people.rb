class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.string :surname
      t.string :religion
      t.string :alma_mater
      t.string :political_party
      t.string :description
      t.datetime :date_of_birth
      t.string :place_of_birth

      t.timestamps
    end
  end
end
