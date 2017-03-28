*** Settings ***
Library              Selenium2Library

*** Variables ***
${PRICE_BTN}                        css=.facet-range.dropclick
${MINIMUM_PRICE_TB}                 css=input[placeholder="From:"]
${MAXIMUM_PRICE_TB}                 css=input[placeholder="To:"]
${APPLY_FILTER_BTN}                 css=.button.refresh-results.expand
${CLOSE_CHAT_BTN}                   css=.olark-top-bar-button
${MINIMUM_PRICE_HEADER}             Array.from(document.querySelectorAll('.item-price.show-for-medium-up'))[0]
${MAXIMUM_PRICE_HEADER}             Array.from(document.querySelectorAll('.item-price.show-for-medium-up')).slice(-1)[0]
${SORT_BY_BTN}                      css=a.button.trigger-sort-select.white
${PRICE_LOWEST_FIRST_BTN}           Array.from(document.querySelectorAll('#sort-dropdown > li'))[2]
${PAGINATION_LAST_PAGE_BTN}         Array.from(document.querySelectorAll('.pagination  > li')).slice(-1)[0]
${ALERT_NOTIFICATION_MSG}           css=.alert-box
