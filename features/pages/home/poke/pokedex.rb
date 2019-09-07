Before do
    @site = PageObjects::Home::Acess.new
    @search = PageObjects::Search::Search.new
end

Given("the user is in the Web Page") do
    @site.web_page
  end
  
  When("look for search button") do
    @search.search_pokemon
  end
  
  Then("search your Pokemon") do
   @search.check_pokemon 
  end