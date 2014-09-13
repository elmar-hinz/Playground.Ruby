
module Coach
    class SimpleTest
        attr_accessor :question, :expectation, :answer

        def initialize
            @result = false
        end

        def result
            @answer == @expectation
        end
    end
end
