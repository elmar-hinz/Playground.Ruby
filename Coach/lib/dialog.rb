class Dialog
    def run
        loop do
            puts "Question:"
            input = gets
            break if input.nil?
            print input
        end
    end
end
