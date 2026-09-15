///<reference types="cypress" />

describe('zadanie_10.3.1_B', () => {
  
    before(() => {
      cy.visit('https://sortablejs.github.io/Sortable/#cloning');
    });

    it('Označenie vsetkych poloziek laveho stlpca v zozname "Shared lists"', () => {
   
        cy.get("#example2-left").contains("Item 1")
        cy.get("#example2-left").contains("Item 2")
        cy.get("#example2-left").contains("Item 3")
        cy.get("#example2-left").contains("Item 4")
        cy.get("#example2-left").contains("Item 5")
        cy.get("#example2-left").contains("Item 6")           
        });

    after('Označenie vsetkych poloziek praveho stlpca v zozname "Shared lists"', () => {
        cy.get("#example2-right").contains("Item 1")
        cy.get("#example2-right").contains("Item 2")
        cy.get("#example2-right").contains("Item 3")
        cy.get("#example2-right").contains("Item 4")
        cy.get("#example2-right").contains("Item 5")
        cy.get("#example2-right").contains("Item 6")           
        });

    });

    after("Refresh", () => {
        cy.reload();
    });
