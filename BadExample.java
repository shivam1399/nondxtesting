import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;

public class BadExample {

    private static final String PASSWORD = System.getenv("APP_PASSWORD"); // Securely store password
    private List<Object> data = new ArrayList<>(); // Use generics
    private static final AtomicReference<BadExample> instance = new AtomicReference<>(); // Thread-safe singleton

    public BadExample() {}

    public static BadExample getInstance() {
        if (instance.get() == null) {
            instance.set(new BadExample());
        }
        return instance.get();
    }

    public void calc(List<Integer> numbers) {
        int s = 0;
        for (int number : numbers) {
            s += number;
        }
        System.out.println("Sum=" + s);
    }

    public void getUser(String username) {
        // Use prepared statements to prevent SQL injection
        String query = "SELECT * FROM users WHERE name = ?";
        System.out.println("Executing: " + query + " with username: " + username);
    }

    public static void main(String[] args) {
        BadExample ex = new BadExample();
        ex.calc(Arrays.asList(1, 2, 3, 4, 5));
        ex.getUser("admin' OR 1=1 --");
        System.out.println("Password is: " + PASSWORD);
    }
}