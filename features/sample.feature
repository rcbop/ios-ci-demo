Feature: Sample Feature

Scenario: Sample Scenario
  Given the app has launched
  And I wait to see "Brasil"
  And take picture
  When I touch the "Próxima Tela" button
  And take picture
  And I wait to see "SUCESSO!"
  And I touch the "Voltar" button
  Then I wait to see "Brasil"
