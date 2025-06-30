@isTest
public class MyUtilityClassTest {

    @isTest
    static void testConcatenateStrings() {
        // Test case 1: Both strings are not blank
        String result1 = MyUtilityClass.concatenateStrings('Hello', 'World');
        System.assertEquals('HelloWorld', result1);

        // Test case 2: First string is blank
        String result2 = MyUtilityClass.concatenateStrings('', 'World');
        System.assertEquals('World', result2);

        // Test case 3: Second string is blank
        String result3 = MyUtilityClass.concatenateStrings('Hello', '');
        System.assertEquals('Hello', result3);

        //Test case 4: both strings are blank
        String result4 = MyUtilityClass.concatenateStrings('','');
        System.assertEquals(null, result4);

        //test case 5: first string null
        String result5 = MyUtilityClass.concatenateStrings(null,'world');
        System.assertEquals('world', result5);

        //test case 6: second string null
        String result6 = MyUtilityClass.concatenateStrings('hello', null);
        System.assertEquals('hello', result6);

        //test case 7: both string null
        String result7 = MyUtilityClass.concatenateStrings(null, null);
        System.assertEquals(null, result7);
    }

    @isTest
    static void testIsEven() {
        // Test case 1: Even number
        Boolean result1 = MyUtilityClass.isEven(4);
        System.assertEquals(true, result1);

        // Test case 2: Odd number
        Boolean result2 = MyUtilityClass.isEven(5);
        System.assertEquals(false, result2);

        // test case 3: null input
        Boolean result3 = MyUtilityClass.isEven(null);
        System.assertEquals(null, result3);
    }

    @isTest
    static void testStringList(){
        List<String> testList = new List<String>{'test1','test2'};
        List<String> result1 = MyUtilityClass.stringList(testList);
        System.assertEquals(testList, result1);

        List<String> nullList = null;
        List<String> result2 = MyUtilityClass.stringList(nullList);
        System.assertEquals(new List<String>(), result2);

        List<String> emptyList = new List<String>();
        List<String> result3 = MyUtilityClass.stringList(emptyList);
        System.assertEquals(new List<String>(), result3);
    }

    @isTest
    static void testReturnEmptyString(){
        String result = MyUtilityClass.returnEmptyString();
        System.assertEquals('', result);
    }
}