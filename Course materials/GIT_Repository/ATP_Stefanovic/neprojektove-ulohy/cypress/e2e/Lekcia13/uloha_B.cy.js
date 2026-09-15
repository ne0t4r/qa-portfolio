///<reference types = "cypress" />

describe('Zadanie_13.3.1_B', () => {
    before('Otestovanie "Hovers"', () => {
      cy.visit('https://the-internet.herokuapp.com/')
      cy.viewport(1440, 1200);
    });   

    it("Scenar pre testovanie hovers", () => {
        cy.contains("Hovers").click();       
       
        cy.get('.figure').eq(0).trigger('mouseover');
        cy.get('.figure').eq(1).trigger('mouseover');
        cy.get('.figure').eq(2).trigger('mouseover');       
        
        cy.get('.figure').eq(0).trigger('mouseover').contains('name: user1');
        cy.get('.figure').eq(0).contains('View profile').click({force: true});
        cy.url().should('include', 'https://the-internet.herokuapp.com/users/1');
        cy.contains('Not Found');
        cy.go('back');

        cy.get('.figure').eq(1).trigger('mouseover').contains('name: user2');
        cy.get('.figure').eq(1).contains('View profile').click({force: true});
        cy.url().should('include', 'https://the-internet.herokuapp.com/users/2');
        cy.contains('Not Found');
        cy.go('back');

        cy.get('.figure').eq(2).trigger('mouseover').contains('name: user3');
        cy.get('.figure').eq(2).contains('View profile').click({force: true});
        cy.url().should('include', 'https://the-internet.herokuapp.com/users/3');
        cy.contains('Not Found');
        cy.go('back');   
        });
  });