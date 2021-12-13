class StudentsController < ApplicationController

    def index
        students = Student.all
        render json: students
    end

    def grades
        students = Student.all
        sorted_students = students.sort{|a, b| b.grade <=> a.grade}
        render json: sorted_students
    end

end
