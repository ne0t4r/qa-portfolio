///<reference types="cypress" />

import { Given, When, Then } from "@badeball/cypress-cucumber-preprocessor";

Given("Otestovanie správneho zobrazenia stránky" , () => {
    cy.visit("https://www.dovoznakupov.sk");
    cy.viewport(1440, 1200);
    cy.url().should("include", "https://www.dovoznakupov.sk/");
    cy.title().should("eq", "EatHam Delivery");
    cy.get(".no-touch").should("be.visible");
    cy.get("h3").contains("Si starší ako 18 rokov?").should("be.visible");
    cy.get("#agy-accept").click();    
});

When ("Otestovanie správneho prijatia súborov cookie", () => {
    cy.get("#cookie_action_close_header").click();
    cy.getCookie('agy').should('exist').should('have.property', 'value', 'accepted');
    cy.getCookie('CookieLawInfoConsent').should('exist').should('have.property', 'value', 'eyJuZWNlc3NhcnkiOnRydWUsIm5vbi1uZWNlc3NhcnkiOnRydWV9');    
});

When ("Otestovanie správneho zobrazenia telefónneho čísla v hlavičke domovskej stránky", () => {
    cy.get("[href='tel:0948618504']").contains("0948 618 504").should("contain", "0948 618 504").should("be.visible");

});
When ("Otestovanie funkčnosti, zobrazenia a obsahu tlačidiel v hlavičke stránky pre 'Otváracie hodiny', 'Dôležité informácie' a 'Možnosti a ceny doručenia'", () => {
    cy.get("#ui-id-1").click().should("have.attr", "aria-expanded", "true").should("be.visible").should("contain", "Otváracie hodiny");
            cy.get("#ui-id-2").should("be.visible")
            .should("contain", "pondelok").should("contain", "17:00 – 23:30")
            .should("contain", "utorok").should("contain", "17:00 – 23:30")
            .should("contain", "streda").should("contain", "17:00 – 23:30")
            .should("contain", "štvrtok").should("contain", "17:00 – 23:30")
            .should("contain", "piatok").should("contain", "17:00 – 1:00")
            .should("contain", "sobota").should("contain", "17:00 – 1:00")
            .should("contain", "nedeľa").should("contain", "17:00 – 22:30");

            cy.get("#ui-id-3").click().should("have.attr", "aria-expanded", "true").should("be.visible").should("contain", "Dôležité informácie");
            cy.get("#ui-id-4").should("be.visible").should("contain", "Služba").should("contain", "Eat Ham delivery")
            .should("contain", " je určená výhradne pre fyzické osoby staršie ako 18 rokov.")
            .should("contain", "Služba je poskytovaná v rámci Banskej Bystrice a jej okolí, ktoré je špecifikované vo ")
            .should("contain", "všeobecných obchodných podmienkách" ).should("contain", "tu");

            cy.get("#ui-id-5").click().should("have.attr", "aria-expanded", "true").should("be.visible").should("contain", "Možnosti a ceny doručenia");
            cy.get("#ui-id-6").should("be.visible").should("contain", "Expresné dodanie do 30 minút – od 4,00 € (EUR)")
            .should("contain", "(platí len vo vybraných lokalitách, špecifikovaných ")
            .should("contain", " alebo vo ").should("contain", "VOP").should("contain", ")")
            .should("contain", "Štandardné dodanie do 120 minút – od 2,40 € (EUR)")
            .should("contain", "(platí len vo vybraných lokalitách, špecifikovaných ").should("contain", "tu")
            .should("contain", " alebo vo ").should("contain", "VOP").should("contain", ")");
});
When ("Otestovanie funkcionality filtrovania po vyhľadaní produktov", () => {
    
    const hladanyProdukt = "Kozel";
    cy.get("#woocommerce-product-search-field-0").clear().type(hladanyProdukt);
    cy.contains("Vyhľadávanie").click();
 
    
     cy.get(".product-meta").each(($li) => {
        cy.wrap($li).should("contain", hladanyProdukt);
  });
});

When ("Otestovanie pridania produktov z každej kategórie do nákupného košíka", () => {
    cy.contains("Obchod").click();
            cy.get(".product-categories").contains("Nealkoholické nápoje").click();
            cy.get("h1").should("contain", "Nealkoholické nápoje");
            cy.get(".product-h").eq(0).contains("Pridať do košíka").click({force: true});
            cy.wait(1000);

            cy.get(".product-categories").contains("Pochutiny").click();
            cy.get("h1").should("contain", "Pochutiny");
            cy.get(".product-h").eq(0).contains("Pridať do košíka").click({force: true});
            cy.wait(1000);

            cy.get(".product-categories").contains("Šampanské").click();
            cy.get("h1").should("contain", "Šampanské");
            cy.get(".product-h").eq(0).contains("Pridať do košíka").click({force: true});
            cy.wait(1000);

            cy.get(".product-categories").contains("Alkohol").click();
            cy.get("h1").should("contain", "Alkohol");
            cy.get(".product-h").eq(0).contains("Pridať do košíka").click({force: true});
            cy.wait(1000);

            cy.get(".product-categories").contains("Pivo").click();
            cy.get("h1").should("contain", "Pivo");
            cy.get(".product-h").eq(0).contains("Pridať do košíka").click({force: true});
            cy.wait(1000);

            cy.get(".product-categories").contains("Víno").click();
            cy.get("h1").should("contain", "Víno");
            cy.get(".product-h").eq(0).contains("Pridať do košíka").click({force: true});
            cy.wait(1000);
});
When ("Otestovanie správneho pridávania produktov do nákupného košíka", () => {
    cy.get(".w-cart-link").click();

            cy.get(".cart_item").eq(0).should("contain", "Džús Hello 100% pomaranč").should("contain","1.59");
            cy.get("input").eq(1).should("have.value", "1");
            cy.get(".cart_item").eq(1).should("contain", "Nutline arašidy 100 g").should("contain","1.39");
            cy.get("input").eq(2).should("have.value", "1");
            cy.get(".cart_item").eq(2).should("contain", "Šampanské Mionetto Prosecco 0.75l").should("contain","9.89");
            cy.get("input").eq(3).should("have.value", "1");
            cy.get(".cart_item").eq(3).should("contain", "Ruský štandard 1l").should("contain","16.99");
            cy.get("input").eq(4).should("have.value", "1");
            cy.get(".cart_item").eq(4).should("contain", "Corgoň 10 0.5l").should("contain","0.79");
            cy.get("input").eq(5).should("have.value", "1");
            cy.get(".cart_item").eq(5).should("contain", "Matyšák Müller Thurgau 0,75l").should("contain","4.29");
            cy.get("input").eq(6).should("have.value", "1");
});
When ("Otestovanie funkčnosti nákupného košíka", () => {
    cy.get("input").eq(4).clear().should("have.value", "").type("2").should("have.value", "2");
            cy.contains("Aktualizovať").click();
            cy.get(".order-total").should("contain", "51.93");
});
Then ("Otestovanie funkčnosti registračného formuláru", () => {
    
    const f_email = Math.random().toString(36).substring(2, 10);
    const s_email = "@tester.sk"     
    
    cy.contains("Môj účet").click();
    cy.get("#reg_email").should("have.value", "").clear().type(f_email + s_email);
    cy.get("button").contains("Registrovať sa").click();
    
    cy.get("h1").contains("Môj účet").should("contain", "Môj účet");
    cy.get(".woocommerce-MyAccount-content").contains("Dobrý deň ").should("contain", f_email);
});
