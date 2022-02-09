class Dev < ActiveRecord::Base
    has_many :freebies
    has_many :companies, through: :freebies

    def recieved_one?(item_name)
        self.freebies.pluck(:item_name).map{ |item| item == item_name} ? true : false
    end 

    #got this one working in the terminal. It changes the dev_id to the dev's id, but the change doesn't persist to the table. I'm wordering if there has to be .save somewhere or if there's a way to alter table data... ok nevermind just got that to work!
    def give_away(dev, freebie)
        if freebie.dev_id == self.id 
             freebie.dev_id = dev.id
             freebie.save
        else
            nil
        end
    end
end
