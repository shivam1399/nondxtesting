public class LargeStringUtility {
 
    // ==============================
    // Constants
    // ==============================
    public static final String DEFAULT_VALUE = 'Default';
    public static final Integer MAX_LIMIT = 50;
    public static List<String> stringList = new List<String>();
 
    // ==============================
    // Adding Text to the List
    // ==============================
    public static void addText(String text) {
        if (String.isEmpty(text)) {
            text = DEFAULT_VALUE;
        }
        stringList.add(text);
    }
 
    // ==============================
    // Get All Strings
    // ==============================
    public static List<String> getAllStrings() {
        return stringList;
    }
 
    // ==============================
    // Remove Text by Index
    // ==============================
    public static void removeText(Integer index) {
        if (index >= 0 && index < stringList.size()) {
            stringList.remove(index);
        }
    }
 
    // ==============================
    // Reverse Text List
    // ==============================
    public static List<String> reverseStrings() {
        List<String> reversedList = new List<String>();
        for (Integer i = stringList.size() - 1; i >= 0; i--) {
            reversedList.add(stringList[i]);
        }
        return reversedList;
    }
 
    // ==============================
    // Find the Shortest String
    // ==============================
    public static String findShortestString() {
        if (stringList.isEmpty()) {
            return 'No Strings Available';
        }
        String shortest = stringList[0];
        for (String s : stringList) {
            if (s.length() < shortest.length()) {
                shortest = s;
            }
        }
        return shortest;
    }
 
    // ==============================
    // Convert Strings to Upper Case
    // ==============================
    public static List<String> convertToUpper() {
        List<String> upperList = new List<String>();
        for (String s : stringList) {
            upperList.add(s.toUpperCase());
        }
        return upperList;
    }
 
    // ==============================
    // Check If a String Exists
    // ==============================
    public static Boolean containsString(String searchText) {
        return stringList.contains(searchText);
    }
 
    // ==============================
    // Count Strings Containing a Word
    // ==============================
    public static Integer countOccurrences(String word) {
        Integer count = 0;
        for (String s : stringList) {
            if (s.contains(word)) {
                count++;
            }
        }
        return count;
    }
 
    // ==============================
    // Get Strings Longer Than a Given Length
    // ==============================
    public static List<String> getLongStrings(Integer minLength) {
        List<String> longStrings = new List<String>();
        for (String s : stringList) {
            if (s.length() > minLength) {
                longStrings.add(s);
            }
        }
        return longStrings;
    }
 
    // ==============================
    // Concatenate All Strings
    // ==============================
    public static String concatenateStrings(String separator) {
        return String.join(stringList, separator);
    }
 
    // ==============================
    // Reverse Each String in the List
    // ==============================
    public static List<String> reverseEachString() {
        List<String> reversedStrings = new List<String>();
        for (String s : stringList) {
            reversedStrings.add(reverseString(s));
        }
        return reversedStrings;
    }
 
    // ==============================
    // Reverse a Single String
    // ==============================
    public static String reverseString(String input) {
        String reversed = '';
        for (Integer i = input.length() - 1; i >= 0; i--) {
            reversed += input.substring(i, i + 1);
        }
        return reversed;
    }
 
    // ==============================
    // Replace All Vowels with "*"
    // ==============================
    public static List<String> maskVowels() {
        List<String> maskedList = new List<String>();
        for (String s : stringList) {
            maskedList.add(s.replaceAll('[AEIOUaeiou]', '*'));
        }
        return maskedList;
    }
 
    // ==============================
    // Find the Longest String
    // ==============================
    public static String findLongestString() {
        if (stringList.isEmpty()) {
            return 'No Data';
        }
        String longest = stringList[0];
        for (String s : stringList) {
            if (s.length() > longest.length()) {
                longest = s;
            }
        }
        return longest;
    }
}