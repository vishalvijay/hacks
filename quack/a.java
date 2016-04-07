
public class Quacking {

	private int charPreviousValue(char c) {
		switch (c) {
		case 'q':
			return 0;
		case 'u':
			return 1;
		case 'a':
			return 2;
		case 'c':
			return 3;
		case 'k':
			return 4;
		default:
			return -1;
		}
	}

	public int quack(String s) {
		int mapMaxLenght = 0;
		int[] map = new int[500];

		for (int i = 0; i < s.length(); i++) {
			char c = s.charAt(i);
			boolean isInserted = false;
			for (int j = 0; j <= mapMaxLenght; j++) {
				if (map[j] == charPreviousValue(c)) {
					if(c == 'q' && mapMaxLenght == j){
						mapMaxLenght++;
					}
					map[j]++;
					if (map[j] == 5) {
						map[j] = 0;
					}
					isInserted = true;
					break;
				}
			}
			if (!isInserted)
				return -1;
		}

		for (int i = 0; i <= mapMaxLenght; i++) {
			if (map[i] != 0)
				return -1;
		}

		return mapMaxLenght;
	}
}
