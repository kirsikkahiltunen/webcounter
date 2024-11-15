*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser

*** Test Cases ***
When number 10 is entered in the text field, the counter is 10
    Go To  ${HOME_URL}
    Input Text  amount  10
    Click Button  Aseta
    Page Should Contain  nappia painettu 10 kertaa

When nothing is entered in the text field, the counter does not change
    Go To  ${HOME_URL}
    Click Button  Aseta
    Page Should Contain  nappia painettu 10 kertaa