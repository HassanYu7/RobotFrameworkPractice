*** Settings ***
Resource    ../resources/appium_config.robot
Resource    ../pages/form_page.robot
Library     AppiumLibrary
Suite Setup   Open Appium Application
Suite Teardown   Close Application


*** Test Cases ***

Fill Form
    [Documentation]    This test validates that a user can log in with valid credentials.
    Navigate to Form Page
    Enter Input Field    hassan
    Turn On Switch
    Select A From DropDown
    Click Active Button
    Element Text Should Be      ${ACTIVE_BUTTON_MESSAGE}  This button is active






