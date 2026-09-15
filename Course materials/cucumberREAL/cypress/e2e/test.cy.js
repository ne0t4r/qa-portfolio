
///<reference types='cypress' />

import {Then, When } from "@badeball/cypress-cucumber-preprocessor"

describe('Simple Scenario', () => {

    When('Navigate to {string} Form', (form) => {
        cy.contains('Forms').click()
        cy.contains(`${form}-Form`).click()
    })

    When('Fill all 4 inputs {string} {string} {string} {string}', (firstName, lastName, email, phone) => {
        cy.get('input').eq(0).type(firstName)
        cy.wait(1000)
        cy.get('input').eq(1).type(lastName)
        cy.wait(1000)
        cy.get('input').eq(2).type(email)
        cy.wait(1000)
        cy.get('input').eq(3).type(phone)
        cy.wait(1000)
    })

    When('Check required inputs {string}', (gender) => {
        cy.contains(gender).next().check()
    })

    When('I submit the {string} form', (form) => {
        cy.contains(`${form} Form`).next().find('button').click()
    })

    Then('I recheck result {string}', (result) => {
        cy.get('textarea').invoke('val').then( val => {
            expect(val).contain(result)
        })
    })
})
