*** Settings ***
Library     RequestsLibrary

*** Variables ***

${BASE_URL}=        https://videogamedb.uk:443/
${END_POINT}=       api/videogame/1

${header}
*** Test Cases ***

Update

        CreateSession       user_url        ${BASE_URL}
        ${body}=      Create Dictionary   id=1    name= Akash     releaseDate=2005-10-01 23:59:59     reviewScore = 85        category=Shooter        rating=Teen
        ${header}=      Create Dictionary       Content-type=application/json
        ${response}=        PUT On Session        user_url        ${END_POINT}        json=${body}       headers=${header}
        Log     ${response.status_code}
        Log    ${response.content}



