---
layout: post
title: "Aula 15B - Aprendendo a programar com Ruby: O Básico para iniciantes"
excerpt: "Material da aula 15B do curso aprendendo a programar com ruby, o básico para iniciantes. Nunca é tarde para começar a programar! Eu criei um curso gratuito, fácil e didático voltado para iniciantes. Confira mais informações aqui nessa publicação."
category: [br, programacao]
lang: br
tags: [programação, tecnologia, curso, ruby, iniciantes]
comments: true
share: true
ads: true
---

![](/blog/images/curso_ruby_basico/banner-curso-ruby-15B.jpg)

> :warning: Material da aula 15.B! Veja mais informações sobre o curso e a lista completa das aulas em: [http://cursoprogramacao.rafaelbiriba.com/](http://cursoprogramacao.rafaelbiriba.com/) :warning:

# 15.B. Classes e Objetos 1 -  Correção dos exercícios

Nessa aula eu faço a correção comentada dos exercícios da aula de [Classes e Objetos 1](https://rafaelbiriba.com/blog/br/programacao/aula-15A-aprendendo-a-programar-com-ruby-basico/)

### Vídeo da aula

- []()

### Exercícios

- [https://rafaelbiriba.com/blog/br/programacao/aula-15A-aprendendo-a-programar-com-ruby-basico/](https://rafaelbiriba.com/blog/br/programacao/aula-15A-aprendendo-a-programar-com-ruby-basico/)

##### Correção dos exercícios

#### 1.

```ruby
class Pessoa
  attr_writer :nome, :sobrenome
  # nome, sobrenome não podem ser accessor, pois o exercício
  # pede para que Pessoa.new.nome não seja exposto

  attr_accessor :idade

  def nome_completo
    "#{@nome} #{@sobrenome}"
  end
end

roberto = Pessoa.new

roberto.idade = 50
roberto.idade # 50

roberto.nome = "Roberto"
roberto.sobrenome = "da Silva"

roberto.nome #NoMethodError (undefined method `nome'
roberto.sobrenome #NoMethodError (undefined method `sobrenome'

roberto.nome_completo # "Roberto da Silva"
```

---

#### 2.

Crie uma classe `Produto` com atributos `nome` e `preco`. Crie também uma classe `Carrinho` com attributos `produtos`. A classe `carrinho` deve implementar um método `total` e calcular quanto custa o total baseado nos produtos que foi adicionado.

Faça as classes no código abaixo, em seguida execute o exercício.

```ruby
class Produto
  # Resolva o exercício aqui
end

class Carrinho
  # Resolva o exercício aqui
end

carrinho_compras = Carrinho.new
carrinho_compras.produtos << Produto.new("leite", 3)
carrinho_compras.produtos << Produto.new("nescau", 5)
carrinho_compras.produtos << Produto.new("pão", 6)
carrinho_compras.produtos << Produto.new("queijo", 8)

carrinho_compras.total # 22
```

---

#### 3.
Criar uma classe `Pessoa` e guardar o nome e telefone de cada pessoa.

Criar uma classe `Agenda` para armazenar telefones. Criar um método para adicionar pessoas e um método para buscar e retornar o telefone de alguma pessoa.

Faça as classes no código abaixo, em seguida execute o exercício.

```ruby
class Pessoa
  # Resolva o exercício aqui
end

class Agenda
  # Resolva o exercício aqui
end

minha_agenda = Agenda.new
minha_agenda.adicionar(Pessoa.new("Rafael", 92345567))
minha_agenda.adicionar(Pessoa.new("Rodrigo", 99229822))
minha_agenda.adicionar(Pessoa.new("Sofia", 97213399))

minha_agenda.buscar("Rodrigo") # 99229822
minha_agenda.buscar("Alan") # ""
```

---

#### 4. DESAFIO
O desafio é sobre lista ligada. Crie uma classe `Pessoa` e a pessoa tem os atributos `nome` e `best_friend` (que é uma `Pessoa`).

Faça a classe no código abaixo, em seguida execute o exercício.

```ruby
class Pessoa
  # Resolva o exercício aqui
end

mario = Pessoa.new("Mario")
ronaldo = Pessoa.new("Ronaldo")
pedro = Pessoa.new("Pedro")
romario = Pessoa.new("Romario")

mario.best_friend = ronaldo
ronaldo.best_friend = pedro
pedro.best_friend = romario
romario.best_friend = mario

mario.best_friend.nome # Ronaldo
mario.best_friend.best_friend.nome # Pedro
mario.best_friend.best_friend.best_friend.nome # Romario
mario.best_friend.best_friend.best_friend.best_friend.nome #Mario
mario.best_friend.best_friend.best_friend.best_friend.best_friend.nome #Ronaldo
```

---
