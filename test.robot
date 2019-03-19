*** Setting ***
Library    SeleniumLibrary
Library    RequestsLibrary

*** Test Case ***
Test Browser
    Open Browser     http://www.google.co.th    chrome

    Create Session      google  http://google.com
    ${resp}=    Get Request     google  /
    Should Be Equal As Strings  ${resp.status_code}     200
