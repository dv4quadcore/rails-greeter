class GreeterService
    def greet
        @visitor = Visitor.first
        if @visitor != nil
          return "Hello " + @visitor.name + "!"
        else
          return "Hello world!"
        end
    end
    def greet_new(name)
        @visitor = Visitor.first
        @visitor.name = name
        @visitor.save
        "Nice to meet you, " + name + "!"
    end
end
