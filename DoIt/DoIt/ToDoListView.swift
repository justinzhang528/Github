//
//  ToDoTaskView.swift
//  DoIt
//
//  Created by 張維俊 on 2020/5/28.
//  Copyright © 2020 NTUT. All rights reserved.
//

import SwiftUI

struct ToDoListRow: View {
    var title:String = ""
    var createdAt:String = ""
    var tasks:[Task] = [Task]()
    
    var body: some View {
        HStack{
            NavigationLink(destination: TaskView(tasks: tasks)){
                Image(systemName: "list.dash").resizable().fixedSize()
                VStack(alignment: .leading){
                    Text(title).font(.headline)
                    Text(createdAt).font(.caption)
                    Text("\(tasks.count)").font(.caption)
            }
            .navigationBarTitle("GameList")
            }
        }
    }
}

