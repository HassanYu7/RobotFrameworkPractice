*** Settings ***
Library    AppiumLibrary


*** Variables ***
${ANDROID_AUTOMATION_NAME}    UIAutomator2
${ANDROID_PLATFORM_NAME}      Android
${ANDROID_PLATFORM_VERSION}   8.1
${DEVICE_NAME}                Android Emulator
${APP_PACKAGE}                com.wdiodemoapp
${APP_ACTIVITY}               com.wdiodemoapp.MainActivity
${APPIUM_SERVER}              http://127.0.0.1:4723
${EMAIL_LOCATOR}              xpath=//android.widget.EditText[@content-desc="input-email"]
${PASSWORD_LOCATOR}           xpath=//android.widget.EditText[@content-desc="input-password"]
${LOGIN_BUTTON}               //android.view.ViewGroup[@content-desc="button-LOGIN"]/android.view.ViewGroup
${LOGIN_LOCATOR}              //android.widget.TextView[@text="Login"]
${MESSAGE}                    //android.widget.TextView[@resource-id="android:id/message"]

*** Test Cases ***

Successful login with valid credentials
    Open Test Application
    Click Element  ${LOGIN_LOCATOR}
    Wait Until Element Is Visible    ${EMAIL_LOCATOR}    10 seconds
    Input Text    ${EMAIL_LOCATOR}    hassan@gmail.com
    Wait Until Element Is Visible    ${PASSWORD_LOCATOR}    10 seconds
    Input Password    ${PASSWORD_LOCATOR}    43853344
    Wait Until Element Is Visible    ${LOGIN_BUTTON}    10 seconds
    Click Element    ${LOGIN_BUTTON}
    Wait Until Element Is Visible    ${MESSAGE}    10 seconds
    Element Text Should Be    ${MESSAGE}    You are logged in!
    Close Application

*** Keywords ***
Open Test Application
    Open Application
    ...    ${APPIUM_SERVER}
    ...    automationName=${ANDROID_AUTOMATION_NAME}
    ...    platformName=${ANDROID_PLATFORM_NAME}
    ...    platformVersion=${ANDROID_PLATFORM_VERSION}
    ...    deviceName=${DEVICE_NAME}
    ...    appPackage=${APP_PACKAGE}
    ...    appActivity=${APP_ACTIVITY}

