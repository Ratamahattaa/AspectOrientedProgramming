public class Point {
    private int x;
    private int y;

    public Point(int x, int y) {
        this.x = x;
        this.y = y;
    }

    public void move(int dx, int dy) {
        x += dx;
        y += dy;
    }

    public void printCoordinates() {
        System.out.println("Coordinates: (" + x + ", " + y + ")");
    }

    public static void main(String[] args) {
        Point point = new Point(3, 5);
        point.move(2, -1);
        point.printCoordinates();
    }
}