Feature: Mapa geral
  In order to See Location of Members
  As a User
  I want see a Map

  Scenario: Visualize map
    Given I am on the home page
    When I click in "Quem Somos?"
    Then I should see "Mapa de Usuarios"
