module UserHelper
    def full_address(user_profile) 
            user_profile.nil? ? "-" : 
            "Address Line: #{user_profile.address_line}, Street: #{user_profile.street},
             City: #{user_profile.city}, State: #{user_profile.state},
             Pin Code:  #{user_profile.pin_code}"        
    end
end