class CLI

    def self.run
        puts "Welcome! Please enter the calling code for the coutry you would like to learn about."
        calling_code = gets.chomp
        self.get_country(calling_code)
    end
    
    def self.get_country(calling_code)
        countries = API.extract_country(calling_code)
        countries_data = API.get_country_by_calling_code(calling_code) # returns an array of nested country hashes
        
        puts "This country code returns:"
        Country.get_country_from_array(countries)
        
        puts "Please enter the country number you would like to see."
        country_choice = gets.chomp
        
        new_country = Country.new(countries_data[country_choice.to_i - 1])
        
        puts "You chose #{new_country.name}!"
        puts "#{new_country.name} has a population of #{new_country.population}."
        puts "It is located in the region of #{new_country.region[0]}, and its capital is #{new_country.capital}."
        puts "View a photo of #{new_country.name}'s country flag at #{new_country.flag_link}."



        # binding.pry
    end






    #     countries_data = API.get_country_by_calling_code(calling_code)
    #     # returns an array of nested country hashes
        
        
    #     Country.new(countries_data[input.to_i - 1])
    #     # passes argument into Country, creating a new instance
    #     # this argument returns a hash of information from the countries_data array about the selected country
        
        
        
        
        

        
    

    


end