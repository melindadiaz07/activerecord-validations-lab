class ClickbaitValidator < ActiveModel::Validator

    def validate(record)
        if record.title && !record.title.include?("Won't Believe" || "Secret" || "Top [number]" || "Guess")
            record.errors[:title] << "Your title isn't clickbait!"
        end
    end
end