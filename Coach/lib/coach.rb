require_relative "dialog"

class Coach
    def run
        begin
            Dialog.new.run
        rescue SignalException => e
        end
    end
end

