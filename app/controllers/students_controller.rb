class StudentsController < ApplicationController

  def index
    students = if params[:name]
                  Student.by_name(params[:name])
                else
                  Student.all
                end
    render json: students
  end

  def find_by_id
    render json: Student.all.find_by(id: params[:id])
  end

end
