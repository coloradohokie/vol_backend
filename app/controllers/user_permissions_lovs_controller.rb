class UserPermissionsLovsController < ApplicationController
    def index
        @permissions = UserPermissionsLov.all
        render json: @permissions, status: 200
    end

    def show
        @permission = UserPermissionsLov.find(params[:id])
        render json: @permission, status: 200
    end

    def create
        @permission = UserPermissionsLov.create(
            role: params[:role]
        )
        render json: @permission, status: 201
    end

    def update
        @permission = UserPermissionsLov.find(params[:id])
        @permission.update(
            role: params[:role]
        )
        render json: @permission, status: 202
    end

end
