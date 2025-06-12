*** Settings ***
Library     RequestsLibrary
Library    String

*** Variables ***
${BASE_URL}     https://videogamedb.uk:443
${ENDPOINT}     /api/videogame

*** Test Cases ***
Get request example
    Create Session      jsonlaceholder     ${BASE_URL}
    ${response}=        GET On Session      jsonlaceholder      ${ENDPOINT}
    Log     ${response.status_code}
    Log    ${response.content}
    Should Be Equal As Numbers    ${response.status_code}    200