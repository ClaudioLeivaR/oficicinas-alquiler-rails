class Oficina < ApplicationRecord
    has_many :inquilinos

    validates :codigo, uniqueness: true
    validates :codigo, presence: true
    validates :precio, presence: true
    
end
