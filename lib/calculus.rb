require "calculus/version"

module Calculus
    class Calc
        def self.euler deltaX, xInit, yInit, xToFind
            x = xInit
            y = yInit
            iterator = 0
            iterations = ((xToFind - xInit)/ deltaX).round
            
            while iterator < iterations do
                y += (deltaX * yield(x,y))
                x += deltaX
                iterator += 1
            end
            
            return (y * 1000.0).round/1000.0
        end
        
        def self.simpson deltaX, xInit, xEnd
        
            iterations = ((xEnd - xInit)/deltaX).round
            if iterations % 2 != 0 then iterations += 1 end
            
            area = 0
            area =+ yield(xInit)
            
            (1..iterations-1).each do |x|
                y = yield(deltaX * x)
                
                if x.odd? 
                    y *= 4
                else
                    y *= 2 
                end
                
                area += y
            end
            
            area += yield(xEnd)
        
            return area * deltaX / 3
        end

    end
end
