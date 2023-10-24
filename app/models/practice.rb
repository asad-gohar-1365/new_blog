class Practice < ApplicationRecord
    validates :name, presence :true, length: {minimum:3, maximum:10}
    validates :number, presence true, numericality: { only_integer: true }
    validates :isHappy, presence:true, inclusion: { in: [true, false] }, message:'boolean value only' 
end
