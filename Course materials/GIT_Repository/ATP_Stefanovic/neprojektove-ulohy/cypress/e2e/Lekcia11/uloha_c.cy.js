/// <reference types="cypress" />

describe('Zadanie_11.3.1_C - Nájdenie prvkov na stránkach', () => {
  
  it('Telefonne číslo v hornej časti stránky ', () => {    
    cy.visit('https://www.dovoznakupov.sk/');
    cy.get('a > strong').should('exist');     
  });

  it('Logo v spodnej časti stránky', () => {   
    cy.visit('https://www.dovoznakupov.sk/');
    cy.get('.lazyloaded').should('exist');
  }); 

  it('Ochrana osobných údajov v spodnej časti stránky', () => {   
    cy.visit('https://www.dovoznakupov.sk/');
    cy.get('p a[href="https://www.dovoznakupov.sk/ochrana-osobnych-udajov-a-sukromia/"]').should('exist');

  });
  it('Označenie košika v pravej hornej časti stránky" ', () => {  
    cy.visit('https://www.dovoznakupov.sk/');
    cy.get('a i').should('exist');
  });

  it('Nástroj pre vyhľadávanie produktov (input)" ', () => {  
    cy.visit('https://www.dovoznakupov.sk/');
    cy.get('#woocommerce-product-search-field-0').should('exist');
    });
});