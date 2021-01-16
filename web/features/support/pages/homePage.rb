class HomePage
    attr_reader :searchButton, :searchText, :optionButton, :preliminarSearchResults
    
    include Capybara::DSL

    def initialize
        @searchButton =  "#search-button"
        @searchText = "#search-term"
        @optionButton = ".d-label"
        @preliminarSearchResults = ".results"
        @results = ".search-results"
      
    end

    def accessWebPage(page_title)
        visit page_title
    end

    def fillSearchFields(text)
        find(@searchButton).click
        find(@searchText).set text
       
    end

    def search       
        find(@optionButton).click       
    end

    def containsPreliminarResults?
        return find(@preliminarSearchResults)
    end

    def containsResults?
        return page.has_css?(@results)
    end
    

end