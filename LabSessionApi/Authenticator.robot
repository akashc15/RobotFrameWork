*** Settings ***
Library     RequestsLibrary
Library     JsonLibrary

*** Variables ***
${base_url}=     https://videogamedb.uk:443
${Servicename}=     /api/authenticate
${username}=        admin
${password}=        admin

*** Test Cases ***
Authenticate
        Create Session    base_url      ${base_url}
        ${body}=        Create Dictionary       username=${username}        password=${password}
        ${header}=      Create Dictionary       Content-type=application/json
        ${response}=    PUT On Session      base_url        ${Servicename}      json=${body}        headers=${header}
        ${json}=             To JSON    ${response.content}
        ${token}=            Get Value From Json    ${json}    token
        Log                  ${token}