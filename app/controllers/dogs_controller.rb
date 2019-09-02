class DogsController < ApplicationController

    def index
        if flash[:sort] 
            @dogs = Dog.all.sort_by{|dog| dog.employees.length}.reverse
        else
            @dogs = Dog.all
        end
    end

    def show
        @dog = Dog.find(params[:id])
    end

    def sort
        flash[:sort] = true
        redirect_to dogs_path
    end


end
