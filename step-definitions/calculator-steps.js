const {By} = require('selenium-webdriver');
const { Eyes, Target } = require('@applitools/eyes-selenium');

module.exports = function() {
	this.Given(/^Open chrome browser and start application$/, function() {
		return helpers.loadPage('https://www.online-calculator.com/full-screen-calculator/');
	});

	this.When(/^I enter following values to calculate$/, function(dataTable) {
		var strX = dataTable.raw()[0][1];
		var strY = dataTable.raw()[1][1];
		var strOperation = dataTable.raw()[2][1];
	
		enterNumber(strX);
		driver.actions().sendKeys(strOperation).perform();
		enterNumber(strY);
		driver.actions().sendKeys("=").perform();
		try {
			driver.findElement(By.id("fullframe")).then(function() {
        		sleep(5000);
			});
		} catch(e) {
			console.log("Wait to capture screen");
		}
		
	});

	this.Then(/^I should be able to verify the result of testcase \"([^\"]*)\" on applitool$/, function(tc_description) {
		eyes.check(tc_description, Target.window().fully());
	});

	function enterNumber(strNumber) {
		if (strNumber.includes("-")) {
			driver.actions().sendKeys(strNumber.substring(1)).perform();
			driver.actions().sendKeys('#').perform();
		} else if (strNumber.includes(".")) {
			var numArr = strNumber.split('.');
			driver.actions().sendKeys(numArr[0]).perform();
			driver.actions().sendKeys('.').perform();
			driver.actions().sendKeys(numArr[1]).perform();
		} else {
			driver.actions().sendKeys(strNumber).perform();
		}
		
	}
	
	function sleep(ms) {
		var unixtime_ms = new Date().getTime();
		while (new Date().getTime() < unixtime_ms + ms) { console.log("Waiting...") }
	}
}

