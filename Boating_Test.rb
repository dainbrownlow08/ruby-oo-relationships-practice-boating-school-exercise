class BoatingTest
    attr_accessor :test_status
    attr_reader :student, :boating_test_name, :instructor

    @@all = []
    def initialize(student,boating_test_name,test_status,instructor)
        @student = student
        @boating_test_name = boating_test_name
        @test_status = test_status
        @instructor = instructor
        @@all << self
    end
    
    def self.all
        @@all
    end


end