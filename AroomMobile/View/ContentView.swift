//
//  ContentView.swift
//  AroomMobile
//
//  Created by Morita Keiji on 2022/07/03.
//

import SwiftUI

struct ContentView: View {
    
    
    
    let dayofweek = [
       "月曜日",
       "火曜日",
       "水曜日",
       "木曜日",
       "金曜日"
    ]
    @State private var dayofweekS  = 0
    
    let classtime = [
       "1限　 8:50~10:30",
       "2限　11:00~12:40",
       "3限　13:20~15:00",
       "4限　15:00~16:50",
       "5限　17:00~18:40"
    ]
    @State private var classtimeS  = 0
    
    
    
    
    
    var body: some View {
        NavigationView{
            
            ScrollView{
                
                VStack(alignment: .center){
                    
            
            Picker(selection: $dayofweekS , label: Text("何曜日？")) {
                ForEach(0..<dayofweek.count) { num in
                    Text(self.dayofweek[num])
                }
            }
                
            Picker(selection: $classtimeS, label: Text("何限？")) {
                    ForEach(0..<classtime.count) { num in
                        Text(self.classtime[num])
                }
             }
            .padding(.all)
                }
          
                
                    NavigationLink(destination: roomList()) {
                        Text("検索")
                    }.onTapGesture(perform: parseer.parsemethod())
                

            .navigationBarTitle(Text("空き教室検索"))
            }
        }
        
        }
         
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
