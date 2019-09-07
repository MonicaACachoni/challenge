Feature: Testing APiPoke
  Learning API with PokeAPI

Feature: Testing the PokeAPI
    Users should be able to submit GET to a web service

@getService @services
Scenario: Search poke
    Given a call into poke Api 
    When the response code is 200
    Then the evolve chain should be printed

Scenario Outline: What is the url ?
    Given a call into berry_flavor
    When i send the "<name>"
    Then the answer should be "<url>"

Examples:
    | name   | url                                       |
    | spicy  | https://pokeapi.co/api/v2/berry-flavor/1/ |
    | dry    | https://pokeapi.co/api/v2/berry-flavor/2/ |
    | sweet  | https://pokeapi.co/api/v2/berry-flavor/3/ |



