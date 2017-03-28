*** Settings ***
Resource                filtering_by_price_variables.robot

*** Keywords ***
############################
#         GIVEN            #
############################
User Is In Categories Page
    Wait Until Keyword Succeeds    10 sec    2 sec
    ...    Location Should Contain    https://www.carmudi.com.ph/all/
    Set Window Size        1920    1080


############################
#          WHEN            #
############################
User Filters Car By Price
    [Arguments]    ${p_minimum_price}    ${p_maximum_price}
    Click Element    ${PRICE_BTN}
    Click Element    ${MINIMUM_PRICE_TB}
    Input Text    ${MINIMUM_PRICE_TB}    ${p_minimum_price}
    Click Element    ${MAXIMUM_PRICE_TB}
    Input Text    ${MAXIMUM_PRICE_TB}    ${p_maximum_price}
    Set Selenium Speed    3 seconds
    Click Element    ${APPLY_FILTER_BTN}

User Inputs Zero As Price Range
    Click Element    ${PRICE_BTN}
    Click Element    ${MINIMUM_PRICE_TB}
    Input Text    ${MINIMUM_PRICE_TB}    0
    Click Element    ${MAXIMUM_PRICE_TB}
    Input Text    ${MAXIMUM_PRICE_TB}    0
    Set Selenium Speed    3 seconds
    Click Element    ${APPLY_FILTER_BTN}

User Inputs Double-Digit Number As Price Range
    Click Element    ${PRICE_BTN}
    Click Element    ${MINIMUM_PRICE_TB}
    Input Text    ${MINIMUM_PRICE_TB}    14
    Click Element    ${MAXIMUM_PRICE_TB}
    Input Text    ${MAXIMUM_PRICE_TB}    30
    Set Selenium Speed    3 seconds
    Click Element    ${APPLY_FILTER_BTN}

User Sorts From Lowest Price To Highest Price
    Click Element    ${CLOSE_CHAT_BTN}
    Click Element    ${SORT_BY_BTN}
    ${p_lowest_price_btn}=   Execute Javascript    return window.${PRICE_LOWEST_FIRST_BTN}
    Click Element    ${p_lowest_price_btn}

############################
#          THEN            #
############################
List Of Cars Should Be Displayed
    [Arguments]    ${p_minimum_price}    ${p_maximum_price}
    ${p_minimum_item_price}=   Execute Javascript    return window.${MINIMUM_PRICE_HEADER}
    Element Should Be Visible    ${p_minimum_item_price}    ${p_minimum_price}
    ${p_pagination_last_page}=   Execute Javascript    return window.${PAGINATION_LAST_PAGE_BTN}
    Click Element    ${p_pagination_last_page}
    ${p_maximum_item_price}=   Execute Javascript    return window.${MAXIMUM_PRICE_HEADER}
    Element Should Be Visible    ${p_maximum_item_price}    ${p_maximum_price}

Alert Notification Should Be Displayed
    Element Should Be Visible    ${ALERT_NOTIFICATION_MSG}
