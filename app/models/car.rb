class Car < ApplicationRecord
    belongs_to :supplier
    def short_info
        "#{brand} - #{model}"
    end
end
