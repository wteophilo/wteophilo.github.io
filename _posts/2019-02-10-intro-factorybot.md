---
layout: post
title: Introdução FactoryBot
excerpt: Quando estamos testando nossa aplicação muitas vezes queremos que os dados seja já pré definidos mas não queremos fixa-los no código então vamos falar sobre a gem FactoryBot...
tags: [Ruby]
date: 2019-02-10 20:38 -0200
---
Quando estamos testando nossa aplicação muitas vezes queremos que os dados seja já pré definidos mas não queremos fixa-los no código então vamos falar sobre a gem FactoryBot. Nos primórdios do Rails era utilizados arquivos YAML/CSV  onde cada arquivo conter dados de um único modelo esses arquivos são conhecidos como [fixtures][fixtures], segue exemplo:

```
rubyonrails:
  id: 1
  name: Ruby on Rails
  url: http://www.rubyonrails.org

google:
  id: 2
  name: Google
  url: http://www.google.com
```



E aplicação em nossos testes utilizando a gem padrão do rails:

```ruby
test "find" do
  assert_equal "Ruby on Rails", web_sites(:rubyonrails).name
end
```



Com o tempo  a gem FactoryGirl foi criada usando boa parte funcionalidades que fixtures utilizam e outras mais. Em 24-08-2017 o nome do projeto foi trocado para [factorybot][FactoryBot]. 

O FactoryBot possui duas gems uma que pode ser utilizadas para projetos em Ruby puro e outra para projetos em Rails, ambos podem ser adicionadas no GemFile no group de testes.

Ruby Puro:

```ruby
group :development, :test do
    gem 'factory_bot'
end
```

Rails ([factory_bot_rails][factory_bot_rails]) 

```
group :development, :test do
	gem 'factory_bot_rails' 
end
```



No decorrer deste post vamos utilizar utilizar a gem factory_bot _rails. Para utiliza-la devemos adicionar o seguinte trecho de código a seguir na pasta **spec/rails_helper.rb**, assim o Rails vai se integrar ao FactoryBot.

```ruby
RSpec.configure do |config|
    config.include FactoryBot::Syntax::Methods
end
```



A pasta spec é criada ao usar a gem Rspec temos um post sobre o assunto caso tenha interesse basta [clicar aqui][olarspec]. Agora que sabemos o que é o FactoryBot e suas configurações vamos utiliza-lo. Temos uma classe bem básica de usuário com alguns atributos e um método que imprimi o nome completo

```ruby
class User < ApplicationRecord
    validates :first_name, :last_name, :age, :email, presence: true
    def full_name
        "#{first_name} #{last_name}"
    end
end
```



E queremos realizar alguns testes nesta classe e é ai que entra nossa factory,  por convenção devemos nossa factory com o mesmo nome da nossa classe ou seja **user.rb** na pasta **spec/factories**  seguinte conteúdo:

```ruby
FactoryBot.define do
    factory :user do
        first_name  {"Willian"} 
        last_name  {"Teophilo" }
        email  {"wteophilo@gmail.com"} 
        age { 28 }
    end
end
```



Como vimos no inicio do post nossa facory basicamente vai popular todos os atribuitos da nossa classe User, deixando os nossos testes mais simples pois já sabemos a entrada de dados. No FactoryBot existe duas maneiras de criar um objeto a partir de uma factory são eles:

- **create** : Cria e persiste o objeto no banco de dados 
- **build**: Apenas cria o objeto em memória   

Por fim o nosso teste da classe User utilizando o FactoryBot, segue o código abaixo:

```ruby
require 'rails_helper'

RSpec.describe User, type: :model do    
    before(:each) do
        @user = build(:user)
    end
    
    it 'should show user with full name' do
        expect(@user.full_name).to eq("Willian Teophilo")
    end
    
    it 'should have the same attributes of factory' do
		expect(@user).to have_attributes
			(:first_name => "Willian", 
			:last_name => "Teophilo",
			:email =>"wteophilo@gmail.com", 
			:age => 28)
    end
end
```



Este é um post bem introdutório sobre o FactoryBot e pretendo criar outros sobre ele, não se esqueça de comentar o que achou ou suas dúvidas.

Por enquanto é só isso, nos vemos na próxima.



[factorybot]: https://github.com/thoughtbot/factory_bot
[factory_bot_rails]: https://github.com/thoughtbot/factory_bot_rails
[olarspec]: https://wteophilo.github.io/2018/04/11/ola-rspec.html
[fixtures]: https://api.rubyonrails.org/v3.1/classes/ActiveRecord/Fixtures.html

