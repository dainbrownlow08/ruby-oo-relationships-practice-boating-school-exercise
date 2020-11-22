require 'pry'
require_relative "./Boating_Test.rb"
require_relative "./Instructor.rb"
require_relative "./Student.rb"
#code tests below

spongebob = Student.new("Spongebob")
patrick= Student.new("Patrick")

puff= Instructor.new("Ms.Puff")
krabs= Instructor.new("Mr.Krabs")

no_crashing = spongebob.add_boating_test("Don't Crash 101", "failed", puff)
power_steering_failure = patrick.add_boating_test("Power Steering 202", "failed", puff)
power_steering_pass = spongebob.add_boating_test("Power Steering 201", "passed", puff)









binding.pry
0