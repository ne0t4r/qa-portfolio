 class cookies{

   isCookiesVisible(){
      cy.get(".box-right").should("be.visible").should("exist").should("contain", "Si starší ako 18 rokov?");
   }
   acceptCookies(){
      cy.get("#agy-accept").click();
      cy.get("#cookie_action_close_header").click();
   }
   checkCookies(cookie1, cookie2){
      cy.getCookie(cookie1).should('exist').should('have.property', 'value', 'accepted');
      cy.getCookie(cookie2).should('exist').should('have.property', 'value', 'eyJuZWNlc3NhcnkiOnRydWUsIm5vbi1uZWNlc3NhcnkiOnRydWV9');
   }
 }

 export default cookies;