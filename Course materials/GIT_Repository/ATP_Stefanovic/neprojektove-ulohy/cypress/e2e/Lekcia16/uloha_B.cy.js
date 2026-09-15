///<reference types = "cypress" />

describe('Zadanie_16.3.1_B práca s "Conduit"', () => {
  
  beforeEach('passes', () => {
    cy.visit('http://localhost:3000/')
    cy.viewport(1440, 1200);
  });
  it("Vytvorenie noveho clanku a nahradenie odpovede v casti 'Global Feed' v ulohe B",() => {
         
    //Prihlasenie
    cy.get("[href='/user/login']").contains("Sign in").click();
    cy.get("[placeholder='Email']").clear().type("lukas@lukas.sk");
    cy.get("[placeholder='Password']").clear().type("1234");
    cy.get("button").contains("Sign in").click();

    cy.wait(2000);

    cy.intercept("http://localhost:3000/api/articles?limit=10&offset=0", {
      articles: [
        {
          slug: "Clanok-na-prepisanie-(uloha-B)-xahrab",
          title: "NAZOV CLANKU BOL USPESNE ZMENENY - (uloha B)",
          description: "DESC CLANKU BOL USPESNE ZMENENY (uloha B)",
          body: "BODY CLANKU BOL USPESNE ZMENENY (uloha B)",
          createdAt: "2023-12-11T20:54:04.646Z",
          updatedAt: "2023-12-11T20:54:04.646Z",
          tagList: ["cypress"],
          favorited: false,
          favoritesCount: 0,
          author: {
            username: "lukas10",
            bio: null,
            image: "https://static.productionready.io/images/smiley-cyrus.jpg",
            following: false,
          },
        },
      ],
      articlesCount: 89,
    });
    
    //Vytvaranie clanku
    cy.get("[href='/editor']").click();

    cy.get("[placeholder='Article Title']").clear().type("Clanok na prepisanie (uloha B)").should("have.value", "Clanok na prepisanie (uloha B)");
    cy.get('[placeholder="What\'s this article about?"]').clear().type("test").should("have.value", "test");
    cy.get("[placeholder='Write your article (in markdown)']").clear().type("test").should("have.value", "test");
    cy.get("button").contains("Publish Article").click();

    //navigacia do global feed
    cy.contains("conduit").click();
    cy.contains("Global Feed").click();

    //overenie zmeneneho clanku
    cy.get(".article-preview").eq(0).should("contain", "NAZOV CLANKU BOL USPESNE ZMENENY - (uloha B)").click();


    //odhlasenie
    cy.get("[href='/settings']").click();
    cy.contains("Or click here to logout.").click();

  });
});