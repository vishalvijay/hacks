import java.util.Arrays;

public class Solutions {
	static int diceGame(String[] result) {
		int sum = 0;
		if (result.length > 0) {
			int arr[] = new int[result[0].length()];
			for (String s : result) {
				int cArr[] = new int[s.length()];
				for (int i = 0; i < s.length(); i++) {
					cArr[i] = Character.getNumericValue(s.charAt(i));
				}
				Arrays.sort(cArr);
				for (int i = 0; i < cArr.length; i++) {
					if (cArr[i] > arr[i]) {
						arr[i] = cArr[i];
					}
				}
			}
			for (int i : arr) {
				sum += i;
			}
		}
		return sum;
	}

	public static void main(String[] args) {
		System.out.println(diceGame(new String[] { "137", "364", "115", "724" }));
	}
}
