class API

    def self.get_country_by_calling_code(calling_code)
        url = "https://restcountries.eu/rest/v2/callingcode/#{calling_code}"
        response = HTTParty.get(url)

        country_data = {}

        response.map do |hash|
            country_data = {
                name: hash["name"],
                region: hash["region"],
                population: hash["population"],
                capital: hash["capital"],
                # borders: hash["borders"],
                # languages: hash["languages"],
                flag_link: hash["flag"],
            }
        end
        country_data
    end


    
end