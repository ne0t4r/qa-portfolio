///<reference types="cypress" />

describe('zadanie_10.3.1_A', () => {
  
  before(() => {
    cy.visit('https://sortablejs.github.io/Sortable/#cloning');
  });
  
  it('Označenie "a" elementov v menu', () => {
   
    cy.get("a").contains("Vue.Draggable").click();
    cy.get("a").contains("react-sortablejs").click();
    cy.get("a").contains("ngx-sortablejs").click();
    cy.get("a").contains("jquery-sortablejs").click();
    cy.get("a").contains("meteor-sortablejs").click();
    cy.get("a").contains("polymer-sortablejs").click();
    cy.get("a").contains("ember-sortablejs").click()      
    });
    after("Refresh", () => {
      cy.reload();
    });
  });