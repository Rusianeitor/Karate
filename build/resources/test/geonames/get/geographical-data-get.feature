Feature: Get geographical data of a country
  #Especificar título del feature sobre lo que haré

  Background:
    * url api.baseUrl
    #* path geoPath = '/timezoneJSON'
    * path endpoint.geoPath
    * params {username: #(user.name), formatted: true, lat: #(latitude), lng: #(longitude)}
    * def responseSuccessful = read("successful-response-get.json")
    * def responseFailedParameter = read("fail-parsing-parameter-get.json")
    * def responseDataColombia = read("response-data-colombia-get.json")

  Scenario Outline: Get geographical data of a country
    When method get
    Then status 200
    And match $ == responseSuccessful

    Examples:
    |latitude|longitude|
    |4       |-72      |
    |8       |-8       |
    |4.2     |-72.5    |
    |0       |-72      |
    |8       |-8f      |
    |-75     |80       |