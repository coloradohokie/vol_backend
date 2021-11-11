class AssignmentsController < ApplicationController
    def index
        @assignments = Assignment.all
        render json: @assignments, status: 200
    end

    def show
        @assignment = Assignment.find(params[:id])
        render json: @assignment, status: 200
    end

    def create
        request_status_id = RequestStatus.find_by(state: 'Open').id
        @assignment = Assignment.create(
            contact_id: params[:contact_id],
            opportunities_id: params[:opportunities_id]
            request_statuses_id: params[:request_statuses_id],
            comments: params[:comments]
        )

        render json: @assignment, status: 201
    end

    def update
        request_status_id = RequestStatus.find(params[:id])
        @assignment = Assignment.find(params[:id])
        @assignment.update(
            contact_id: params[:contact_id],
            opportunities_id: params[:opportunities_id]
            request_statuses_id: request_statuses_id,
            comments: params[:comments]
        )

        render json: @assignment, status: 202
    end


end
