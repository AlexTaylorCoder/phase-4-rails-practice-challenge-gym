class ApplicationController < ActionController::API
    rescue_from ActiveRecord::RecordInvalid, with: :invalidrecord
    rescue_from ActiveRecord::RecordNotFound, with: :recordnotfound
    private 
    def invalidrecord invalid
        render json: {errors: invalid.record.errors}, status: 422
    end
    def recordnotfound invalid
        render json: {errors: invalid}, status: 404
    end
end
