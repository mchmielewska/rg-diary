class Entry < ApplicationRecord
    def self.search(search_verb)
        where("contents LIKE ? OR title LIKE ? OR author LIKE ?", search_verb, search_verb, search_verb)
    end
end
