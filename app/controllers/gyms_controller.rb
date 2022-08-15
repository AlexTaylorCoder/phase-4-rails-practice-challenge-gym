class GymsController < ApplicationController

    def show
        render json: findinst
    end

    def destroy
        findinst.destroy
        head :no_content, status: 200
    end
    
    private
    def findinst
        Gym.find(params[:id])
    end
    def allowed
        params.permit(:name,:address)
    end
end
