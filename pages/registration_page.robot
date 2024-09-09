*** Settings ***
Resource    ../locators/registration_page_locators.robot
Library     AppiumLibrary

*** Keywords ***

Navigate to Login Page
    [Documentation]    Navigate to the Login Page.
    Wait Until Element Is Visible    ${LOGIN_PAGE}
    Click Element    ${LOGIN_PAGE}

Navigate to Sign UP Layout
    [Documentation]    Navigate to the Login Page.
    Wait Until Element Is Visible    ${SIGNUP_LAYOUT}
    Click Element    ${SIGNUP_LAYOUT}

Sign Up With Credentials
    [Arguments]    ${email}    ${password}     ${confirm_password}
    [Documentation]    Login using provided username and password.
    Wait Until Element Is Visible    ${EMAIL_FIELD}
    Input Text    ${EMAIL_FIELD}    ${email}
    Wait Until Element Is Visible    ${PASSWORD_FIELD}
    Input Text    ${PASSWORD_FIELD}    ${password}
    Wait Until Element Is Visible    ${CONFIRM_PASSWORD_FIELD}
    Input Text    ${CONFIRM_PASSWORD_FIELD}    ${confirm_password}
    Wait Until Element Is Visible    ${SIGNUP_BUTTON}
    Click Element    ${SIGNUP_BUTTON}

Should See Successfull Message
    [Documentation]    Check if the home screen is visible after a successful login.
    Wait Until Element Is Visible    ${MESSAGE_SUCCESS}
    Element Text Should Be  ${MESSAGE_SUCCESS}    You successfully signed up!

Should See Email Error Message
    [Documentation]    Check if an error message is visible after a failed login attempt.
    Wait Until Element Is Visible    ${MESSAGE_EMAIL_INVALID}
    Element Text Should Be    ${MESSAGE_EMAIL_INVALID}  Please enter a valid email address

Should See Password Error Message
    [Documentation]    Check if an error message is visible after a failed login attempt.
    Wait Until Element Is Visible    ${MESSAGE_PASSWORD_INVALID}
    Element Text Should Be    ${MESSAGE_PASSWORD_INVALID}  Please enter at least 8 characters


Should See Confirm Password Error Message
    [Documentation]    Check if an error message is visible after a failed login attempt.
    Wait Until Element Is Visible    ${MESSAGE_CONFIRM_PASSWORD_INVALID}
    Element Text Should Be    ${MESSAGE_CONFIRM_PASSWORD_INVALID}  Please enter the same password


