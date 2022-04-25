
class MembershipValidator <  ActiveModel::Validator
    #Membership SignUp
    def validate(record)
        #find category's of current user
        if record.users.category == "adherant"
            before_save {self.email = email.downcase}
        end 
        
        if record.users.category == "TeamAdmin"
            before_save {self.email = email.downcase}
        end 
    end
end