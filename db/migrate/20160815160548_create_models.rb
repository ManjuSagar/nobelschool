class CreateModels < ActiveRecord::Migration
  def change
    create_table :staffs do |t|
      t.string :name
      t.string :education
    end


    create_table :addresses do |t|
      t.time :start_time
      t.time :end_time
      t.string :address_line1
      t.string :address_line2
      t.string :address_line3
      t.string :pincode
      t.string :ph_num1
      t.string :ph_num2
    end

  end
end
