//
//  TelaDosDias.swift
//  Calendar
//
//  Created by Guilherme Alves de Souza on 21/07/26.
//

import SwiftUI

struct TelaDosDias: View {

    @State private var irDetalhes = false
    private let columns = Array(repeating: GridItem(.flexible(), spacing: 0), count: 7)

    private let diaDaSemana = ["S","M","T","W","T","F","S"]

    private let dias: [String] = [
        "", "", "", "1","2","3","4",
        "5","6","7","8","9","10","11",
        "12","13","14","15","16","17","18",
        "19","20","21","22","23","24","25",
        "26","27","28","29","30","31",""
    ]

    var body: some View {

       

            ScrollView(showsIndicators: false) {

                VStack(spacing: 28) {

                    Spacer()
                        .frame(height: 25)

                    HStack {

                        Button {
                            
                        } label: {
                            Image(systemName: "arrow.left.circle")
                                .font(.system(size: 44))
                                .foregroundColor(.primary)
                        }

                        Spacer()

                        Text("July")
                            .font(.system(size: 42, weight: .bold))
                            .foregroundColor(Color("Atual"))

                        Spacer()

                        Button {
                            
                        } label: {
                            Image(systemName: "arrow.right.circle")
                                .font(.system(size: 44))
                                .foregroundColor(.primary)
                        }
                    }
                    .padding(.horizontal, 80)


                    LazyVGrid(columns: columns, spacing: 0) {

                        ForEach(diaDaSemana.indices, id: \.self) { index in

                            Text(diaDaSemana[index])
                                .foregroundStyle(.primary.opacity(0.85))
                                .font(.system(size: 24))
                                .frame(maxWidth: .infinity)
                                .padding(.bottom, 20)
                        }
                    }


                    LazyVGrid(columns: columns, spacing: 0) {

                        ForEach(dias.indices, id: \.self) { index in

                            CalendarioCelula(dia: dias[index])
                        }
                    }


                    VStack(alignment: .leading, spacing: 22) {

                        Text("Lembretes")
                            .font(.system(size: 34, weight: .bold))
                            .foregroundColor(.primary)


                        Button {
                            irDetalhes = true
                        } label: {
                            LinhaLembrete(
                                data: "20/07",
                                titulo: "Aniversário da mãe"
                            )
                        }
                        .sheet(isPresented: $irDetalhes){
                            NavigationStack {
                                Detalhes()
                            }
                        }
                        .buttonStyle(.plain)


                        LinhaLembrete(
                            data: "24/07",
                            titulo: "Entrega do projeto"
                        )


                        LinhaLembrete(
                            data: "31/07",
                            titulo: "Consulta médica"
                        )


                        Divider()
                            .background(.gray)


                        Text("Feriados")
                            .font(.system(size: 34, weight: .bold))
                            .foregroundColor(.primary)
                    }
                    .padding(.horizontal)
                }
               
            }
            .padding(.top, 16)
            .ignoresSafeArea()
            .navigationBarBackButtonHidden(true)
        
    }
}

#Preview {
    TelaDosDias()
}
