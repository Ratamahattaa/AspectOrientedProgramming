public aspect CloneablePoint {
    declare parents: Point extends Cloneable;

    public Point Point.clone() {
        try {
            return (Point) super.clone();
        } catch (CloneNotSupportedException e) {
            e.printStackTrace();
            return null;
        }
    }
}
