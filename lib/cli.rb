class CLI

    def self.run
        puts "Welcome! Please enter the calling code for the coutry you would like to learn about."
        calling_code = gets.chomp
        self.get_country(calling_code)
    end

    def self.get_country(calling_code)
        countries = API.extract_country(calling_code)
        puts "This country code returns:"
        countries.each_with_index { |country, index| puts "#{index += 1}. #{country}" }
        
        # puts "Please list the country you would like to see."
        # country = gets.chomp.downcase
        binding.pry

        # Country.new(countries_by_code)
        # puts "You chose #{countries_by_code}!"

    end

    def list_country_facts

    end



end