package com.demoqa.runners;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.*;
import org.junit.runner.*;

@RunWith(Cucumber.class)
@CucumberOptions(
        plugin = {
                "html:target/cucumber-reports.html",
                "me.jvt.cucumber.report.PrettyReports:target/cucumber"
        },
        features = "src/test/resources/features",
        glue = "com/demoqa/step_definitions",
        dryRun = true,
        tags = "@wip",
        publish = false //generating a report with public link
)
public class CukesRunner {
}
