///<reference types="cypress" />

describe('zadanie_10.3.1_C', () => {
    before(() => {
      cy.visit('https://sortablejs.github.io/Sortable/#cloning');
    });

        it('Oznacenie vsetkych prvkov v casti "Grid Examples" pomocou "attribute name" a oznacenie predposledneho prvku v poli Item 19', () => {
          cy.get('#grid [class="grid-square"]').each((prvok) => {                    
          });
        });   

        after(() => {          
          cy.get('#grid [class="grid-square"]').eq(-2).should('contain.text', 'Item 19');          
        });
      });  

    after("Refresh", () => {
        cy.reload();
    });
  