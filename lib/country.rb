class Country
    attr_accessor :name, :region, :population, :capital, :flag_link#, :borders, :languages
    @@all = []

    def initialize(hash)
        @name = hash[:name][0]
        @region = hash[:region]
        @population = hash[:population]
        @capital = hash[:capital]
        @flag_link = hash[:flag_link]
        # @borders = hash[:borders]
        # @languages = hash[:languages]
        self.class.all << self unless self.class.all.include?(self)
    end

    def self.all
        @@all
    end

    def self.countries_viewed
        self.all.each { |country| puts "    -#{country.name}" }
        # take out puts in this class and puts instead in the CLI class
    end

    def self.clear_countries
        self.all.clear
    end

    def self.get_country_from_array(countries_array)
        countries_array.each_with_index { |country, index| puts "   #{index += 1}. #{country[0]}" }
        # puts out each country in countries array
    end
end

# how can we create a find_or_create_by_calling_code method so that we don't have
# to keep sending requests if a user searches for the same countries?
