*** Settings ***
Library     RequestsLibrary
Library    String

*** Variables ***
${BASE_URL}     https://reqres.in/
${ENDPOINT}     api/users
${BODY}         {"name": "morpheus","job": "leader"}
&{HEADERS}       Content-Type=application/json
...              x-api-key=reqres-free-v1


*** Test Cases ***
Get request example
    Create Session      reqres     ${BASE_URL}
    ${response}=        POST On Session      reqres      ${ENDPOINT}     data=${BODY}        headers=${HEADERS}
    Log     ${response.status_code}
    Log    ${response.content}
    Should Be Equal As Numbers    ${response.status_code}    201