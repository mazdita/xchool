class Course < ApplicationRecord

    has_many :enrollments, dependent: :destroy
    has_many :users, through: :enrollments

    #def self.import(file)
        #CSV.foreach(file.path, headers: true) do |row|
            #Course.create! row.to_hash
        #end
    #end
    
end
