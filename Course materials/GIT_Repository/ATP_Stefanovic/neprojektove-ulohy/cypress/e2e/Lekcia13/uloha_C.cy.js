///<reference types = "cypress" />

describe('Zadanie_13.3.1_C práca s formulárom', () => {
    before('', () => {
      cy.visit('https://web.automationtesting.sk/')
      cy.viewport(1440, 1200);
    });

    it("Scenar pre vyplnenie formuláru 'CONTACT US' a jeho následné overenie", () => {
      cy.get(".elementor-col-33").eq(0).click().type("Lukáš");
      cy.get(".elementor-col-33").eq(1).click().type("Štefanovič");
      cy.get(".elementor-col-33").eq(2).click().type("+421911123456");
      cy.get(".elementor-col-33").eq(3).click().type("tester.stefanovic@gmail.com");
      cy.get(".elementor-col-33").eq(4).click().type("Toto je testovací formulár");
      cy.get("button").contains("Send").click();
      cy.contains("Your submission was successful.").should("be.visible")       
    });
  });