//
//  ContentView.swift
//  Calculator SwiftUI
//
//  Created by Consultant on 8/23/22.
//

import SwiftUI
//Immediate Mode
struct ContentView: View {
    @State var calExpression: [String] = []
    @State var noBeingEntered: String = ""
    @State private var display: String = "Error"
    
    let grid = [
        ["7", "8", "9", "÷"],
        ["4", "5", "6", "×"],
        ["1", "2", "3", "−"],
        [".", "0", "=", "+"]
    ]
    
    var body: some View {
        VStack{
            TextField("Error", text: $display)
                .multilineTextAlignment(.trailing)
                .padding()
                .disabled(true)
            
            ForEach(grid, id: \.self)
            {row in
                HStack
                {
                    ForEach(row, id: \.self)
                    { btn in
                        if checkIfOperator(str: btn){
                            Button {
                                self.calExpression.append(btn)
                                self.noBeingEntered = ""
                            } label: {
                                Text(btn)
                                    .padding(20)
                                    .foregroundColor(Color.black)
                            }.background(Color.orange)
                        }
                        else{
                            Button {
                                calExpression.append(btn)
                                self.noBeingEntered.append(btn)
                                if self.calExpression.count == 0 {
                                    self.calExpression.append(self.noBeingEntered)
                                } else {
                                    if !checkIfOperator(str: self.calExpression[self.calExpression.count-1]) {
                                        self.calExpression.remove(at: self.calExpression.count-1)
                                    }
                                    self.calExpression.append(self.noBeingEntered)
                                }
                            } label: {
                                Text(btn)
                                    .padding(20)
                                    .foregroundColor(Color.black)
                            }.background(Color.gray)
                        }

                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

func checkIfOperator(str:String) -> Bool {
    
    if str == "÷" || str == "×" || str == "−" || str == "+" || str == "=" {
        return true
    }
    
    return false
    
}

