class TempTask < ApplicationRecord
    belongs_to :author
    
    # def date_end(date_start)
    #     if Date.parse(date_start).wday == 1
    #         date_start += 4
    #     else
    #         date_start += 6
    # end
end
