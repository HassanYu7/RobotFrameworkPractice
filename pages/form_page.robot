*** Settings ***
Resource    ../locators/form_page_locators.robot
Library     AppiumLibrary


*** Keywords ***

Navigate to Form Page
    [Documentation]    Navigate to the Login Page.
    Wait Until Element Is Visible    ${FORM_PAGE}
    Click Element    ${FORM_PAGE}

Enter Input Field
     [Arguments]       ${input}
     Wait Until Element Is Visible    ${INPUT_FIELD}
     Input Text    ${INPUT_FIELD}    ${input}

Turn On Switch
     Wait Until Element Is Visible    ${SWITCH_LOCATOR}
     Click Element    ${SWITCH_LOCATOR}

Select A From DropDown
    [Documentation]    Check if the home screen is visible after a successful login.
    Wait Until Element Is Visible    ${DROPDOWN_LOCATOR}
    Click Element    ${DROPDOWN_LOCATOR}
    Wait Until Element Is Visible    ${SELECT_DROPDOWN}
    Click Element    ${SELECT_DROPDOWN}

Click Active Button
    Wait Until Element Is Visible    ${ACTIVE_BUTTON}
    Click Element    ${ACTIVE_BUTTON}