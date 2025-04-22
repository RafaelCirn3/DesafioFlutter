
# 🍰 ConfeitApp - Mini Marketplace para Confeitarias

Este é um aplicativo mobile desenvolvido em Flutter como parte de um desafio técnico para estágio na Engeselt Softwares. A proposta é construir um pequeno marketplace de confeitarias, com funcionalidades de cadastro, visualização no mapa, e gerenciamento de produtos.

---

## 📱 Funcionalidades

- Cadastro, edição e exclusão de confeitarias
- Adição de múltiplos produtos para cada confeitaria
- Visualização das confeitarias em um mapa com marcadores
- Detalhamento de confeitaria ao clicar no marcador
- Upload de múltiplas imagens por produto
- Preenchimento automático de endereço via CEP (opcional)
- Validações de campos obrigatórios

---

## ✅ Requisitos

### Obrigatórios
- [x] Flutter
- [x] Banco de dados local (Drift/SQLite ou ObjectBox)
- [x] Visualização de confeitarias no mapa com latitude e longitude

### Opcionais (Diferenciais)
- [] Utilização do padrão BLoC
- [] Testes automatizados

---

## 🚀 Como Executar

### Pré-requisitos

- [Flutter SDK](https://docs.flutter.dev/get-started/install)
- Android Studio (ou outro emulador configurado)
- Git

### Passos para rodar localmente

```bash
# Clone o repositório
git clone https://github.com/rafaelcirn3/DesafioFlutter.git
cd confeitapp

# Instale as dependências
flutter pub get

# Execute o projeto
flutter run
```

### Configurações específicas (Android)

- Certifique-se de ativar as permissões de localização
- Verifique se as chaves da API do Google Maps estão configuradas no `AndroidManifest.xml` (caso utilize mapa)

---

## 📁 Estrutura de Pastas (Exemplo)

```
lib/
├── models/
│   ├── confeitaria.dart
│   └── produto.dart
├── screens/
│   ├── home_screen.dart
│   ├── detalhes_confeitaria.dart
│   └── cadastro_produto.dart
├── widgets/
│   ├── mapa_widget.dart
│   ├── card_confeitaria.dart
│   └── form_input.dart
├── database/
|   ├── database.dart
├── services/
│   └── geocoding_service.dart
|── tests/
│   ├── geocoding_test.dart
├── main.dart
```

---

## 📌 Regras de Negócio

- Um produto só pode ser criado a partir de uma confeitaria existente.
- Ao excluir uma confeitaria, todos os seus produtos devem ser removidos.
- Campos como nome, endereço, latitude, longitude, etc., devem ser obrigatórios e validados.
- O mapa deve posicionar corretamente a confeitaria com base nas coordenadas fornecidas.

---

## 💡 Observações

- O projeto segue boas práticas de código, com uso de widgets reutilizáveis e separação de responsabilidades.
- Commits realizados com frequência e mensagens descritivas.
- Interface pensada com foco em UX/UI agradável e intuitiva.


---

### Executando os Testes

- testando a funcionalidade de geocoding
```bash
flutter test lib/tests/geocoding_test.dart
```

--- 
## 👨‍💻 Desenvolvido por

Rafael Cirne  
Email: cirnerafael06@gmail.com  
GitHub: github.com/rafaelcirn3
