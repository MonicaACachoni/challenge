Given("a call into poke Api") do
    @response = ApiPoke.new.search_evolve
end

When("the response code is {int}") do |status|
    expect(@response.code).to eq status
end
  
Then("the evolve chain should be printed") do
    @response['results'].each do |result|
        puts ("Evolve chain: "+result['url'])
    end
end

Given("a call into berry_flavor") do
    @response_2 = ApiPoke.new.search_berry_flavor
  end
  
  When("i send the {string}") do |string|
    @response_2['results'].each do |name|
        puts (name['name'])
        if name['name'] == string
            @url = name['url']
            break
        end
    end
  end

  Then("the answer should be {string}") do |string|
    expect(@url).to eq string
  end