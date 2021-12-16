class SearchsController < ApplicationController
    def new
        @search = Search.new
    end
    
    def create
        @search = Search.create(search_params)
        redict_to @search
    end
    
    def show
        @search = Search.find(params[:id])
    end
    
    private
    
    def search_params
        params.require(:search).permit(:keywords, :min_price, :max_price)
    end    
end
