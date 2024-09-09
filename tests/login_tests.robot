*** Settings ***
Resource    ../resources/appium_config.robot
Resource    ../pages/login_page.robot
Library     AppiumLibrary

*** Test Cases ***
Valid Login Test
    [Documentation]    This test validates that a user can log in with valid credentials.
    Open Appium Application
    Navigate to Login Page
    Login With Credentials    hassan@gmail.com    12345678
    Should See Successfull Message

Email Invalid
    [Documentation]    This test validates that login fails with invalid credentials.
    Open Appium Application
    Navigate to Login Page
    Login With Credentials    sadasd    a12345678
    Should See Email Error Message

Password Invalid
    [Documentation]    This test validates that login fails with invalid credentials.
    Open Appium Application
    Navigate to Login Page
    Login With Credentials    sadasd@gmail.com    678
    Should See Password Error Message




