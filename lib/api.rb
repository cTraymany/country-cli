# http request - GET https://api.nasa.gov/planetary/apod

class API
    @@url = "https://api.nasa.gov/planetary/apod?api_key=DEMO_KEY"
    #  demo key only returns today's photo. sign up for full api key

    def self.url
        @@url
    end

    def self.get_photo
    end

    def self.get_photo_by_date(date)
    end


    
end