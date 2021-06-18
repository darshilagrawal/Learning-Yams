//
//  YamTesting.swift
//  Learning Yams
//
//  Created by Darshil Agrawal on 18/06/21.
//

import Foundation
import Yams

struct S: Codable {
    var p: String
}
let s = S(p: "test")


let encoderCustom = YAMLEncoder()
let encodedYAML = try! encoderCustom.encode(s)

let decoderCustom = YAMLDecoder()
let decoded = try! decoderCustom.decode(S.self, from: encodedYAML)

func testIfSame(){
print(encodedYAML == """
p: test

""")
print(s.p == decoded.p)
}
