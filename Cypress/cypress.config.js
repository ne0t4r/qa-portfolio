const { defineConfig } = require("cypress");

module.exports = defineConfig({
  e2e: {
    viewportWidth: 1920,
    viewportHeight: 1080,
    setupNodeEvents(on, config) {
      on('before:browser:launch', (browser = {}, launchOptions) => {
        if (browser.name === 'chrome' || browser.name === 'edge') {
          // Otvorí okno Chrome/Edge maximalizované
          launchOptions.args.push('--start-maximized');
          return launchOptions;
        }

        if (browser.name === 'electron') {
          // Pre nastavenie Electron prehliadača
          launchOptions.preferences['width'] = 1920;
          launchOptions.preferences['height'] = 1080;
          launchOptions.preferences['resizable'] = true;
          return launchOptions;
        }
      });
    },
  },
});