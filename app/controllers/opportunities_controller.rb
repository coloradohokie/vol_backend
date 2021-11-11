class OpportunitiesController < ApplicationController
    def index
        @opportunities = Opportunity.all

        render json: @opportunities, status: 200
    end

    def show
        @opportunity = Opportunity.find(params[:id])
        render json: @opportunity, status: 200
    end

    def create
        role_id = Role.find_by(role: params[:role]).id
        @opportunity = Opportunity.create(
            event_id: params[:event_id],
            event_title: params[:event_title],
            event_date: params[:event_date],
            shift_start: params[:shift_start],
            shift_end: params[:shift_end],
            role_id: role_id,
            credit_hours: params[:credit_hours],
            visibility: true
        )

        render json: @opportunity, status: 201
    
    end

    def update
        role_id = Role.find_by(role: params[:role]).id
        @opportunity = Opportunity.find(params[:id])
        @opportunity.update(
            event_id: params[:event_id],
            event_title: params[:event_title],
            event_date: params[:event_date],
            shift_start: params[:shift_start],
            shift_end: params[:shift_end],
            role_id: role_id,
            credit_hours: params[:credit_hours],
            visibility: true
        )

        render json: @opportunity, status: 202
    end
end
