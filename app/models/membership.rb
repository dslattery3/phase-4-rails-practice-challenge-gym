class Membership < ApplicationRecord
  belongs_to :gym
  belongs_to :client

  validates :charge, presence: true
  validate :gym_id, :gym_relationship

  private

  def gym_relationship
      # client = Client.find(self.client_id)
      # gym = Gym.find(self.gym_id)
      # if Gym.find_by(client: client.id)
      #   errors.add(:client_id, "not unique relationship")
      # end


  end



end
