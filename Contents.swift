//1 rank function with sorted array
let numbers = [1,4,5,7,8,10,11,15,25,40]


func rank (array: [Int],key:Int) -> Int
{
    var lo = 0
    var hi = array.count - 1
    
    while lo <= hi {
        let mid = lo + (hi - lo) / 2
        
        if key < array[mid]
        {
            hi = mid - 1
        }
        else if key > array[mid]
        {
            lo = mid + 1
        }
        else
        {
            return mid
        }
    }
    return -1
}

//below call will print the index as they are present in the number array
print(rank(array: numbers, key: 11))
print(rank(array: numbers, key: 25))
print(rank(array: numbers, key: 1))
print(rank(array: numbers, key: 40))
print(rank(array: numbers, key: 5))
print(rank(array: numbers, key: 15))
// below are not present in number Array
print(rank(array: numbers, key: 17))
print(rank(array: numbers, key: 46))


//2. Fraction Class with methods and return fraction class object

class Fraction {
    
    var numerator: Int = 0
    var denominator: Int = 1
    
    init(_ numerator: Int,over denominator:Int) {
        self.denominator = denominator
        self.numerator = numerator
    }
    
    init()
    {
        
    }
    
    func print()
    {
        Swift.print("\(numerator)/\(denominator)")
    }
    
    func add(f:Fraction) -> Fraction {
        let output: Fraction = Fraction()
        output.numerator = numerator * f.denominator + denominator * f.numerator
        output.denominator = denominator * f.denominator
        output.reduce()
        return output
    }
    

    
    func subtract(f: Fraction) -> Fraction
    {
        let output: Fraction = Fraction()
        output.numerator = numerator * f.denominator - denominator * f.numerator
            output.denominator = denominator * f.denominator
           output.reduce()
        return output
    }
    
    func multiply(_ f: Fraction) -> Fraction
    {
        let output: Fraction = Fraction()
        output.numerator = numerator * f.numerator
          output.denominator = denominator * f.denominator
            output.reduce()
        return output
    }
    
    func divide(_ f: Fraction) -> Fraction
    {
        let output: Fraction = Fraction()
       output.numerator = numerator * f.denominator
        output.denominator = denominator * f.numerator
    
        output.reduce()
        return output
    }
    func reduce()
    {
        var u = abs(numerator)
        var v = denominator
        var r: Int
        
        while(v != 0)
        {
            r = u % v;
            u = v ;
            v = r
        }
        numerator /= u
        denominator /= u
    }
  
}

//test case
var f1 = Fraction(1,over:2)
var f2 = Fraction(1,over:4)
var f3 = f1.add(f:f2)
f3.print()

var f7 = Fraction(4,over:7)
var f12 = Fraction(5,over:3)
var f4 = f7.subtract(f: f12)
f4.print()

var f9 = Fraction(3,over:9)
var f8 = Fraction(1,over:4)
var f5 = f8.multiply(f9)
f5.print()

var f10 = Fraction(5,over:2)
var f11 = Fraction(7,over:4)
var f6 = f10.divide(f11)
f6.print()
