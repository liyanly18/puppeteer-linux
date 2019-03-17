const puppeteer = require('puppeteer');

(async () => {
  let args = ['--no-sandbox', '--disable-setuid-sandbox'];

  const browser = await puppeteer.launch({ args: args });
  const page = await browser.newPage();
  await page.goto('https://example.com/');

  // Get the "viewport" of the page, as reported by the page.
  const dimensions = await page.evaluate(() => {
    return {
      width: document.documentElement.clientWidth,
      height: document.documentElement.clientHeight,
      deviceScaleFactor: window.devicePixelRatio
    };
  });

  console.log('example.com dimensions:', dimensions);

  await browser.close();
})();
