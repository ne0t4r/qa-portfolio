///<reference types = "cypress" />

describe('Zadanie 15.3.1_A scenar pre Tables & Data', () => {
    beforeEach('', () => {
      cy.visit('http://localhost:4200/')
      cy.viewport(1440, 1200);
    });

    it("Test bez funkcie", () => {

      cy.contains("Tables & Data").click();
      cy.contains("Smart Table").click();
     
      cy.get("[placeholder='Age']").type("18").get(".ng-star-inserted")
      .should("contain", "3").should("contain", "Larry").should("contain", "Bird").should("contain", "@twitter")
      .should("contain", "twitter@outlook.com").should("contain", "18");
      
      cy.get("[placeholder='Age']").clear().type("25").get(".ng-star-inserted")
      .should("contain", "34").should("contain", "Lena").should("contain", "Pitts").should("contain", "@Forbes")
      .should("contain", "lenaforbes@comtours.com").should("contain", "25")      
      .should("contain", "54").should("contain", "Dalton").should("contain", "Walker").should("contain", "@Hendricks")
      .should("contain", "daltonhendricks@comtours.com").should("contain", "25");
      
      cy.get("[placeholder='Age']").clear().type("40").get(".ng-star-inserted")
      .should("contain", "14").should("contain", "Garegin").should("contain", "Jirair").should("contain", "@garegin")
      .should("contain", "garegin@gmail.com").should("contain", "40")
      .should("contain", "50").should("contain", "Rebekah").should("contain", "Duran").should("contain", "@Gross")
      .should("contain", "rebekahgross@comtours.com").should("contain", "40")
      
      cy.get("[placeholder='Age']").clear().type("33").get(".ng-star-inserted")
      .should("contain", "10").should("contain", "Karen").should("contain", "Sevan").should("contain", "@karen")
      .should("contain", "karen@yandex.ru").should("contain", "33");

    });    
    
    it("Test s funkciou", () => {
        cy.contains("Tables & Data").click();
        cy.contains("Smart Table").click();            
        
        const ages = ["18", "25", "40", "33"];
        const data = [
            {id: "3",fname: "Larry", lname: "Bird",username:"@twitter",email:"twitter@outlook.com",age: "18"},
            {id: "34",fname: "Lena", lname: "Pitts",username:"@Forbes",email:"lenaforbes@comtours.com",age: "25"},
            {id: "54",fname: "Dalton", lname: "Walker",username:"@Hendricks",email:"daltonhendricks@comtours.com",age: "25"},
            {id: "14",fname: "Garegin", lname: "Jirair",username:"@garegin",email:"garegin@gmail.com",age: "40"},
            {id: "50",fname: "Rebekah", lname: "Duran",username:"@Gross",email:"rebekahgross@comtours.com",age: "40"},
            {id: "10",fname: "Karen", lname: "Sevan",username:"@karen",email:"karen@yandex.ru",age: "33"}
        ];            
        
        cy.wrap(data).each(item => {
          cy.contains("Age").click().then(() => { 
            cy.get("[placeholder='Age']").clear().type(item.age);
            cy.get(".ng-star-inserted").should("contain", item.age).should("contain", item.id).should("contain", item.fname)
            .should("contain", item.lname).should("contain", item.username).should("contain", item.email);
              
            });
          })
      });
    }); 

    
