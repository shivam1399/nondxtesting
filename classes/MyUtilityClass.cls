public class MyUtilityClass {

    public static String concatenateStrings(String str1, String str2) {
        if (String.isNotBlank(str1) && String.isNotBlank(str2)) {
            return str1 + str2;
        } else if (String.isNotBlank(str1)) {
            return str1;
        } else if (String.isNotBlank(str2)) {
            return str2;
        } else {
            return null;
        }
    }

    public static Boolean isEven(Integer num) {
        if (num != null) {
            return Math.mod(num, 2) == 0;
        } else {
            return null;
        }
    }

    public static List<String> stringList(List<String> inputList){
        if(inputList != null && !inputList.isEmpty()){
            return inputList;
        }
        else{
            return new List<String>();
        }
    }

    public static String returnEmptyString(){
        return '';
    }
}