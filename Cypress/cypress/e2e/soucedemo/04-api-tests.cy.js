describe('04 - API Testing & Network Interception', () => {

  const apiBaseUrl = 'https://reqres.in/api';

  context('1. Direct Backend API Testing (ReqRes REST API)', () => {

    it('1. GET - Získanie zoznamu používateľov a validácia dát', () => {
      cy.request('GET', `${apiBaseUrl}/users?page=2`).then((response) => {
        expect(response.status).to.eq(200);
        expect(response.body).to.have.property('page', 2);
        expect(response.body.data).to.be.an('array').that.is.not.empty;
        
        const firstUser = response.body.data[0];
        expect(firstUser).to.have.property('email');
        expect(firstUser).to.have.property('first_name');
        expect(firstUser.email).to.include('@reqres.in');
      });
    });

    it('2. POST - Vytvorenie nového používateľa (Create User)', () => {
      const newUser = {
        name: 'Ján Novák',
        job: 'QA Engineer'
      };

      cy.request('POST', `${apiBaseUrl}/users`, newUser).then((response) => {
        expect(response.status).to.eq(201);
        expect(response.body.name).to.eq(newUser.name);
        expect(response.body.job).to.eq(newUser.job);
        expect(response.body).to.have.property('id');
        expect(response.body).to.have.property('createdAt');
      });
    });

    it('3. DELETE - Vymazanie používateľa', () => {
      cy.request('DELETE', `${apiBaseUrl}/users/2`).then((response) => {
        expect(response.status).to.eq(204);
      });
    });

  });

  context('2. API Interception & Mocking (ReqRes API)', () => {

    it('4. Mocking API odpovede (Simulácia vlastných dát cez cy.intercept)', () => {
      cy.intercept('GET', `${apiBaseUrl}/users/1`, {
        statusCode: 200,
        body: {
          data: {
            id: 1,
            email: 'custom.qa@portfolio.com',
            first_name: 'Peter',
            last_name: 'Tester'
          }
        }
      }).as('getMockedUser');

      cy.window().then((win) => {
        win.fetch(`${apiBaseUrl}/users/1`);
      });

      cy.wait('@getMockedUser').its('response.body.data.email').should('eq', 'custom.qa@portfolio.com');
    });

  });

});