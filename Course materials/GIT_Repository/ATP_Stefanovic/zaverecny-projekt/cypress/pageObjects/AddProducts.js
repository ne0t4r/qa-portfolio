class addProducts{
    addCategoriesProducts(){
    
    cy.get(".product-categories").contains("Nealkoholické nápoje").click();
    cy.get("h1").should("contain", "Nealkoholické nápoje");    
    cy.get(".product-h").eq(0).should("contain","Džús Hello 100% pomaranč").should("contain","1.59")
    .contains("Pridať do košíka").click({force: true});
    cy.wait(500);

    cy.get(".product-categories").contains("Pochutiny").click();
    cy.get("h1").should("contain", "Pochutiny");
    cy.get(".product-h").eq(0).should("contain", "Nutline arašidy 100 g").should("contain", "1.39")
    .contains("Pridať do košíka").click({force: true});
    cy.wait(500);

    cy.get(".product-categories").contains("Šampanské").click();
    cy.get("h1").should("contain", "Šampanské");
    cy.get(".product-h").eq(0).should("contain","Šampanské Mionetto Prosecco 0.75l").should("contain","9.89")
    .contains("Pridať do košíka").click({force: true});
    cy.wait(500);

    cy.get(".product-categories").contains("Alkohol").click();
    cy.get("h1").should("contain", "Alkohol");
    cy.get(".product-h").eq(0).should("contain","Ruský štandard 1l").should("contain","16.99")
    .contains("Pridať do košíka").click({force: true});
    cy.wait(500);

    cy.get(".product-categories").contains("Pivo").click();
    cy.get("h1").should("contain", "Pivo");
    cy.get(".product-h").eq(0).should("contain","Corgoň 10 0.5l").should("contain","0.79")
    .contains("Pridať do košíka").click({force: true});
    cy.wait(500);

    cy.get(".product-categories").contains("Víno").click();
    cy.get("h1").should("contain", "Víno");
    cy.get(".product-h").eq(0).should("contain","Matyšák Müller Thurgau 0,75l").should("contain","4.29")
    .contains("Pridať do košíka").click({force: true});
    cy.wait(500);
    }  
  
}


export default addProducts;