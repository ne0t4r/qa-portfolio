class homePage{
    visit(){        
        cy.visit(' https://www.dovoznakupov.sk/');
        cy.viewport(1440, 1200);
        }

    openCart(){
        cy.get(".w-cart-link").click();
        }
}
export default homePage;