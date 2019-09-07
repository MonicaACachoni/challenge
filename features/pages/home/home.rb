module PageObjects
    module Home
      class Acess
        include Capybara::DSL
        def web_page
          window = Capybara.current_session.driver.browser.manage.window
          window.resize_to(1260, 800) # width, height
          page.driver.browser.manage.window.maximize
          visit 'https://www.pokemon.com/us/pokedex/'
        end
      end 
    end
end