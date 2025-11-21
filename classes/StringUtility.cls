public class StringUtility {
 
    // ==============================
    // Constants
    // ==============================
    public static final String DEFAULT_VALUE = 'Default String';
    public static final Integer MAX_LIMIT = 100;
 
    // ==============================
    // List of Strings
    // ==============================
    public static List<String> stringList = new List<String>();
 
    // ==============================
    // Add String to List
    // ==============================
    public static void addString(String input) {
        if (String.isEmpty(input)) {
            input = DEFAULT_VALUE;
        }
        stringList.add(input);
    }
 
    // ==============================
    // Get All Strings
    // ==============================
    public static List<String> getAllStrings() {
        return stringList;
    }
 
    // ==============================
    // Get String at Index
    // ==============================
    public static String getString(Integer index) {
        if (index < 0 || index >= stringList.size()) {
            return 'Out of Bounds';
        }
        return stringList[index];
    }

    public static void removeString(Integer index) {
        if (index >= 0 && index < stringList.size()) {
            stringList.remove(index);
        }
    }
 
    // ==============================
    // Reverse String List
    // ==============================
    public static List<String> reverseStrings() {
        List<String> reversedList = new List<String>();
        for (Integer i = stringList.size() - 1; i >= 0; i--) {
            reversedList.add(stringList[i]);
        }
        return reversedList;
    }
 
    // ==============================
    // Find Longest String
    // ==============================
    public static String findLongestString() {
        if (stringList.isEmpty()) {
            return 'No Data';
        }
        String longest = stringList[0];
        for (String str : stringList) {
            if (str.length() > longest.length()) {
                longest = str;
            }
        }
        return longest;
    }
 
    // ==============================
    // Sort Strings Alphabetically
    // ==============================
    public static List<String> sortStrings() {
        List<String> sortedList = new List<String>(stringList);
        sortedList.sort();
        return sortedList;
    }
 
    // ==============================
    // Convert Strings to Uppercase
    // ==============================
    public static List<String> toUpperCaseList() {
        List<String> upperCaseList = new List<String>();
        for (String str : stringList) {
            upperCaseList.add(str.toUpperCase());
        }
        return upperCaseList;
    }
 
    // ==============================
    // Check If a String Exists
    // ==============================
    public static Boolean containsString(String search) {
        return stringList.contains(search);
    }
 
    // ==============================
    // Merge Two String Lists
    // ==============================
    public static List<String> mergeLists(List<String> otherList) {
        List<String> mergedList = new List<String>(stringList);
        mergedList.addAll(otherList);
        return mergedList;
    }
 
    // ==============================
    // Replace a String in the List
    // ==============================
    public static void replaceString(Integer index, String newValue) {
        if (index >= 0 && index < stringList.size()) {
            stringList[index] = newValue;
        }
    }
 
    // ==============================
    // Remove Duplicates
    // ==============================
    public static List<String> removeDuplicates() {
        Set<String> uniqueStrings = new Set<String>(stringList);
        return new List<String>(uniqueStrings);
    }
    
    // ==============================
    // Get Strings of a Certain Length
    // ==============================
    public static List<String> getStringsByLength(Integer length) {
        List<String> result = new List<String>();
        for (String str : stringList) {
            if (str.length() == length) {
                result.add(str);
            }
        }
        return result;
    }
 
    // ==============================
    // Replace All Occurrences of a Word
    // ==============================
    public static void replaceWord(String oldWord, String newWord) {
        for (Integer i = 0; i < stringList.size(); i++) {
            stringList[i] = stringList[i].replace(oldWord, newWord);
        }
    }
}