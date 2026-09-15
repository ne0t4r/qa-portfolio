class testCart{
    verifyProductsInCart(products) {        
    
        products.forEach((product, index) => {
          cy.get("td.product-name").eq(index).should("contain", product.Name);
          cy.get("td.product-price").eq(index).should("contain", product.Price);
          cy.get("input").eq(index + 1).should("have.value", "1");
        });
    }    

    deleteFromCart(){

        cy.get(".product-remove").eq(4).click();
        cy.get(".cart_item").eq(3).should("not.contain", "Ruský štandard 1l");
        cy.get(".woocommerce-message").should("contain", "Odstránené z košíka: „Ruský štandard 1l“");
        
    }    
    
    testQuantity(){        
        cy.get("input").eq(4).clear().should("have.value", "").type("2").should("have.value", "2");
        cy.contains("Aktualizovať").click();        
        cy.get(".cart_item").eq(3).should("contain", "33.98");
    }

    testDiscount(){
        cy.get("#coupon_code").clear().should("contain", "").type("EATHAM20").should("have.value", "EATHAM20");
        cy.contains("Použiť kupón").click();
        cy.get(".woocommerce-error").should("be.visible").should("contain", 'Kupón "eatham20" neexistuje!');
    }
    
    acceptCart(){
        cy.contains("Skontrolovať a objednať").click();
        cy.get("h3").should("contain", "Fakturačné údaje");
    }      
}

export default testCart;