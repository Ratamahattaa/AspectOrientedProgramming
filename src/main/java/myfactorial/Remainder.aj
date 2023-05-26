package myfactorial;

public aspect Remainder {
    int around(int n) : execution(int factorial(int)) && args(n) {
        if (n <= 0)
            return 1;
        else
            return n * Math.factorial(n - 1);
    }
}
