public with sharing class CalculatorCallout {
    public static Double addition(Double num1, Double num2) {
        calculatorServices.CalculatorImplPort calc = new calculatorServices.CalculatorImplPort();
        return calc.doAdd(num1, num2);
    }

    public static Double subtraction(double num1 , double num2){
        calculatorServices.CalculatorImplPort calc = new calculatorServices.CalculatorImplPort();
        return calc.doSubtract(num1,num2);
    }
}