/// <reference types="cypress" />

describe("Zadanie_12.3.1_A", () => {
    before("", () => {
      cy.visit("https://the-internet.herokuapp.com/dynamic_controls");
    });  
    it("Otestuj 'Dynamic Controls'", () => {
      cy.contains("Dynamic Controls").click();    
      cy.get('input[type="checkbox"]').check();     
      cy.get('input[type="checkbox"]').should("be.checked");       
      cy.get('button').contains("Remove").click();
      cy.wait(4000);
      cy.get('input[type="checkbox"]').should("not.exist");      
      cy.contains("It's gone!").should("be.visible");
      cy.get('button').contains("Add").click();
      cy.wait(4000);
      cy.get('input[type="checkbox"]').should("be.visible");
    });
  });
  
  