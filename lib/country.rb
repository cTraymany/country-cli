class Country
    attr_accessor :name, :region, :population, :capital, :flag_link#, :borders, :languages
    @@all = []

    def initialize(hash)
        @name = hash["name"]
        @region = hash["region"]
        @population = hash["population"]
        @capital = hash["capital"]
        @flag_link = hash["flag_link"]
        # @borders = hash["borders"]
        # @languages = hash["languages"]
        self.class.all << self unless self.class.all.include?(self)
    end

    def self.all
        @@all
    end

    def get_country_data
        country_data = API.get_country_by_calling_code(calling_code)

    end


end