class API

    def self.valid_country?(calling_code)
        url = "https://restcountries.eu/rest/v2/callingcode/#{calling_code}"
        response = HTTParty.get(url, follow_redirects: true) # sends request for data to url
        response.ok? # returns a boolean
        # refactor so the below method doesn't sent request again
    end

    def self.get_country_by_calling_code(calling_code)
        url = "https://restcountries.eu/rest/v2/callingcode/#{calling_code}"
        response = HTTParty.get(url)


        test = response.map do |hash|
            country_data = {}
            country_data[:name] = hash["name"],
            country_data[:region] = hash["region"],
            country_data[:population] = hash["population"],
            country_data[:capital] = hash["capital"],
            # country_data[:borders] = hash["borders"],
            # country_data[:languages] = hash["languages"],
            country_data[:flag_link] = hash["flag"]
            country_data
        end
    end

    def self.extract_country(calling_code)
        countries_by_code = API.get_country_by_calling_code(calling_code)
        countries_by_code.map { |country| country[:name] }
        # refactor so I could use the above method intead; do I need this method?
    end
end

#  test