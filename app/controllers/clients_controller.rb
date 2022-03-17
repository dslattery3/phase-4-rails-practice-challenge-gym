class ClientsController < ApplicationController
    # rescue_from ActiveRecord::RecordNotFound, with: :render_not_found



    def show
        client_sum = Client.find(params[:id]).memberships.sum(:charge)
        render json: client_sum, status: :ok
    end

    def update
        gym = Client.find(params[:id])
        gym.update(name: params[:name],age: params[:age])
        render json: gym, status: :ok
    end


    # private

    # def render_not_found
    #     render json: {error: "Client not found"}, status: :not_found
    # end



end
