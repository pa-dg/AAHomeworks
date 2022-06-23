class Person < ApplicationRecord
    validates :name, presence: true         #the validation will come from the model instead of db
    validate :check_name_length
    
    def check_name_length
        unless self.name.length >= 3
        errors[:name] << "is too short, must be longer than or equal to three or more characters"
        end
    end

    belongs_to :house,
        class_name: :House
        primary_key: :id
        foreign_key: :house_id
end