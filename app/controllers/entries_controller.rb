class EntriesController < ApplicationController
    def search_query
        "%#{params.dig("/entries","search")}%"
    end
    
    def index
        @search_params = params.dig("/entries","search")
        @entries = if @search_params.present?
            Entry.search(search_query)
        else
            Entry.all.order(date: :desc)
        end
    end
    def show
        @entry = Entry.find(params["id"])
    end
    def new
    end
    def create        
        entry_params = params["entry"].permit("title", "contents")
        entry = Entry.create(entry_params)
        redirect_to(entry_path(entry))
    end
    def edit
        @entry = Entry.find(params["id"])
    end
    def update
      entry_params = params["entry"].permit("title", "contents")
      entry = Entry.find(params["id"])
      entry.update(entry_params)
      redirect_to(entry_path(entry))
    end
    def destroy
        entry = Entry.find(params["id"])
        entry.delete
        redirect_to(entries_path)
    end
end
