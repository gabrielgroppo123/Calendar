//
//  EditarLembrete.swift
//  Calendar
//
//  Created by Gabriel Groppo on 24/07/26.
//

import SwiftUI

struct EditarLembrete: View {
    @State var titulo: String = ""
    @State var descricao: String = ""
    var body: some View {
        ZStack{
            Rectangle()
                .frame(width: .infinity, height: 820)
                .foregroundStyle(Color(.systemGray5))
                .cornerRadius(40)
            VStack{
                HStack{
                    ZStack{
                        Circle()
                            .frame(width: 44, height: 44)
                            .foregroundStyle(Color(.systemGray4))
                        Text("X")
                            .foregroundStyle(.primary)
                            .font(Font.custom("SFPro", size: 28))
                    }
                    
                    Text("Editar lembrete")
                        .padding(.horizontal, 20)
                        .fontWeight(.medium)
                        .font(Font.custom("SFPro", size: 32))
                        .foregroundStyle(.primary)
                    
                    ZStack{
                        Circle()
                            .frame(width: 44, height: 44)
                            .foregroundStyle(Color(.systemGray4))
                        Image(systemName: "checkmark")
                            .font(.system(size: 28))
                            .foregroundColor(.primary)
                    }
                    
                }
                .padding(.top, 50)
                
                //Titulo
                TextField("Título", text: $titulo)
                    .padding(.horizontal, 12)
                    .frame(width: 350, height: 66)
                    .background(Color(.systemGray3))
                    .cornerRadius(15)
                    .padding(.vertical, 40)
                    .font(Font.custom("SFPro", size: 25))
                
                
                //Descricao
                TextField("Descrição", text: $descricao)
                    .padding(.horizontal, 12)
                    .padding(.bottom, 60)
                    .frame(width: 350, height: 136)
                    .background(Color(.systemGray3))
                    .cornerRadius(15)
                    .font(Font.custom("SFPro", size: 25))
                    .padding(.bottom, 36)
                HStack{
                    Text("Cor")
                        .font(Font.custom("SFPro", size: 25))
                        .foregroundStyle(Color(.systemGray))
                        
                    
                    Circle()
                        .frame(width: 44, height: 44)
                        .foregroundStyle(Color(.systemGray))
                        .padding(.trailing, 230)
                }
                    
                Spacer()
            }
            
        }
        .ignoresSafeArea(.keyboard)
        .padding(.top, 30)
    }
}

#Preview {
    EditarLembrete()
}
