class CLI

    def self.run
        puts ""
        puts "Welcome! Please enter the calling code for the coutry you would like to learn about."
        puts "To exit, enter 'exit' at any time."
        self.get_country_by_calling_code
    end
    
    def self.get_country_by_calling_code
        calling_code = gets.chomp

        unless calling_code == 'exit'
            if API.valid_country?(calling_code.to_i)
                countries = API.extract_country(calling_code.to_i)
                puts ""
                puts "This country code returns:"
                Country.get_country_from_array(countries)
                self.get_country(calling_code)
            else
                puts ""
                puts "Your input does not belong to a country!"
                puts ""
                puts "Please enter a valid country code."
                self.get_country_by_calling_code
            end
        end
    end

    ########## ABOVE CODE EXITS AS EXPECTED!

    ########## BELOW CODE EXITS BUT RETURNS ERROR

    def self.get_country(calling_code)
        countries_data = API.get_country_by_calling_code(calling_code.to_i) # returns an array of nested country hashes

        puts ""
        puts "Please enter the number you would like to see."
        
        input = gets.chomp

        unless input == 'exit'
            input = input.to_i
            if (1..countries_data.length).include?(input)
                new_country = Country.new(countries_data[input.to_i - 1])
            else
                puts ""
                puts "Your entry is invalid!"
                self.get_country(calling_code)
            end
            
            puts ""
            puts ""
            puts "You chose #{new_country.name}!"
            puts ""
            puts "#{new_country.name} has a population of #{new_country.population}."
            puts ""
            puts "It is located in the region of #{new_country.region}, and its capital is #{new_country.capital}."
            puts ""
            puts "View a photo of #{new_country.name}'s country flag at #{new_country.flag_link}."
            puts ""
            
            self.get_another_country
        end    
        
        def self.get_another_country
            puts "Would you like to search for another country?"
            puts "Y / N"
            puts ""
        
        
            # unfinished code
            # input = gets.chomp.upcase
            # unless input == 'exit'
            #     if input == 'Y'
        
            #     elsif input == "N"
        
            #     else
                    
            #     end
            # end

        end
        
    end
    
    
    
    
    


    #     countries_data = API.get_country_by_calling_code(calling_code)
    #     # returns an array of nested country hashes
        
        
    #     Country.new(countries_data[input.to_i - 1])
    #     # passes argument into Country, creating a new instance
    #     # this argument returns a hash of information from the countries_data array about the selected country
        
        
        
        
        

        
    

    


end