//
//  GithubProfileView.swift
//  MySelf
//
//  Created by Solon Rios Soares on 14/08/26.
//

import SwiftUI

struct GithubProfileView: View {
    
    // TODO: transfer to ViewModel @Published
    @ObservedObject var viewModel: GithubProfileViewModel
    
    var body: some View {
        VStack {
            
            AsyncImage(url: URL(string: viewModel.user?.avatarUrl ?? "")) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(Circle())
            } placeholder: {
                Circle()
                    .foregroundColor(.secondary)
            }
            .frame(width: 120, height: 120)
            
            Text(viewModel.user?.login ?? "Login Placeholder")
                .bold()
                .font(.title3)
            
            Text(viewModel.user?.bio ?? "Bio Placeholder")
                .padding()
            
            Spacer()
        }
        .padding()
        
        // exibicao de erro na tela UI
        .task { // rever o que e task
            do {
                viewModel.user = try await getUser() // rever
            } catch GHError.invalidURL {
                print("invalid URL")
            } catch GHError.invalidResponse {
                print("invalid response")
            } catch GHError.invalidData {
                print("invalid data")
            } catch {
                print("unexpected error")
            }
        }
    }
    
    // TODO: transfer to GithubProfileViewModel i think
    func getUser() async throws -> GithubUser {
        let endpoint = "https://api.github.com/users/solon-exe"
        
        guard let url = URL(string: endpoint) else {
            throw GHError.invalidURL }
        
        let (data, response) = try await URLSession.shared.data(from: url)
        
        guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
            throw GHError.invalidResponse
        }
        
        do {
            let decoder = JSONDecoder()
            decoder.keyDecodingStrategy = .convertFromSnakeCase
            return try decoder.decode(GithubUser.self, from: data)
        } catch {
            throw GHError.invalidData
        }
              
    }
}

#Preview {
    GithubProfileView(viewModel: GithubProfileViewModel())
}

// TODO: transfer this struct to another folder using MVVM
struct GithubUser: Codable {
    let login: String
    let avatarUrl: String
    let bio: String
}

enum GHError: Error {
    case invalidURL
    case invalidResponse
    case invalidData
}
