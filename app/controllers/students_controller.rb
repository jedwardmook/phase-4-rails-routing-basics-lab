class StudentsController < ApplicationController

    def index
        students = Student.all
        render json: students
    end   
    
    def grades
        gradesHighToLow = Student.all.order(grade: :desc)
        render json: gradesHighToLow
    end

    def highest_grade
        gradesHighestArray = Student.all.order(grade: :desc)
        highestGrade = gradesHighestArray.first
        render json: highestGrade
    end

end