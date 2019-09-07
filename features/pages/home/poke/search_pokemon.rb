module PageObjects
    module Search
        class Search
            include Capybara::DSL
            def select_surprise
               find('#shuffle', visible: :all).click  
            end
            def search_pokemon 
                find_by_id("searchInput")
                #expect(page).to have_selector(:xpath, '//*[@id="searchInput"]')  
                #find('//*[@id="searchInput"]', visible: :all).click.set "001"
                #fill_in "#searchInput", with: "001"
                #find('#search').click

            end
            def check_pokemon   
                puts "Find the Pokemon you are looking for!"
            end
        end           
    end
end