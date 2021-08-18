class Oficina < ApplicationRecord

    validates :codigo, uniqueness: true
    validates :codigo, presence: true
    validates :precio, presence: true
    
end
