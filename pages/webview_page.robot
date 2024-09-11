*** Settings ***
Library     AppiumLibrary
Library               Process
Resource    ../locators/webview_page_locators.robot


*** Keywords ***

Navigate to WebView Page
    Wait Until Element Is Visible    ${WEBVIEW_PAGE}
    Click Element    ${WEBVIEW_PAGE}

# TODO: Write function that scrolling down to specific element [Note: Scroll Down, Scroll Element Into View fucntion don't work.]

Scroll to Specific Item
      Wait Until Element Is Visible       ${WATCH_TALKS_TEXT_LOCATOR}     15s
      Scroll Down                 ${WATCH_TALKS_TEXT_LOCATOR}


