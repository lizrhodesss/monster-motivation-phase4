class Quote < ApplicationRecord

validates :quote, :author, presence: true
   
end
