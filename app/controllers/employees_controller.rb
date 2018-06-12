class EmployeesController < ApplicationController
  def index
   @employees = Employee.all
  end

  def show
    @employee = Employee.find(params[:id])
  end

  def new
    @Employee = Employee.new
  end

  def create
    #student_params is a method that parses the parameters to avoid injections
    @employee = Employee.create(employee_params)
    if @employee.save
      flash[:success] = "Employee successfully saved!"
      redirect_to @employee
    else
      flash[:error] = "Employee was not saved!"
      render 'new'
    end
  end

  private
  def employee_params
    #validates the parameters
    params.require(:employee).permit(:name, :surname, :phone, :email, :pictureUrl)
  end

end
