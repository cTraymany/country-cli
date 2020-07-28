class API

    def self.get_country_by_calling_code(calling_code)
        url = "https://restcountries.eu/rest/v2/callingcode/#{calling_code}"
        response = HTTParty.get(url)

        countries_by_code = []

        response.each do |hash|
            country_data = {}
            country_data[:name] = hash["name"]
            country_data[:region] = hash["region"],
            country_data[:population] = hash["population"],
            country_data[:capital] = hash["capital"],
            # country_data[:borders] = hash["borders"],
            # country_data[:languages] = hash["languages"],
            country_data[:flag_link] = hash["flag"]
            countries_by_code << country_data
        end
        countries_by_code
    end

    def self.extract_country(calling_code)
        countries = []
        countries_by_code = API.get_country_by_calling_code(calling_code)
        countries_by_code.each { |country| countries << country[:name] }
        countries
    end
end