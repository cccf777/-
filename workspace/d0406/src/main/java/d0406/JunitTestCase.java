package d0406;



import static org.junit.Assert.assertTrue;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

class JunitTestCase {

	@BeforeAll
	static void setUpBeforeClass() throws Exception {
	}
	@AfterAll
	static void tearDownAfterClass() throws Exception {
	}
	@BeforeEach
	void setUp() throws Exception {
	}
	@AfterEach
	void tearDown() throws Exception {
	}
	
	@Test
	void testSum() {
		double result;
		result=Calculator.sum(4, 5);
		assertTrue("결과는 9",(result==9));
	}

	@Test
	void testSubtract() {
		double result;
		result=Calculator.subtract(4, 5);
		assertTrue("결과는 -1",(result==-1));
	}

	@Test
	void testMultiply() {
		double result;
		result=Calculator.multiply(4, 5);
		assertTrue("결과는 20",(result==20));
	}

	@Test
	void testDibide() {
		double result;
		result=Calculator.divide(20, 5);
		assertTrue("결과는 4",(result==4));
	}

	@Test
	void testCeil() {
		double result;
		result=Calculator.ceil(3.6);
		assertTrue("결과는 4",(result==4));
	}

	@Test
	void testFloor() {
		double result;
		result=Calculator.floor(3.6);
		assertTrue("결과는 3",(result==3));
	}

	@Test
	void testAbs() {
		double result;
		result=Calculator.abs(-3);
		assertTrue("결과는 3",(result==3));
	}
}
