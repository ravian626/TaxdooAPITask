package tests;

//import static org.junit.Assert.assertTrue;

//import java.awt.List;
//import java.io.File;
//import java.util.ArrayList;
//import java.util.Collection;
//import java.util.function.Consumer;

//import org.apache.commons.io.FileUtils;
//import org.junit.Test;
import org.junit.runner.RunWith;

import com.intuit.karate.junit4.Karate;

//import com.intuit.karate.Results;
//import com.intuit.karate.Runner;
//



@RunWith(Karate.class)
public class TestRunner {

//	 @SuppressWarnings("deprecation")
//	@Test
//	    public void testParallel() {
//	        Results results = Runner.parallel(getClass(), 5);
//	        generateReport(results.getReportDir());
//	        assertTrue(results.getErrorMessages(), results.getFailCount() == 0);
//	    }
//
//	    public static void generateReport(String karateOutputPath) {
//	        Collection<File> jsonFiles = FileUtils.listFiles(new File(karateOutputPath), new String[] {"json"}, true);
//	        final ArrayList<String> jsonPaths = new ArrayList<String>(jsonFiles.size());
//	        jsonFiles.forEach(new Consumer<File>() {
//				public void accept(File file) {
//					jsonPaths.add(file.getAbsolutePath());
//				}
//			});
//	        Configuration config = new Configuration(new File("target"), "Karate");
//	        ReportBuilder reportBuilder = new ReportBuilder(jsonPaths, config);
//	        reportBuilder.generateReports();
//	    }
	
}
	