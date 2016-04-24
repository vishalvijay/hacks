public class Solution2 {
	// X and Y co-ordinates of the points in order.
	// Each point is represented by (X.get(i), Y.get(i))
	public int coverPoints(ArrayList<Integer> X, ArrayList<Integer> Y) {
		int steps = 0;
		if (X.size() > 1) {
			for (int i = 1; i < X.size(); i++) {
				int xD = Math.abs(X.get(i-1) - X.get(i));
				int yD = Math.abs(Y.get(i-1)-Y.get(i));
				steps += xD < yD ? yD : xD;
			}
		}
		return steps;
	}
}