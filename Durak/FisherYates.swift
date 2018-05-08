//
//  FisherYates.swift
//  Durak
//
//  Created by Caroline Berger on 08/05/2018.
//  Copyright © 2018 Caroline Berger. All rights reserved.
//

#if os(Linux)
    import Glibc
#else
    import Darwin.C
#endif

public extension MutableCollectionType where Index == Int {
    mutating func shuffleInPlace() {
        if count <= 1 { return }
        
        for i in 0..<count - 1 {
            #if os(Linux)
                let j = Int(random() % (count - i)))) + i
                #else
                let j = Int(arc4random_uniform(UInt32(count - i))) + i
                #endif
                if i == j { continue }
                swap(&self[i], &self[j])
            }
            }
}
