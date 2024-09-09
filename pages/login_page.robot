*** Settings ***
Resource    ../locators/login_page_locators.robot
Library     AppiumLibrary

*** Keywords ***
Navigate to Login Page
    [Documentation]    Navigate to the Login Page.
    Wait Until Element Is Visible    ${LOGIN_PAGE}
    Click Element    ${LOGIN_PAGE}

Login With Credentials
    [Arguments]    ${email}    ${password}
    [Documentation]    Login using provided username and password.
    Wait Until Element Is Visible    ${EMAIL_FIELD}
    Input Text    ${EMAIL_FIELD}    ${email}
    Wait Until Element Is Visible    ${PASSWORD_FIELD}
    Input Text    ${PASSWORD_FIELD}    ${password}
    Wait Until Element Is Visible    ${LOGIN_BUTTON}
    Click Element    ${LOGIN_BUTTON}

Should See Successfull Message
    [Documentation]    Check if the home screen is visible after a successful login.
    Wait Until Element Is Visible    ${MESSAGE}
    Element Text Should Be  ${MESSAGE}    You are logged in!

Should See Email Error Message
    [Documentation]    Check if an error message is visible after a failed login attempt.
    Wait Until Element Is Visible    ${EMAIL_INVALID}
    Element Text Should Be    ${EMAIL_INVALID}  Please enter a valid email address

Should See Password Error Message
    [Documentation]    Check if an error message is visible after a failed login attempt.
        Wait Until Element Is Visible    ${PASSWORD_INVALID}

    Element Text Should Be    ${PASSWORD_INVALID}  Please enter at least 8 characters




