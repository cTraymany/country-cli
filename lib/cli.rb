class CLI

    def run
        # puts "welcome message and app intro here"
    end

    def get_photo
        binding.pry
        API.get_photo
    end

    # def get_photo_by_date(date)
    #   puts please enter a date (mm/dd/yyyy)
    #   API.get_photo_by_date(date)
    # end

end