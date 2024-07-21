*** Setting ***
Library    SeleniumLibrary



*** Variables ***
${Web Thingsboard}    https://demo.thingsboard.io/login
${Chrome}    Chrome



*** Keywords ***
Open Google
    Open Browser    ${Web Thingsboard}    ${Chrome}