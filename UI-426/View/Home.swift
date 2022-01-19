//
//  Home.swift
//  UI-426
//
//  Created by nyannyan0328 on 2022/01/19.
//

import SwiftUI

struct Home: View {
    @State var show : Bool = false
    var body: some View {
        NavigationView{
            
            
            Button {
                
                withAnimation{
                    
                    show.toggle()
                }
                
            } label: {
                
                Text("Popup")
                    .font(.largeTitle.weight(.bold))
            }
            .buttonStyle(ButtonModeifier())

            
        }
        .popUpHelpers(horizontalPadding: 30, show: $show) {
            
            
            List{
                
                
                ForEach(tasks){task in
                    
                    NavigationLink {
                        
                        Text(task.taskDescription)
                            
                        
                    } label: {
                        
                        
                        Text(task.taskTitle)
                    }

                    
                    
                    
                }
            }
            .toolbar {
                
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    
                    
                    Button {
                        
                    } label: {
                        
                        Image(systemName: "plus")
                            .font(.title)
                            .navigationTitle("Next")
                    }

                    
                }
                
                ToolbarItem(placement: .navigationBarLeading) {
                    
                    
                    Button {
                        
                        withAnimation{
                            
                            show.toggle()
                        }
                        
                    } label: {
                        
                      Text("Back")
                            .font(.title)
                    }

                    
                }
            }
            
            
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}

struct ButtonModeifier : ButtonStyle{
    
    func makeBody(configuration: Configuration) -> some View {
        return configuration.label
            .scaleEffect(configuration.isPressed ? 3 : 1)
            .animation(.easeIn.speed(3), value: configuration.isPressed)
            
            
    }
}

