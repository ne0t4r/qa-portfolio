///<reference types="cypress" />

import cookies from '../../pageObjects/Cookies';
import addProducts from '../../pageObjects/AddProducts';
import testCart from '../../pageObjects/TestCart';
import makeOrder from '../../pageObjects/MakeOrder';
import homePage from '../../pageObjects/HomePage';

describe('Zaverecny projekt 19.3.1 eshop testing', () => {
    const verifyCookies = new cookies();
    const addToCart = new addProducts();
    const verifyCart = new testCart();
    const fillOrderData = new makeOrder();
    const navigateInPage = new homePage();       
    
    beforeEach(() => {     
      navigateInPage.visit();      
      verifyCookies.isCookiesVisible();   
      verifyCookies.acceptCookies();       
    });

    it("Body of tests", function() {
      cy.fixture("products19.json").then(products => {      

      //cookies verify
      const cookie1 = "agy";
      const cookie2 = "CookieLawInfoConsent"

      verifyCookies.checkCookies(cookie1, cookie2);      

      //add products to cart      
      addToCart.addCategoriesProducts();            

      //test products in cart
      navigateInPage.openCart();
      verifyCart.verifyProductsInCart(products); 

      //test of quantity      
      verifyCart.testQuantity();
      verifyCart.deleteFromCart();
      verifyCart.testDiscount();

      //invalid data
      navigateInPage.openCart();
      verifyCart.acceptCart();
      fillOrderData.createWrongOrder();

      //valid data
      navigateInPage.openCart();
      verifyCart.acceptCart();
      fillOrderData.createRightOrder();   

    });
  });
});