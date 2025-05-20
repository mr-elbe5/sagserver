package sag;

import java.util.ArrayList;
import java.util.List;

public class PrimeNumberCalculator
{
    int maxPrimeNumbers = 0;

    public List<Integer> primeNumbers;

    public void calculate(int maxNumbers){
        maxPrimeNumbers = maxNumbers;
        primeNumbers = new ArrayList<Integer>();
        primeNumbers.add(2);
        int number = 2;
        while (primeNumbers.size() < maxNumbers) {
            number++;
            boolean isPrime = true;
            for (int i = 2; i <= Math.sqrt(number); i++) {
                if (number % i == 0) {
                    isPrime = false;
                }
            }
            if (isPrime) {
                primeNumbers.add(number);
            }
        }
        System.out.println("done");
    }

}
