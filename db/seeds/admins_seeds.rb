#!/bin/env ruby
# encoding: utf-8

module AdminsSeeds

   def AdminsSeeds.add_all

      user1 = User.create!({
         
         :email => 'admin@vecikndalo.com',
         :password => 'v3c1nd4l0rul3s',
         :password_confirmation => 'v3c1nd4l0rul3s',
         :admin => true
      })
   end
end