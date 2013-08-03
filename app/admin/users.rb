ActiveAdmin.register User do
	index do
		column :username
		column :birth_date
		column :phone_number
		column :ghost
		column :email		
		column :admin
		column :sign_in_count
		column :current_sign_in_ip
		column :current_sign_in_at
		column :last_sign_in_ip
		column :last_sign_in_at
		column :created_at
		column :updated_at
		default_actions
	end

	show do
		attributes_table do
			row :first_name
			row :last_name
			row :username
			row :birth_date
			row :phone_number
			row :ghost
			row :email		
			row :admin
			row :sign_in_count
			row :current_sign_in_ip
			row :current_sign_in_at
			row :last_sign_in_ip
			row :last_sign_in_at
			row :created_at
			row :updated_at
			row :avatar_file_name
		end
	end

	form :html => { :enctype => "multipart/form-data" } do |f|
		f.inputs "User Details" do
			f.input  :first_name
			f.input  :last_name
			f.input  :username
			f.input  :birth_date
			f.input  :phone_number
			f.input  :ghost
			f.input  :email		
			f.input  :admin
			f.input  :sign_in_count
			f.input :avatar, :as => :file
		end
		f.buttons
	end
end