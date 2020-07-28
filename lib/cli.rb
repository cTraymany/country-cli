class CLI

    def self.run
        puts "Welcome! Please enter the calling code for the coutry you would like to learn about."
        calling_code = gets.chomp
        self.get_country(calling_code)
    end

    def self.get_country(calling_code)
        country_data = API.get_country_by_calling_code(calling_code)
        Country.new(country_data)
        # binding.pry
        puts "You chose #{country_data[:name]}!"

    end




end