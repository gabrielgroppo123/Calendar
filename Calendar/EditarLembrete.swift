//
//  EditarLembrete.swift
//  Calendar
//
//  Created by Gabriel Groppo on 24/07/26.
//

import SwiftUI

struct EditarLembrete: View {
    @Environment(\.dismiss) private var dismiss
    @State var titulo: String = ""
    @State var descricao: String = ""
    var body: some View {
        ZStack{
            Rectangle()
                .frame(width: .infinity, height: 820)
                .foregroundStyle(Color(.systemGray5))
                .cornerRadius(40)
            VStack {
                            HStack {
                                ZStack {
                                    Button {
                                        dismiss()
                                    } label: {
                                        Circle()
                                            .frame(width: 44, height: 44)
                                            .foregroundStyle(Color(.systemGray4))
                                    
                                    }
                                    Text("X")
                                        .foregroundStyle(.primary)
                                        .font(.system(size: 28))
                                }
                                Text("Editar lembrete")
                                    .padding(.horizontal, 20)
                                    .font(.system(size: 32, weight: .medium))
                                    .foregroundStyle(.primary)
                                
                                ZStack{
                                Button {
                                    dismiss()
                                } label: {
                                    Circle()
                                        .frame(width: 44, height: 44)
                                        .foregroundStyle(Color(.systemGray4))
                                        }
                                    Image(systemName: "checkmark")
                                        .font(.system(size: 28))
                                        .foregroundStyle(.primary)
                                }
                            }
                            .padding(.top, 50)
                
                //Titulo
                Text("Almoço de familia")
                    .padding(.trailing, 126)
                    .frame(width: 350, height: 66)
                    .background(Color(.systemGray3))
                    .cornerRadius(15)
                    .padding(.vertical, 40)
                    .font(Font.custom("SFPro", size: 25))
                
                
                //Descricao
                Text("Almoço na tia Claudia as 12h")
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
                        .foregroundStyle(.primary)
                        
                    
                    Circle()
                        .frame(width: 44, height: 44)
                        .foregroundStyle(Color(.lembrete1))
                        .padding(.trailing, 230)
                }
                    
                Spacer()
            }
            
        }
        .ignoresSafeArea(.keyboard)
        .ignoresSafeArea()
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    EditarLembrete()
}
