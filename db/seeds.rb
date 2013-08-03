# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#!/bin/env ruby
# encoding: utf-8

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#

#require File.expand_path('../seeds/images_seeds.rb', __FILE__)
#require File.expand_path('../seeds/persons_seeds.rb', __FILE__)
#require File.expand_path('../seeds/presidencies_seeds.rb', __FILE__)
require File.expand_path('../seeds/admins_seeds.rb', __FILE__)

case Rails.env
	when "development"
		# my_object = Object.create(attr1:"Argentina", attr2:"branch1@mail.com")
		# my_object.save!

		#ImagesSeeds.add_all
		#PersonsSeeds.add_all
		#PresidenciesCategoriesSeeds.add_all
		AdminsSeeds.add_all
		
	when "production"
		AdminsSeeds.add_all
end
