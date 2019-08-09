class Api::V1::StepsController < ApplicationController
    before_action :set_step, only: [:show, :update, :destroy]   

    def index
        @steps = Step.all
        render json: @steps
    end

    def create
        @step = Step.new(step_params)
        if @step.save
            render json: @step
        else
            render @step.errors
        end
    end
    
    def show
        render json: @step    
    end

    def update
        @step = Step.new(step_params)
        if @step.save
            render json: @step, status: :created, location: @step
        else
            render @step.errors
        end
    end

    def destroy
        @step.destroy
    end

    private

    def step_params
        params.require(:step).permit(:name)
    end

    def set_step
        @step = Step.find(params[:id])
    end

end

