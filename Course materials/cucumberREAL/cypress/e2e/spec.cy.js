///<reference types="cypress" />

import { Given, When, Then } from "@badeball/cypress-cucumber-preprocessor";

Given("Testovanie funkcnosti podstranky 'Smart Table'" , () => {

    cy.visit("http://localhost:4200")
    cy.viewport(1440, 12000);
    cy.contains("Tables & Data").click();
    cy.contains("Smart Table").click();
})

When ("Otestovanie funkcnost miest na v pisovanie z hladiska hodnot", ()=>{

    cy.get("[placeholder='ID']").type("13").should("have.value", "13");
    cy.get("[placeholder='ID']").clear().should("have.value", "").type("25").should("have.value", "25");

    cy.get("[placeholder='First Name']").type("Marek").should("have.value", "Marek");
    cy.get("[placeholder='First Name']").clear().should("have.value", "").type("Jan").should("have.value", "Jan");

    cy.get("[placeholder='Last Name']").type("Zajic").should("have.value", "Zajic");
    cy.get("[placeholder='Last Name']").clear().should("have.value", "").type("Lukas").should("have.value", "Las");

    cy.get("[placeholder='Username']").type("webinar").should("have.value", "webinar");
    cy.get("[placeholder='Username']").clear().should("have.value", "").type("webinar2").should("have.value", "webinar2");

    cy.get("[placeholder='E-mail']").type("webinar@webinar.sk").should("have.value", "webinar@webinar.sk");
    cy.get("[placeholder='E-mail']").clear().should("have.value", "").type("webinar@webinar.sk").should("have.value", "webinar@webinar.sk");

    cy.get("[placeholder='Age']").type("13").should("have.value", "13");
    cy.get("[placeholder='Age']").clear().should("have.value", "").type("50").should("have.value", "50");

})

When ("Otestovanie mazania textu z miest pre vpisovanie", ()=>{
    cy.get("[placeholder='ID']").clear().should("have.value", "");
    cy.get("[placeholder='First Name']").clear().should("have.value", "");
    cy.get("[placeholder='Last Name']").clear().should("have.value", "");
    cy.get("[placeholder='Username']").clear().should("have.value", "");
    cy.get("[placeholder='E-mail']").clear().should("have.value", "");
    cy.get("[placeholder='Age']").clear().should("have.value", "");
    

})

When ("Otestovanie funkcnosti pridania novej osoby", ()=>{
    cy.get(".nb-plus").click();

    


})

When ("Otestovanie funkcnosti odstranenia osoby", ()=>{

})

When ("Otestovanie funkcnosti editacie zaznamu", ()=>{

})

When ("Otestovanie funkcnosti filtrovania cez vsetky filtre", ()=>{

})

Then ("Otestovanie funkcnosti buttonov v spodnej casti na strankovanie", ()=>{

})

