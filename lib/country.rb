class Country
    attr_accessor :name, :region, :population, :capital, :flag_link#, :borders, :languages
    @@all = []

    def initialize(hash)
        @name = hash[:name]
        @region = hash[:region]
        @population = hash[:population]
        @capital = hash[:capital]
        @flag_link = hash[:flag_link]
        # @borders = hash[:borders]
        # @languages = hash[:languages]
        self.class.all << self unless self.class.all.include?(self)
        # binding.pry
    end

    def self.all
        @@all
    end

    def self.countries_viewed
        self.all.each { |country| puts country.name }
    end

    def self.get_country_from_array(countries_array)
        countries_array.each_with_index { |country, index| puts "#{index += 1}. #{country}" }
        # puts out each country in countries array
    end

    # def 

    # end

end

