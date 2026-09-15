///<reference types = "cypress" />

describe('Zadanie_14.3.1_C práca s formulárom', () => {
    before('', () => {
      cy.visit('https://web.automationtesting.sk/')
      cy.viewport(1440, 1200);
    });

    it("Otestovanie funkčnosti 'Multi Step Form' s nesprávnou emailovou adresou", () => {
        cy.contains("Multi Step Form").should("be.visible").and("exist").click();

        cy.get("#msf-text-your-name").should("have.value", "").and("be.enabled").type("Lukáš Štefanovič").should("have.value", "Lukáš Štefanovič");;
        cy.get("#msf-mail-your-email").should("have.value", "").and("be.enabled").type("tester.stefanovicgmail.com").should("have.value", "tester.stefanovicgmail.com");
        cy.get("#msf-date-select-date-of-order").should("have.value", "").and("be.enabled").type("2023-1-1").should("have.value", "2023-1-1");        
        cy.get("#fw-1-0-0-3-1").should("be.enabled").and("be.visible").click({force: true}).should("be.checked");
        cy.get(".fw-button-next").should("be.visible").click();
        cy.get(".fw-alert-user").contains("Prosím vyplňte všetky povinné polia.").should("be.visible");

    });
});