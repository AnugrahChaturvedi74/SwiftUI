//
//  28-List.swift
//  swiftui-1
//
//  Created by Anugrah on 05/08/24.
//

import SwiftUI

struct _8_List: View {
    @State var fruits: [String] = ["apple", "orange", "Banana"]
    @State var vegies: [String] = ["tomato", "potato", "carrt"]
    
    var body: some View {
        NavigationView {
            List{
                Section(header:
                            HStack{
                    Text("Fruits")
                    Image(systemName: "flame")
                        .foregroundColor(.yellow)
                        .font(.title)
                        
                }
                        
                )
                {
                    ForEach(fruits, id: \.self) { fruit in
                        
                       
                        Text(fruit.capitalized)
                            .foregroundStyle(Color.white)
//                            .frame(maxWidth: .infinity, maxHeight: .infinity)
//                            .background(Color.pink)
                        
                            .font(.caption2)
                            .padding()
                        
                    }
                    
                    .onDelete(perform: { indexSet in
                        delete(indexSet: indexSet)
                    })
                    .onMove(perform: { indices, newOffset in
                        move(indices: indices, newOffset: newOffset)
                    })
                    .listRowBackground(Color.pink)
                }
                Section {
                    ForEach(vegies, id: \.self) { vegie in
                        Text(vegie.capitalized)
                    }
                } header: {
                    Text("Veggies")
                }
                
                
            }
            .accentColor(.yellow)
            //            .listStyle(.insetGrouped)
            .navigationTitle("Grocery List")
            .navigationBarItems(leading: EditButton(),
                                trailing: addButton)
            
        }
        .accentColor(.red)
    }
    
    func delete(indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
    
    func move(indices: IndexSet, newOffset: Int){
        fruits.move(fromOffsets: indices, toOffset: newOffset)
    }
    
    func add (){
        fruits.append("Coconut")
    }
    
    var addButton: some View {
        Button("Add", action: {
            add()
        })
    }
}

#Preview {
    _8_List()
}
