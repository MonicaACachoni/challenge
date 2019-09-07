class ApiPoke 
  def search_evolve
    HTTParty.get('https://pokeapi.co/api/v2/evolution-chain/')
  end
  def search_berry_flavor
    HTTParty.get('https://pokeapi.co/api/v2/berry-flavor/')
  end
end
