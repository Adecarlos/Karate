package tests;


import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.apache.commons.io.FileUtils;

import com.intuit.karate.junit5.Karate;

import net.masterthought.cucumber.Configuration;
import net.masterthought.cucumber.ReportBuilder;

public class TestRunner {
//	@Karate.Test
//	Karate testDelete() {
//		return Karate.run("Delete").relativeTo(getClass());
//	}
//	
//	@Karate.Test
//	Karate testGet() {
//		return Karate.run("Get").relativeTo(getClass());
//	}
//
//	@Karate.Test
//	Karate testTags() {
//		return Karate.run("sample").tags("@second").relativeTo(getClass());
//	}
//	
//	@Karate.Test
//	Karate testFirstTest() {
//		return Karate.run("FirstTest").relativeTo(getClass());
//	}
//	
	@Karate.Test
	Karate testAll() {
		return Karate.run().relativeTo(getClass());
	}
	
	
	public static void generateReport(String karateOutputPath) {
        Collection<File> jsonFiles = FileUtils.listFiles(new File(karateOutputPath), new String[] {"json"}, true);
        List<String> jsonPaths = new ArrayList<>(jsonFiles.size());
        jsonFiles.forEach(file -> jsonPaths.add(file.getAbsolutePath()));
        Configuration config = new Configuration(new File("target"), "demo");
        ReportBuilder reportBuilder = new ReportBuilder(jsonPaths, config);
        reportBuilder.generateReports();
    }
	
	
}
