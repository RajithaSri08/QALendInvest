package ebay.qa.test;

import cucumber.api.CucumberOptions;
import cucumber.api.junit.Cucumber;
import org.junit.runner.RunWith;

@RunWith(Cucumber.class)

@CucumberOptions(
plugin = {"html:target/cucumbber-html-report","json:build/cucumber.json"},
features = {"features"},
glue= {"ebay.qa.stepDefinations"},
tags = {"@001"}
)


public class TestRunner {
	
}
