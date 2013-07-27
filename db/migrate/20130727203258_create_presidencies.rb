class CreatePresidencies < ActiveRecord::Migration
  def change
    create_table :presidencies do |t|
    	t.references :president
    	t.references :vice_president
    	t.references :preceded_by
    	t.references :succeeded_by	
    	t.datetime :from
    	t.datetime :end
    	t.boolean :democratic
    	t.float :percentage_of_votes
		t.timestamps
    end
  end
end
