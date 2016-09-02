
User.create(:email=> 'admin@gmail.com', :password=> 'test1234', :password_confirmation=> 'test1234') unless User.find_by_email('admin@gmail.com')
if Address.count < 0
Address.create(:address_line1=> 'Kottige Palya', :address_line2=> 'Magadi Main Road', :address_line3=> 'Bangalore',
               :start_time=> '2000-01-01 09:30:00', :end_time=> '2000-01-01 16:00:00', :pincode=> '560091',
               :ph_num1=> '23285900', :ph_num2=> '9449152947', :email=> 'noblehighschoolblr@gmail.com')
end
CopyRight.create(:copy_right_title=> 'nobelenglishschool.com') unless CopyRight.find_by_copy_right_title('nobelenglishschool.com')