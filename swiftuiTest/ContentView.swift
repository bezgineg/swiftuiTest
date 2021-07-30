//
//  ContentView.swift
//  swiftuiTest
//
//  Created by user196284 on 7/30/21.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        VStack(spacing: 16) {
            Text("Это заголовок")
                .modifier(Title())
            Text("Это основной текст")
                .modifier(Description())
        }
    }
}

struct Title: ViewModifier {
    func body(content: Content) -> some View {
        content
            .background(Color.orange)
            .font(.system(size: 50, weight: .bold, design: .default))
    }
}

struct Description: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(size: 20, weight: .regular, design: .default))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

/*struct Decision: Identifiable {
    
    var id: String {
        string
    }
    let string: String
}

struct ContentView: View {
    @State var decision: Decision?
    
    var body: some View {
        VStack(spacing: 16) {
           Text("To be or not to be?")
            Button("To be") {
                decision = .init(string: "to be")
            }
            Button("Not to be") {
                decision = .init(string: "not to be")
            }
        }
        .alert(item: $decision) { decision in
            Alert(title: Text(decision.string), message: Text("Poor Yorik"), dismissButton: .cancel())
        }
    }
}*/

/*struct ContentView: View {
    
    @State var speed = 50.0
    @State var isEditing = false
    
    var body: some View {
        VStack {
            Slider(value: $speed, in: 0...100) { isEditing in
                self.isEditing = isEditing
            }
            Text("\(speed)")
                .foregroundColor(isEditing ? .red : .green)
        }
    }
}*/

/*struct ContentView: View {
    
    @State var notificationEnabled = false
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    Toggle(isOn: $notificationEnabled, label: {
                        Text("Notification Enabled")
                    })
                }
            }
            .navigationTitle("Settings")
        }
    }
}*/
