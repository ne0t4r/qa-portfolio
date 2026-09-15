///<reference types = "cypress" />

describe('Zadanie_14.3.1_A práca s formulárom', () => {
    before('', () => {
      cy.visit('https://web.automationtesting.sk/')
      cy.viewport(1440, 1200);
    });

    it("Otestovanie funkčnosti 'Multi Step Form'", () => {
        cy.contains("Multi Step Form").should("be.visible").and("exist").click();
        cy.get(".entry-title").contains("MultiStep Form").and("be.visible");
        cy.get("h2").contains("Order Details").and("be.visible");
        cy.get(".fw-progress-step").first().should("have.class", "fw-active");
        cy.get(".fw-step-part-title").contains("Fill in your personal information").should("be.visible");

        cy.get("#msf-text-your-name").should("have.value", "").and("be.enabled");
        cy.get("#msf-mail-your-email").should("have.value", "").and("be.enabled");
        cy.get("#msf-date-select-date-of-order").should("have.value", "").and("be.enabled");

        cy.get("#fw-1-0-0-3-1").should("be.enabled").and("be.visible");
     
      
    });
  });