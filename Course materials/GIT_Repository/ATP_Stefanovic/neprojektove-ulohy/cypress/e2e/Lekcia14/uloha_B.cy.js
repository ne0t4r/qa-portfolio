///<reference types = "cypress" />

describe('Zadanie_14.3.1_B práca s formulárom', () => {
    before('', () => {
      cy.visit('https://web.automationtesting.sk/')
      cy.viewport(1440, 1200);
    });

    it("Otestovanie funkčnosti 'Multi Step Form'", () => {
        cy.contains("Multi Step Form").should("be.visible").and("exist").click();

        cy.get("#msf-text-your-name").should("have.value", "").and("be.enabled").type("Lukáš Štefanovič").should("have.value", "Lukáš Štefanovič");
        cy.get("#msf-mail-your-email").should("have.value", "").and("be.enabled").type("tester.stefanovic@gmail.com").should("have.value", "tester.stefanovic@gmail.com");
        cy.get("#msf-date-select-date-of-order").should("have.value", "").and("be.enabled").type("2023-1-1").should("have.value", "2023-1-1");        
        cy.get("#fw-1-0-0-3-1").should("be.enabled").and("be.visible").click({force: true}).should("be.checked");
        cy.get(".fw-button-next").should("be.visible").click();

        cy.get(".fw-progress-step").eq(1).should("have.class", "fw-active");
        cy.get("h2").contains("Which one do you like ?").should("be.visible");

        cy.get(".fw-checkbox").first().click({force: true}).should("be.checked");
        cy.get(".fw-checkbox").last().click({force: true}).should("be.checked");
        cy.get(".select2-selection").click({force: true});
        cy.get(".select2-results__options").click("top");
        cy.get(".fw-button-next").click();
        
        cy.get(".fw-progress-step").eq(2).should("have.class", "fw-active");
        cy.contains("3rd step of form").should("be.visible");
        cy.get(".fw-textarea").type("Test").should("have.value", "Test");
        cy.get(".fw-toggle-summary").click();
        
        cy.get(".fw-step-summary-title").eq(0).contains("Fill in your personal information").should("be.visible");
        
        cy.get(".fw-step-summary-field-title").eq(0).contains("Your Name").should("be.visible");
        cy.get(".fw-step-summary").eq(0).contains("Lukáš Štefanovič").should("be.visible");
        
        cy.get(".fw-step-summary-field-title").eq(1).contains("Your Email").should("be.visible");
        cy.get(".fw-step-summary").eq(1).contains("tester.stefanovic@gmail.com").should("be.visible");
        
        cy.get(".fw-step-summary-field-title").eq(2).contains("Select Date Of Order").should("be.visible");
        cy.get(".fw-step-summary").eq(2).contains("2023-1-1").should("be.visible");
       
        cy.get(".fw-step-summary-field-title").eq(3).contains("Do you agree with our Terms And Conditions ?").should("be.visible");
        cy.get(".fw-step-summary").eq(3).contains("I Agree with Terms And Conditions").should("be.visible");

        cy.get(".fw-step-summary-title").eq(1).contains("Which one do you like ?").should("be.visible");
        
        cy.get(".fw-step-summary-field-title").eq(4).contains("Choose Products you like").should("be.visible");
        cy.get(".fw-step-summary").eq(4).contains("Shoes, T-shirts").should("be.visible");
        
        cy.get(".fw-step-summary-field-title").eq(5).contains("Do you want to join to our newsletter list ?").should("be.visible");
        cy.get(".fw-step-summary").eq(5).contains("Yes").should("be.visible");

        cy.get(".fw-btn-submit").should("be.visible").click();       
        cy.contains("Form submitted. Amazing").should("be.visible");
      
    });
  });