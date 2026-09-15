///<reference types = "cypress" />

describe('Zadanie_16.3.1_A práca s "Conduit"', () => {
  
  beforeEach('passes', () => {
    cy.visit('http://localhost:3000/')
    cy.viewport(1440, 1200);
  })

  it("Registrácia", () =>{

    cy.contains("Sign up").click();
    cy.get("[placeholder='Username']").clear().type("lukas10");
    cy.get("[placeholder='Email']").clear().type("lukas@lukas.sk");
    cy.get("[placeholder='Password']").clear().type("1234");

    cy.get("button").contains("Sign up").click();

  });

  it("Vytvorenie clankov scriptom",() => {

    //prihlasenie
    cy.get("[href='/user/login']").contains("Sign in").click();
    cy.get("[placeholder='Email']").clear().type("lukas@lukas.sk");
    cy.get("[placeholder='Password']").clear().type("1234");
    cy.get("button").contains("Sign in").click();

    cy.wait(2000);

    cy.intercept("POST", "/api/articles",(req) =>{
      
      console.log(req)
      req.body.article.title = "NAZOV CLANKU BOL USPESNE ZMENENY (script)"
      req.body.article.description = "DESC CLANKU BOL USPESNE ZMENENY" 
      req.body.article.body = "BODY CLANKU BOL USPESNE ZMENENY"

    });

    //script pre vytvaranie clankov
    const clanky = ["Test1", "Test2","Test3"];
    
    cy.wrap(clanky).each(clanok => {

      cy.get("[href='/editor']").click();
      
      cy.get("[placeholder='Article Title']").clear().type(clanok).should("have.value", clanok);
      cy.get('[placeholder="What\'s this article about?"]').clear().type("sumar").should("have.value", "sumar");
      cy.get("[placeholder='Write your article (in markdown)']").clear().type("telo testu").should("have.value", "telo testu");
      cy.get("button").contains("Publish Article").click();
    });
    
    cy.contains("conduit").click();
    cy.contains("Global Feed").click();

    cy.get(".article-preview").eq(0).should("contain", "NAZOV CLANKU BOL USPESNE ZMENENY (script)");
    cy.get(".article-preview").eq(1).should("contain", "NAZOV CLANKU BOL USPESNE ZMENENY (script)");
    cy.get(".article-preview").eq(2).should("contain", "NAZOV CLANKU BOL USPESNE ZMENENY (script)");
    

  });

  it("Vytvorenie noveho clanku a nahradenie odpovede v casti 'Global Feed'",() => {
    
    cy.intercept("POST", "/api/articles",(req) =>{
      
      console.log(req)
      req.body.article.title = "NAZOV CLANKU BOL USPESNE ZMENENY (single clanok)"
      req.body.article.description = "DESC CLANKU BOL USPESNE ZMENENY" 
      req.body.article.body = "BODY CLANKU BOL USPESNE ZMENENY"

    });
    
    //Prihlaseni
    cy.get("[href='/user/login']").contains("Sign in").click();
    cy.get("[placeholder='Email']").clear().type("lukas@lukas.sk");
    cy.get("[placeholder='Password']").clear().type("1234");
    cy.get("button").contains("Sign in").click();

    cy.wait(2000);
    
    //Vytvaranie clanku
    cy.get("[href='/editor']").click();

    cy.get("[placeholder='Article Title']").clear().type("Clanok na prepisanie").should("have.value", "Clanok na prepisanie");
    cy.get('[placeholder="What\'s this article about?"]').clear().type("test").should("have.value", "test");
    cy.get("[placeholder='Write your article (in markdown)']").clear().type("test").should("have.value", "test");
    cy.get("button").contains("Publish Article").click();

    //navigacia do global feed
    cy.contains("conduit").click();
    cy.contains("Global Feed").click();

    //overenie clanku v casti global feed
    cy.get(".article-preview").eq(0).should("contain", "NAZOV CLANKU BOL USPESNE ZMENENY (single clanok)");

    //odhlasenie
    cy.get("[href='/settings']").click();
    cy.contains("Or click here to logout.").click();
  });  
});