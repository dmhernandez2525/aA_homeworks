require ("byebug")
class Bootcamp
    def initialize(name,slogan,student_capacity)
        @name = name
        @slogan = slogan
        @student_capacity = student_capacity
        @teachers = []
        @students = []
        @grades = Hash.new{|hash,key|hash[key] = []}
    end
    def name
        @name
    end

    def slogan
        @slogan
    end

    def teachers
        @teachers
    end

    def students
        @students

    end

    def hire(str)
        teachers.push(str)
    end

    def enroll(str)
        #debugger
        if @student_capacity > @students.length
            students.push(str)
            true
        else
            false
        end  
    end

    def enrolled?(str)
        students.include?(str)
    end

    def student_to_teacher_ratio
            @students.length / @teachers.length 
    end

    def add_grade(str,num)
        if self.enrolled?(str)
            @grades[str] << num
            return true
        end
        false
    end

    def num_grades(str)
        @grades[str].length
    end

    def average_grade(str)
        if self.enrolled?(str) 
            if self.num_grades(str) > 0
                @grades[str].sum / @grades[str].length
            else
                return nil
            end    
        else
            return nil
        end  
    end
end