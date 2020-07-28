class API

    def self.get_country_by_calling_code(calling_code)
        url = "https://restcountries.eu/rest/v2/callingcode/#{calling_code}"
        response = HTTParty.get(url)

        country_data = {}

        response.each do |hash|
            country_data[:name] = hash["name"]
            country_data[:region] = hash["region"],
            country_data[:population] = hash["population"],
            country_data[:capital] = hash["capital"],
            # country_data[:borders] = hash["borders"],
            # country_data[:languages] = hash["languages"],
            country_data[:flag_link] = hash["flag"]
            binding.pry


        end
        country_data
    end


    
end