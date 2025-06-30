public class MyScheduledJob implements Schedulable {
    public void execute(SchedulableContext sc) {
        // Your scheduled job logic here
        System.debug('Scheduled job is executing.');
        
        // Example logic: You can add real logic like updating records
    }
}