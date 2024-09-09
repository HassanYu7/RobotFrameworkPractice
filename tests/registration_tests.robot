*** Settings ***
Resource    ../resources/appium_config.robot
Resource    ../pages/registration_page.robot
Library     AppiumLibrary




*** Test Cases ***

Valid Sign Up Test
    [Documentation]    This test validates that a user can log in with valid credentials.
    Open Appium Application
    Navigate to Login Page
    Navigate to Sign UP Layout
    Sign Up With Credentials    Hassan1@gmail.com    123456789    123456789
    Should See Successfull Message

Email Invalid
    [Documentation]    This test validates that login fails with invalid credentials.
    Open Appium Application
    Navigate to Login Page
    Navigate to Sign UP Layout
    Sign Up With Credentials    Hassan2  323232    323232
    Should See Email Error Message

Password Invalid
    [Documentation]    This test validates that login fails with invalid credentials.
    Open Appium Application
    Navigate to Login Page
    Navigate to Sign UP Layout
    Sign Up With Credentials    Hassan3@gmail.com   3232    3232
    Should See Password Error Message


Confirm Password Invalid
    [Documentation]    This test validates that login fails with invalid credentials.
    Open Appium Application
    Navigate to Login Page
    Navigate to Sign UP Layout
    Sign Up With Credentials    Hassan4@gmail.com   32532    13232
    Should See Password Error Message
    Should See Confirm Password Error Message


