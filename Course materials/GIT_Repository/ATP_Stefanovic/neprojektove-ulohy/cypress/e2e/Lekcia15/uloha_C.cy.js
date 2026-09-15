///<reference types = "cypress" />
 
describe('Zadanie 15.3.1_C práca s  "Common Datepicker"', () => {
    before("", () => {
      cy.visit("http://localhost:4200/");
      cy.viewport(1440, 1200);
    });
    it("Scenár pre kalendár 'Common Datepicker' ", () => {
      cy.contains("Forms").click();
      cy.contains("Datepicker").click();
   
      const datum = new Date(2024, 0, 1);   
      const mesiace = ["Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec",];   
      const retazovyZapisPreDatum = mesiace[datum.getMonth()] + " " + datum.getDate() + ", " + datum.getFullYear();   
      const datumPlus10 = new Date(datum.getFullYear(),datum.getMonth(),datum.getDate() + 10);
      const stringZapis = mesiace[datumPlus10.getMonth()] + " " + datumPlus10.getDate() + ", " + datumPlus10.getFullYear();
   
      cy.contains("Common Datepicker").parent().find("input").then((input) => {
          cy.wrap(input).type(retazovyZapisPreDatum);
   
          cy.wrap(input).then((input) => {
            expect(input).have.value(retazovyZapisPreDatum);
          });
   
          cy.wrap(input).clear();
   
          cy.wrap(input).type(stringZapis);
   
          cy.wrap(input).then((input) => {
            expect(input).have.value(stringZapis);
          });
        });
    });
  });
   