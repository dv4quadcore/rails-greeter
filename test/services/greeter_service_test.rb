require 'test_helper'

class GreeterServiceTest < ActiveSupport::TestCase
  test "it should exist" do
    greeter = GreeterService.new
    assert greeter != nil
  end

  test "it should greet" do
    greeting = GreeterService.new.greet
    assert greeting == "Hello world!"
  end

  test "it depends on visitor existence" do
    Visitor.create :name => "Tasty"
    greeter = GreeterService.new
    greeting = greeter.greet
    assert greeting == "Hello Tasty!"
    greeting = greeter.greet_new "Juicy"
    assert greeting == "Nice to meet you, Juicy!"
    greeting = greeter.greet
    assert greeting == "Hello Juicy!"
  end

end
