class Instructor
    attr_reader :name

    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def get_tests
        BoatingTest.all.select{|test| test.instructor == self}
    end

    def all_students
        get_tests.map{|test| test.student.name}.uniq
    end
    
    def passed_students
        get_tests.select{|test| test.test_status == "passed"}.map{|test| test.student}
    end

    def pass_student(student,test_name)
        student_tests = BoatingTest.all.select{|test| test.student == student}
        with_name = student_tests.select{|test| test.boating_test_name == test_name}
        if with_name == []
            Boatingtest.new(student,test_name,"passed",self)
        else
            with_name.each{|test| test.test_status = "passed"}
        end
    end

    def fail_student(student,test_name)
        student_tests = BoatingTest.all.select{|test| test.student == student}
        with_name = student_tests.select{|test| test.boating_test_name == test_name}
        if with_name == []
            Boatingtest.new(student,test_name,"failed",self)
        else
            with_name.each{|test| test.test_status = "failed"}
        end
    end




end