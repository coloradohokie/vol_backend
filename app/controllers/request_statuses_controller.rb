class RequestStatusesController < ApplicationController

    def index
        @statuses = RequestStatus.all
        render json: @statuses, status: 200
    end

    def show
        @status = RequestStatus.find(params[:id])
        render json: @status
    end

    def create
        @status = RequestStatus.create(
            state: params[:state]
        )
        render json: @status, status: 200
    end

    def update
        @status = RequstStatus.find(params[:id])
        @status.update(
            state: params[:state]
        )
        render json: @status, status: 201
    end

    def delete
        @status = RequestStatus.find(params[:id])
        @status.destroy
        render status: 204
    end

end
