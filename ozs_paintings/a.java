import java.io.BufferedReader;
import java.io.InputStreamReader;

class TestClass {
	public static void main(String args[]) throws Exception {
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		int t = Integer.parseInt(br.readLine());
		while (t-- > 0) {
			String[] xyz = br.readLine().split(" ");
			long x = Long.parseLong(xyz[0]);
			long y = Long.parseLong(xyz[1]);
			long z = Long.parseLong(xyz[2]);
			long a = getMaximunMoney1(x, y, z);
			long b = getMaximunMoney2(x, y, z);
			System.out.println(a > b ? a : b);
		}
	}

	private static long getMaximunMoney1(long x, long y, long z) {
		long xMax = x / 3;
		long yMax = y / 3;
		long zMax = z / 3;
		long[] possible = { x % 3, y % 3, z % 3 };
		long min = possible[0];
		for (int i = 1; i < possible.length; i++) {
			if (min > possible[i])
				min = possible[i];
		}
		return xMax + yMax + zMax + min;
	}

	private static long getMaximunMoney2(long x, long y, long z) {
		long[] possible = { x , y , z };
		long min = possible[0];
		for (int i = 1; i < possible.length; i++) {
			if (min > possible[i])
				min = possible[i];
		}
		long xMax = x - min;
		long yMax = y - min;
		long zMax = z - min;
		return xMax/3 + yMax/3 + zMax/3 + min;
	}
}
