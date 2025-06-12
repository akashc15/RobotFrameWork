*** Settings ***
Library     RequestsLibrary
Library    String

*** Variables ***
${BASE_URL}     https://reqres.in/
${Servicename}     api/users/2



*** Test Cases ***
Get request example
    Create Session    baseURI    ${BASE_URL}    verify=True

    &{headers}=    Create Dictionary    x-api-key=reqres-free-v1

    ${response}=    Delete On Session    baseURI    ${SERVICENAME}    headers=${headers}

    Log    ${response}
    Log    ${response.status_code}
    Should Be Equal As Numbers    ${response.status_code}    204