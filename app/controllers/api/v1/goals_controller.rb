class Api::V1::GoalsController < ApplicationController
    before_action :set_goal, only: [:show, :update, :destroy]   

    def index
        @goals = Goal.all
        render json: @goals
    end

    def create
        @goal = Goal.new(goal_params)
        if @goal.save
            render json: @goal, status: :created, location: @goal
        else
            render @goal.errors
        end
    end
    
    def show
        render json: @goal    
    end

    def update
        @goal = Goal.new(goal_params)
        if @goal.save
            render json: @goal
        else
            render @goal.errors
        end
    end

    def destroy
        @goal.destroy
    end

    private

    def goal_params
        params.require(:goal).permit(:name, :completion_date).merge({completion_percent: 0.0})
    end

    def set_goal
        @goal = Goal.find(params[:id])
    end

end
