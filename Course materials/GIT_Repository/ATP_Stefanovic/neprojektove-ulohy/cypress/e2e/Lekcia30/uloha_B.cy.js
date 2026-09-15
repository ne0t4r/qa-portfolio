///<reference types="cypress" />

describe('Zadanie_17.3.1_B práca s "Multi Step Form"', () => {
  before("passes", () => {
    cy.visit("https://web.automationtesting.sk/");
    cy.viewport(1440, 1200);

    cy.fixture("17.3.1_B.json").then(function (data) {
      this.data = data;
    });
  });
  it("Test", function () {
    cy.contains("Multi Step Form").click();

    cy.get(".fw-progress-step").first().should("have.class", "fw-active");
    cy.get("#msf-text-your-name")
      .clear()
      .should("have.value", "")
      .type(this.data.name)
      .should("have.value", this.data.name);
    cy.get("#msf-mail-your-email")
      .clear()
      .should("have.value", "")
      .type(this.data.email)
      .should("have.value", this.data.email);
    cy.get("#msf-date-select-date-of-order")
      .clear()
      .should("have.value", "")
      .type(this.data.date)
      .should("have.value", this.data.date);

    cy.get("#fw-1-0-0-3-1").click({ force: true }).should("be.checked");

    cy.get(".fw-button-next").click();

    cy.get(".fw-progress-step").eq(1).should("have.class", "fw-active");
    cy.get("#fw-1-1-0-0-1").click({ force: true }).should("be.checked");
    cy.get("#fw-1-1-0-0-2").click({ force: true }).should("be.checked");
    cy.get("#fw-1-1-0-0-3").click({ force: true }).should("be.checked");
    cy.get("#fw-1-1-0-0-4").click({ force: true }).should("be.checked");
    cy.get("#fw-1-1-0-0-5").click({ force: true }).should("be.checked");

    cy.get("#fw-1-1-0-0-6").click({ force: true }).should("be.checked");

    cy.get(".select2-selection").click({ force: true });
    cy.get(".select2-results__options").click("top");
    cy.get(".fw-button-next").click();

    cy.get(".fw-progress-step").eq(2).should("have.class", "fw-active");
    cy.contains("3rd step of form").should("be.visible");
    cy.get(".fw-textarea")
      .type(this.data.message)
      .should("have.value", this.data.message);
    cy.get(".fw-toggle-summary").click();

    cy.get(".fw-step-summary-title")
      .eq(0)
      .contains("Fill in your personal information")
      .should("be.visible");

    cy.get(".fw-step-summary-field-title")
      .eq(0)
      .contains("Your Name")
      .should("be.visible");
    cy.get(".fw-step-summary")
      .eq(0)
      .contains(this.data.name)
      .should("be.visible");

    cy.get(".fw-step-summary-field-title")
      .eq(1)
      .contains("Your Email")
      .should("be.visible");
    cy.get(".fw-step-summary")
      .eq(1)
      .contains(this.data.email)
      .should("be.visible");

    cy.get(".fw-step-summary-field-title")
      .eq(2)
      .contains("Select Date Of Order")
      .should("be.visible");
    cy.get(".fw-step-summary")
      .eq(2)
      .contains(this.data.date)
      .should("be.visible");

    cy.get(".fw-step-summary-field-title")
      .eq(3)
      .contains("Do you agree with our Terms And Conditions ?")
      .should("be.visible");
    cy.get(".fw-step-summary")
      .eq(3)
      .contains("I Agree with Terms And Conditions")
      .should("be.visible");

    cy.get(".fw-step-summary-title")
      .eq(1)
      .contains("Which one do you like ?")
      .should("be.visible");

    cy.get(".fw-step-summary-field-title")
      .eq(4)
      .contains("Choose Products you like")
      .should("be.visible");
    cy.get(".fw-step-summary")
      .eq(4)
      .contains("Shoes, Pants, Jackets, Hats, Shorts, T-shirts")
      .should("be.visible");

    cy.get(".fw-step-summary-field-title")
      .eq(5)
      .contains("Do you want to join to our newsletter list ?")
      .should("be.visible");
    cy.get(".fw-step-summary").eq(5).contains("Yes").should("be.visible");

    cy.get(".fw-step-summary-field-title")
      .eq(6)
      .contains("Write us a message")
      .should("be.visible");
    cy.get(".fw-step-summary")
      .eq(6)
      .contains(this.data.message)
      .should("be.visible");

    cy.get(".fw-btn-submit").should("be.visible").click();
    cy.wait(2000);
    cy.contains("Form submitted. Amazing").should("be.visible");
  });
});
