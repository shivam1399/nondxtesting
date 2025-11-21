public with sharing class StatsUtil {
    /**
     * Returns the average of a list of integers, or null for null/empty input.
     * BUG (intentional): integer division loses the fractional part.
     */
    public static Decimal average(List<Integer> nums) {
        if (nums == null || nums.isEmpty()) return null;

        Integer sum = 0;
        for (Integer n : nums) sum += n;

        // ❌ BUG: (sum / size) is integer division → 3/2 == 1, not 1.5
        Decimal avg = (Decimal)(sum / nums.size());
        return avg.setScale(2);
    }
}