///<reference types = "cypress" />

describe('Zadanie_16.3.1_C práca s "Conduit"', () => {
  
  before('passes', () => {
    cy.visit('http://localhost:3000/')
    cy.viewport(1440, 1200);

    cy.fixture("16.3.1_C.json").then(function(data) {
      this.data = data;
    });
  });

  it("Vytvorenie noveho clanku a nahradenie odpovede v casti 'Global Feed' v ulohe B",function() {
    
    //prihlasenie
    cy.get("[href='/user/login']").contains("Sign in").click();
    cy.get("[placeholder='Email']").clear().type("lukas@lukas.sk");
    cy.get("[placeholder='Password']").clear().type("1234");
    cy.get("button").contains("Sign in").click();

    cy.wait(2000);    
    
    cy.intercept("POST", "/api/articles",(req) =>{
      
      console.log(req)
      req.body.article.title = this.data.title;
      req.body.article.description = this.data.description;
      req.body.article.body = this.data.body;

    });    
    
    //vytvorenie clanku
    cy.get("[href='/editor']").click();

    cy.get("[placeholder='Article Title']").clear().type("Clanok na prepisanie (uloha C)").should("have.value", "Clanok na prepisanie (uloha C)");
    cy.get('[placeholder="What\'s this article about?"]').clear().type("test").should("have.value", "test");
    cy.get("[placeholder='Write your article (in markdown)']").clear().type("test").should("have.value", "test");
    cy.get("button").contains("Publish Article").click();

    //navigacia do global feed
    cy.contains("conduit").click();
    cy.contains("Global Feed").click();

    //overenie clanku
    cy.contains(this.data.title).click();
    cy.get("h1").should("contain", this.data.title);
    cy.get(".col-md-12").should("contain", this.data.body);

    //odhlasenie
    cy.get("[href='/settings']").click();
    cy.contains("Or click here to logout.").click();

});
});