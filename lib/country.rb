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
        # refactor so there's no puts in this class
    end

    def self.clear_countries
        self.all.clear
    end

    def self.get_country_from_array(countries_array)
        test = countries_array.map.with_index do |country, index|
            [index += 1, country[0]]
        end
        # binding.pry
        # countries_array.each_with_index { |country, index| puts "   #{index += 1}. #{country[0]}" }
        # puts out each country in countries array
        # refactor so there's no puts in this class
    end
end

# add a find_or_create_by_name method so we don't send multiple requests for the
# same country

