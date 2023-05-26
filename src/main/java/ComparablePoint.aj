public aspect ComparablePoint {
    pointcut comparePoint(Point p1, Point p2): execution(public int Point.compareTo(Point)) && args(p1) && target(p2);

    before(Point p1, Point p2): comparePoint(p1, p2) {
        System.out.println("Comparing points: " + p1 + " and " + p2);
    }

    after(Point p1, Point p2) returning (int result): comparePoint(p1, p2) {
        System.out.println("Comparison result: " + result);
    }
}

