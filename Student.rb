class Student
    attr_reader :name

    @@all=[]
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def self.find_student(them)
        Student.all.select{|student| student.name == them}
    end

    def add_boating_test(name,test_status,instructor)
        BoatingTest.new(self,name,test_status,instructor)
    end
     
    def all_student_tests
        BoatingTest.all.select{|test| test.student == self}
    end
    
    def all_instructors
        all_student_tests.map{|test| test.instructor}
    end

    def grade_percentage
        passed = all_student_tests.select{|test| test.test_status == 'passed'}
        passed.length.to_f / all_student_tests.length * 100
    end
end