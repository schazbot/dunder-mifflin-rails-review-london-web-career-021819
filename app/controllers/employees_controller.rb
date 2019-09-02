class EmployeesController < ApplicationController

    def index
        @employees = Employee.all
    end

    def show
        @employee = Employee.find(params[:id])
    end

    def new
        @employee = Employee.new
    end

    def create
        @employee = Employee.create(employee_params)
        if @employee.valid?
            redirect_to @employee
        else 
            flash[:notice] = "Title and Alias must be unique"
            redirect_to new_employee_path
        end
    end

    def edit
        @employee = Employee.find(params[:id])
    end

    def update
        @employee = Employee.update(employee_params)
    end

    private 

    def employee_params
        params.require(:employee).permit(:first_name, :last_name, :alias, :title, :office, :dog_id, :img_url)
    end

end
