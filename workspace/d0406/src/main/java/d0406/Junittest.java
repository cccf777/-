package d0406;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

class Junittest {

	@BeforeAll
	static void setUpBeforeClass() throws Exception {
	System.out.println("@BeforeClass");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		System.out.println("@AfterClass");
	}

	@BeforeEach
	void setUp() throws Exception {
		System.out.println("@Before");
	}

	@AfterEach
	void tearDown() throws Exception {
		System.out.println("@After");
	}

	@Test
	void testCase1() {
		System.out.println("@testCase1");
	}
	@Test
	void testCase2() {
		System.out.println("@testCase2");
	}
	@Test
	void testCase3() {
		System.out.println("@testCase3");
	}

}
