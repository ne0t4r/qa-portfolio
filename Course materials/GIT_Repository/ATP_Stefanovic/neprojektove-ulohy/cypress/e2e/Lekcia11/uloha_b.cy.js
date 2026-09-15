/// <reference types="cypress" />

describe('Zadanie_11.3.1_B - Nájdenie prvkov na stránkach', () => { 

  it('Button Add Element', () => {
    cy.visit('https://the-internet.herokuapp.com/add_remove_elements/');
    cy.get('button').should('exist');    
  });
  it('Posledný obrázok', () => {
    cy.visit('https://the-internet.herokuapp.com/broken_images');
    cy.get('img:nth-child(4)').should('exist');
  });
  it('Zelený button', () => {
    cy.visit('https://the-internet.herokuapp.com/challenging_dom');
    cy.get('.success').should('exist');
  });
  it('Button contact us', () => {
    cy.visit('https://the-internet.herokuapp.com/disappearing_elements');
    cy.get('a[href="/contact-us/"]').should('exist');
  });
  it('Dropdown "Please select an option" ', () => {
    cy.visit('https://the-internet.herokuapp.com/dropdown');
    cy.get('#dropdown').should('exist');
  });



});

