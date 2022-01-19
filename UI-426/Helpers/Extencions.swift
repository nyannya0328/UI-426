//
//  Extencions.swift
//  UI-426
//
//  Created by nyannyan0328 on 2022/01/19.
//

import SwiftUI

extension View{
    
    
    func popUpHelpers<Content : View>(horizontalPadding : CGFloat,show : Binding<Bool>,@ViewBuilder content : @escaping()->Content)->some View{
      
        
       return self
        
        
     
        
        
            .overlay{
            
            if show.wrappedValue{
                
                
                LinearGradient(colors: [
                    
                    
                    .red,
                    .green,
                    .orange,
                    .purple
                
                
                ], startPoint: .topLeading, endPoint: .bottomTrailing)
                
                    .ignoresSafeArea()
                
                
                
                GeometryReader{proxy in
                    
                    let size = proxy.size
                    
                    
                    NavigationView{
                        
                        content()
                    }
                    .frame(width: size.width - horizontalPadding, height: size.height / 1.5)
                    .cornerRadius(20)
                    .frame(maxWidth:.infinity,maxHeight: .infinity)
                    
                }
                
                
                
                
            }
            
            
            
        }
        
        
    }
}
