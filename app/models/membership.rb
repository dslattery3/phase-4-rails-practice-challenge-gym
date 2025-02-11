class Membership < ApplicationRecord
  belongs_to :gym
  belongs_to :client

  validates :charge, presence: true
  validates :client_id, uniqueness: {scope: :gym_id,
    message: "you can only have one membership"}
    
end
