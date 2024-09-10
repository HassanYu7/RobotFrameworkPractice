*** Settings ***
Resource    ../resources/appium_config.robot
Resource    ../pages/swipe_page.robot
Library     AppiumLibrary
Suite Setup  Open Appium Application
Suite Teardown  Close Application


*** Test Cases ***


Swap to Great Community Item
    Navigate to Swipe Page
    Swap to Specific Item    ${GREAT_COMMUNITY_ITEM}
    Wait Until Element Is Visible    ${GREAT_COMMUNITY_TEXT}
    Element Text Should Be    ${GREAT_COMMUNITY_TEXT}    GREAT COMMUNITY



Swap to JS FOUNDATION Community Item
    Navigate to Swipe Page
    Swap to Specific Item    ${JS_FOUNDATION_ITEM}
    Wait Until Element Is Visible    ${JS_FOUNDATION_TEXT}
    Element Text Should Be    ${JS_FOUNDATION_TEXT}    JS.FOUNDATION



Swap to SUPPORT VIDEOS Community Item
    Navigate to Swipe Page
    Swap to Specific Item    ${SUPPORT_VIDEOS_ITEM}
    Wait Until Element Is Visible    ${SUPPORT_VIDEOS_TEXT}
    Element Text Should Be    ${SUPPORT_VIDEOS_TEXT}    SUPPORT VIDEOS


Swap to Extendable Item
    Navigate to Swipe Page
    Swap to Specific Item    ${EXTENDABLE_ITEM}
    Wait Until Element Is Visible    ${EXTENDABLE_TEXT}
    Element Text Should Be    ${EXTENDABLE_TEXT}    EXTENDABLE
