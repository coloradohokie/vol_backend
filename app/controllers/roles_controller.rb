class RolesController < ApplicationController
    def index
        @roles = Role.all
        render json: @roles, status: 200
    end

    def show
        @role = Role.find(params[:id])
        render json: @role, status: 200
    end

    def create 
        @role = Role.create(
            role: params[:role],
            rate: params[:rate],
            description: params[:description]
        )

        render json: @role, status: 201
    end

    def update
        @role = Role.find(params[:id])
        @role.update(
            role: params[:role],
            rate: params[:rate],
            description: params[:description]
        )
        render json: @role, status: 202
    end

    def delete
        @role = Role.find(params[:id])
        @role.destroy
        render status: :no_content
    end
end
