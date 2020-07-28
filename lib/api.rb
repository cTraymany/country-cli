class API

    def self.get_country(calling_code)
        # binding.pry
        url = "https://restcountries.eu/rest/v2/callingcode/#{calling_code}"
        response = HTTParty.get(url)
    end


    
end