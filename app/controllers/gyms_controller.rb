class GymsController < ApplicationController
    # rescue_from ActiveRecord::RecordNotFound, with: :render_not_found


    def show
        render json: Gym.find(params[:id]), status: :ok
    end

    def update
        gym = Gym.find(params[:id])
        gym.update(name: params[:name],address: params[:address])
        render json: gym, status: :ok
    end


    def destroy
        Gym.find(params[:id]).destroy
    end


    # private

    # def render_not_found
    #     render json: {error: "Gym not found"}, status: :not_found
    # end





end
