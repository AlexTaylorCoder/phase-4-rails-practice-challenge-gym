class ClientsController < ApplicationController
    def index
        render json: Client.all
    end
    def show
        render json: findinst
    end
    def create
        render json: Client.create(params)
    end

    def destroy
        findinst.destroy
    end

    def update
        inst = findinst
        findinst.update(allowed)
        render json: inst
    end

    private

    def findinst
        Client.find(params[:id])
    end
    def allowed
        params.permit(:name,:address)
    end
end
