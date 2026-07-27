//
//  Detalhes.swift
//  Calendar
//
//  Created by Gabriel Groppo on 24/07/26.
//

import SwiftUI

struct Detalhes: View {
    @Environment(\.dismiss) var dismiss
    @State private var irEditar: Bool = false
    @State private var mostrarAlerta = false
    var body: some View {
        ZStack{
            Rectangle()
                .frame(width: .infinity, height: 820)
                .foregroundStyle(Color(.systemGray5))
                .cornerRadius(40)
            
            VStack{
                ZStack{
                    Button(action: {
                                dismiss()
                    }) {
                        ZStack{
                            Circle()
                                .frame(width: 44, height: 44)
                                .foregroundStyle(Color(.systemGray4))
                            Image(systemName: "chevron.left")
                                .foregroundColor(.primary)
                                .font(.system(size: 28))
                                .clipShape(Circle())
                        }}
                                .padding(.trailing, 306)
                                .padding(.top, 50)
                                   
                    Text("Detalhes")
                        .padding(.horizontal, 20)
                        .fontWeight(.medium)
                        .font(Font.custom("SFPro", size: 32))
                        .foregroundStyle(.primary)
                        .padding(.top, 50)
                }
                
                //Titulo
                Text("Título")
                    .padding(.top, 40)
                    .padding(.trailing, 290)
                    .font(Font.custom("SFPro", size: 20))
                    .foregroundStyle(Color(.systemGray2))
                Text("Aniversario da mãe")
                    .padding(.trailing, 90)
                    .frame(width: 350, height: 66)
                    .background(Color(.systemGray3))
                    .cornerRadius(15)
                    .padding(.bottom, 40)
                    .font(Font.custom("SFPro", size: 25))
                
                
                //Descricao
                Text("Descrição")
                    .padding(.trailing, 250)
                    .font(Font.custom("SFPro", size: 20))
                    .foregroundStyle(Color(.systemGray2))
                Text("Festa surpresa na casa da tia Claudia as 18h")
                    .padding(.horizontal, 12)
                    .padding(.bottom, 50)
                    .padding(.top, 20)
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
                        .foregroundStyle(Color(.cyan))
                        .padding(.trailing, 230)
                }
                .padding(.bottom, 30)
                HStack{
                    ZStack{
                        Button {
                            mostrarAlerta = true
                        } label: {
                            
                            ZStack{
                                Rectangle()
                                    .frame(width: 137, height: 44)
                                    .foregroundStyle(Color(.systemGray4))
                                    .cornerRadius(40)
                                
                                
                            }
                        }
                        .alert("Confirmação", isPresented: $mostrarAlerta){
                            Button("Não", role: .cancel){
                            }
                            Button("Sim", role: .destructive){
                                excluirLembrete()
                            }
                        } message: {
                            Text("Deseja excluir o lembrete?")
                        }
                        Text("Excluir")
                            .foregroundStyle(.primary)
                            .font(Font.custom("SFPro", size: 20))
                    }
                    .padding(.horizontal, 12)
                    
                    ZStack{
                        Button(action:{
                            irEditar = true
                        }){
                            ZStack{
                                Rectangle()
                                    .frame(width: 137, height: 44)
                                    .foregroundStyle(Color(.blue))
                                    .cornerRadius(40)
                                
                            }
                        }
                        .sheet(isPresented: $irEditar){
                            EditarLembrete()
                        }
                        Text("Editar")
                            .foregroundStyle(.primary)
                            .font(Font.custom("SFPro", size: 20))
                    }
                    .padding(.horizontal, 12)
                    
                }
                Spacer()
            }
            
        }
        .padding(.top, 40)
        .ignoresSafeArea(.keyboard)
        .ignoresSafeArea()
        .navigationBarBackButtonHidden(true)
        .navigationBarTitleDisplayMode(.inline)
        
    }
}
        
                
    
    func excluirLembrete() {
            print("Lembrete excluído!")
        }


#Preview {
    Detalhes()
}
