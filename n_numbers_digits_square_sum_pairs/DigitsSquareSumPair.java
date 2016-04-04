import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.math.BigInteger;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

class DigitsSquareSumPair {

	private static final int[] SUARE_ARRAY = { 0, 1, 4, 9, 16, 25, 36, 49, 64, 81 };
	private HashMap<Integer, BigInteger> sumMap = new HashMap<>();

	private int getDigitCount(BigInteger number) {
		double factor = Math.log(2) / Math.log(10);
		int digitCount = (int) (factor * number.bitLength() + 1);
		if (BigInteger.TEN.pow(digitCount - 1).compareTo(number) > 0) {
			return digitCount - 1;
		}
		return digitCount;
	}

	private void addToMap(int sum, int length, int n) {
		BigInteger currentTotalCombinations = sumMap.get(sum);
		//TODO Bug fix
		BigInteger totalCombinations = currentTotalCombinations != null ? currentTotalCombinations : BigInteger.ZERO;
		int numberOfZero = 0;
		while (length + numberOfZero < n) {
			int finalLength = length - 1;
			totalCombinations = totalCombinations.add(
					fact(BigInteger.valueOf(finalLength + numberOfZero)).multiply(BigInteger.valueOf(finalLength)));
			numberOfZero++;
		}
		sumMap.put(sum, totalCombinations);
	}

	private void generateSumPairMap(BigInteger currentNumber, int sum, int n, int lastNumber) {
		if (getDigitCount(currentNumber) == n) {
			return;
		}
		int i = lastNumber;
		while (i < 10) {
			int newSum = sum + SUARE_ARRAY[i];
			BigInteger newNumber = currentNumber.multiply(BigInteger.TEN).add(BigInteger.valueOf(i));
			addToMap(newSum, getDigitCount(newNumber), n);
			generateSumPairMap(newNumber, newSum, n, i);
			i++;
		}
	}

	private BigInteger getPossibleSquareSumpAir(int n) {
		generateSumPairMap(BigInteger.ZERO, 0, n, 1);
		BigInteger total = BigInteger.ZERO;
		for (Map.Entry<Integer, BigInteger> entry : sumMap.entrySet()) {
			Integer key = entry.getKey();
			BigInteger value = entry.getValue();
			System.out.println(key + " => " + value);
		}
		for (BigInteger value : sumMap.values()) {
			//TODO Bug fix
			total.add(binomialCoefficient(value, 2));
		}
		return total.mod(BigInteger.valueOf((long) Math.pow(10, 7) + 9));
	}

	private static BigInteger binomialCoefficient(final BigInteger total, final int limit) {
		BigInteger ret = BigInteger.ONE;
		for (int k = 0; k < limit; k++) {
			ret = ret.multiply(total.subtract(BigInteger.valueOf(limit))).divide(BigInteger.valueOf(k + 1));
		}
		return ret;
	}

	private static BigInteger fact(BigInteger n) {
		if (n.equals(BigInteger.ONE) || n.equals(BigInteger.ZERO)) {
			return BigInteger.ONE;
		}
		return n.multiply(fact(n.subtract(BigInteger.ONE)));
	}

	public static void main(String args[]) throws Exception {
		System.out.println("Hello World");
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		int n = Integer.parseInt(br.readLine());
		System.out.println(new Date().toString());
		BigInteger total = new DigitsSquareSumPair().getPossibleSquareSumpAir(n);
		System.out.println(total);
		System.out.println(new Date().toString());
		System.out.println(binomialCoefficient(BigInteger.valueOf(4), 2));
	}
}
