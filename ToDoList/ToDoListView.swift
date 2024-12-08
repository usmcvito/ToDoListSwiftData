//
//  ToDoListView.swift
//  ToDoList
//
//  Created by Vito on 12/8/24.
//

import SwiftUI

struct ToDoListView: View {
    var toDos = ["Learn Swift",
                 "Build Apps",
                 "Change the World",
                 "Bring Awesome",
                 "Take a Vacation"]
    var body: some View {
        NavigationStack {
            List {
                ForEach(toDos, id: \.self) { toDo in
                    NavigationLink {
                        DetailView(passedValue: toDo)
                    } label: {
                        Text(toDo)
                    }

                }
            }
            .navigationTitle("To Do List")
            .navigationBarTitleDisplayMode(.automatic)
            .listStyle(.plain)
        }
    }
}

#Preview {
    ToDoListView()
}

//    Section {
//                    NavigationLink {
//                        DetailView()
//                    } label: {
//                        Text("Winter")
//                    }
//                    Text("Summer")
//                } header: {
//                    Text("Breaks")
//                }
//                Section {
//                    Text("Spring")
//                    Text("Fall")
//                } header: {
//                    Text("Semesters")
//                }
