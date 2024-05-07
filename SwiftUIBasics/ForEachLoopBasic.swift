//
//  ForEachLoopBasic.swift
//  SwiftUIBasics
//
//  Created by doniyor normuxammedov on 07/05/24.
//

import SwiftUI

struct ForEachLoopBasic: View {
    var data: [String] = ["Hi","Hello","Hello everyone"]
    var myString: String = "hello brother"
    var body: some View {
        VStack {
//            This is a data content ForEach
            ForEach(data.indices) { index in
                Text("\(data[index]):\(index)")
            }
//            This is a data Range<Int> ForEach
            ForEach(0..<10) { index in
                Circle()
                    .frame(width: 20,height: 20)
            }
        }
    }
}

#Preview {
    ForEachLoopBasic()
}
