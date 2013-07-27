class CreatePresidenciesImages < ActiveRecord::Migration
  def change
  	create_table :presidencies_images do |t|
      t.belongs_to :presidency
      t.belongs_to :image
    end
  end
end
