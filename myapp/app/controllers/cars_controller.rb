class CarsController < ApplicationController
    def index
        @cars = Car.all
    end

    def show
      @car = Car.find(params[:id])  
    end
    def new
        @car = Car.new
    end
    def edit
        @Car = Car.find(params[:id])
    end
    def update
        @Car = Car.find(params[:id])
        if @Car.update(car_params)
            redirect_to car_path(@Car)
        else
            render :edit
        end    
    end    
    def create
        @Car = Car.new(car_params)
        if @Car.save
            redirect_to car_path(@Car)
        else
            render :new
        end    
    end 
    private

    def car_params
        params.require(:car).permit(:placa, :color)
    end
    
end
