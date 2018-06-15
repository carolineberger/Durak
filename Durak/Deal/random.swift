
import Darwin
    
public func random<T: BinaryInteger> (_ n: T) -> T {
    return numericCast( arc4random_uniform( numericCast(n) ) )
}

