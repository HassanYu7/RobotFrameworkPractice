*** Settings ***
Resource    ../resources/appium_config.robot
Resource    ../pages/webview_page.robot
Library     AppiumLibrary
Suite Setup   Open Appium Application
Suite Teardown   Close Application


*** Test Cases ***


Scroll to E2E Text
    Navigate to WebView Page
    Scroll to Specific Item





