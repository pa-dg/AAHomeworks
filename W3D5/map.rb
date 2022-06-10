class Map
    def initialize(key, val)
        @my_map = []
    end

    def set(key, value)
        @my_map.each_with_index do |subarr, i|
            subarr.each_with_index do |ele, j|
                if ele[j] == key
                    @my_map[j][i] = value
                else
                    @my_map.push([key, value])
            end
        end
    end
    
    def get(key)
        @my_map.each { |subarr| return subarr.last if subarr[0] == key }

        return nil
    end
    
    def delete(key)
    end
    
    def show
    end

    def set
    end
    
end