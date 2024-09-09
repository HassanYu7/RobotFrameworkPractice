*** Settings ***
Library    AppiumLibrary


*** Variables ***
${APPIUM_SERVER}          http://localhost:4723
${AUTOMATION_NAME}        UiAutomator2
${PLATFORM_NAME}          Android
${PLATFORM_VERSION}       8.1
${DEVICE_NAME}            emulator-5554
${APP_PACKAGE}            com.wdiodemoapp
${APP_ACTIVITY}           com.wdiodemoapp.MainActivity

*** Keywords ***
Open Appium Application
    [Arguments]    ${server}=${APPIUM_SERVER}    ${automation}=${AUTOMATION_NAME}    ${platform}=${PLATFORM_NAME}    ${version}=${PLATFORM_VERSION}    ${device}=${DEVICE_NAME}    ${package}=${APP_PACKAGE}    ${activity}=${APP_ACTIVITY}
    Open Application
    ...    ${server}
    ...    automationName=${automation}
    ...    platformName=${platform}
    ...    platformVersion=${version}
    ...    deviceName=${device}
    ...    appPackage=${package}
    ...    appActivity=${activity}
