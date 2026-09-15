class makeOrder {
    fillForm(data) {
      cy.get("#billing_first_name").clear().should("contain", "").type(data.meno).should("have.value", data.meno);
      cy.get("#billing_last_name").clear().should("contain", "").type(data.priezvisko).should("have.value", data.priezvisko);
      cy.get("#billing_address_1").clear().should("contain", "").type(data.ulica).should("have.value", data.ulica);
      cy.get("#billing_postcode").clear().should("contain", "").type(data.psc).should("have.value", data.psc);
      cy.get("#billing_city").clear().should("contain", "").type(data.mesto).should("have.value", data.mesto);
      cy.get("#billing_phone").clear().should("contain", "").type(data.tel).should("have.value", data.tel);
      cy.get("#billing_email").clear().should("contain", "").type(data.email).should("have.value", data.email);
      cy.get("#terms").click();
      cy.get("#place_order").click();
    }
  
    createWrongOrder() {
      cy.fixture("orderData19.json").then((data) => {
        this.fillForm(data);
        cy.get(".woocommerce-error").should("contain", "Neplatný email fakturačnej adresy");
      });
    }
  
    createRightOrder() {
      cy.fixture("orderData19_valid.json").then((data) => {
        this.fillForm(data);
        cy.get(".woocommerce-error").should("contain", "Neplatný spôsob platby.");
      });
    }
  }
  
  export default makeOrder;
  