public class StringListHandler {
 
    public static final String DEFAULT_MESSAGE = 'Hello from Apex!';
    public static final Integer MAX_SIZE = 10;
 
    public static List<String> messages = new List<String>();

    public static void addMessage(String message) {
        if (String.isEmpty(message)) {
            message = DEFAULT_MESSAGE;
        }
        messages.add(message);
    }

    public static List<String> getAllMessages() {
        return messages;
    }
 

    public static String getMessage(Integer index) {
        if (index < 0 || index >= messages.size()) {
            return 'Invalid Index';
        }
        return messages[index];
    }

    public static void removeMessage(Integer index) {
        if (index >= 0 && index < messages.size()) {
            messages.remove(index);
        }
    }
 
    public static void clearMessages() {
        messages.clear();
    }

    public static List<String> reverseMessages() {
        List<String> reversedList = new List<String>();
        for (Integer i = messages.size() - 1; i >= 0; i--) {
            reversedList.add(messages[i]);
        }
        return reversedList;
    }
    public static String findLongestMessage() {
        String longest = '';
        for (String msg : messages) {
            if (msg.length() > longest.length()) {
                longest = msg;
            }
        }
        return longest;
    }
 

    public static Boolean containsMessage(String search) {
        return messages.contains(search);
    }
 

    public static List<String> toUpperCase() {
        List<String> upperCaseList = new List<String>();
        for (String msg : messages) {
            upperCaseList.add(msg.toUpperCase());
        }
        return upperCaseList;
    }

    public static Integer countMessagesContaining(String word) {
        Integer count = 0;
        for (String msg : messages) {
            if (msg.contains(word)) {
                count++;
            }
        }
        return count;
    }

    public static List<String> getShortMessages(Integer length) {
        List<String> shortMessages = new List<String>();
        for (String msg : messages) {
            if (msg.length() < length) {
                shortMessages.add(msg);
            }
        }
        return shortMessages;
    }
 

    public static String joinMessages(String delimiter) {
        return String.join(messages, delimiter);
    }
 

    public class ScheduledLogger implements Schedulable {
        public void execute(SchedulableContext SC) {
            System.debug('Scheduled Log: ' + joinMessages(' | '));
        }
    }
 
        public void execute(Database.BatchableContext BC, List<String> batchMessages) {
            for (Integer i = 0; i < batchMessages.size(); i++) {
                batchMessages[i] = batchMessages[i] + ' - Processed';
            }
            messages = batchMessages;
        }
 

    }