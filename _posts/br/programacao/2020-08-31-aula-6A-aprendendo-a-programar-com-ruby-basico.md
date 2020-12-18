---
layout: post
title: 'Aula 6A - Aprendendo a programar com Ruby: O Básico para iniciantes'
excerpt: Essa é a terceira aula com o conteúdo básico do Ruby. Este é o material da aula 6A do curso aprendendo a programar com ruby, o básico para iniciantes. Explico brevemente sobre hash. Nunca é tarde para começar a programar! Eu criei um curso gratuito, fácil e didático voltado para iniciantes. Confira mais informações aqui nessa publicação.
category:
- br
- programacao
lang: br
tags:
- programação
- tecnologia
- curso
- ruby
- iniciantes
comments: true
share: true
ads: true
date: 2020-08-31 09:57 +0200
last_modified_at: 2020-12-21
---
![](/blog/images/curso_ruby_basico/banner-curso-ruby-6A.jpg)

> :warning: Material da aula 6.A! Veja mais informações sobre o curso e a lista completa das aulas em: [http://cursoprogramacao.rafaelbiriba.com/](http://cursoprogramacao.rafaelbiriba.com/) :warning:

# 6.A. Ruby Basics 3 - Hash

Essa é a terceira aula com o conteúdo básico do Ruby. Explico brevemente sobre hash.

Não deixe de tentar resolver os exercícios da aula e investir algum tempo estudando mais sobre o assunto.

### Vídeo da aula

- [https://www.youtube.com/watch?v=2xeoqR7UDNQ](https://www.youtube.com/watch?v=2xeoqR7UDNQ)

### Conteúdo da aula

- Array: parte 2

- Hash

##### Exemplos da aula

##### Array - parte 2

```ruby
exemplo = []
puts exemplo[0] #nil
exemplo[0] = "Rafael"
puts "#{exemplo}" # ["Rafael"]

exemplo[1] = 10
exemplo[2] = "Roberto"
puts "#{exemplo}" # ["Rafael", 10, "Roberto"]

exemplo[0] = 50
puts "#{exemplo}" # [50, 10, "Roberto"]
```

```ruby
exemplo = []
exemplo << "Rafael"
exemplo << "Roberto"
exemplo << 2
puts "#{exemplo}" # ["Rafael", "Roberto", 2]
```

```ruby
exemplo = ["a", "b"]
# index     0    1

exemplo[2] = "c"
exemplo << "d"
puts "#{exemplo}" # ["a", "b", "c", "d"]
```

```ruby
exemplo = ["a", "b"]
# index     0    1

exemplo << "c" # ["a", "b", "c"]
exemplo[2] = "d"
puts "#{exemplo}" # ["a", "b", "d"]
```

```ruby
exemplo = []
exemplo << 10
exemplo << ["Rafael"]
puts "#{exemplo}" # [10, ["Rafael"]]
            # index 0    1

puts exemplo[1][0] #Rafael
exemplo[1][1] = "Roberto"
puts "#{exemplo[1]}" #["Rafael", "Roberto"]
exemplo[1] << "Ronaldo"
puts "#{exemplo[1]}" #["Rafael", "Roberto", "Ronaldo"]
puts "#{exemplo}" # [10, ["Rafael", "Roberto", "Ronaldo"]]
```

##### Hash

```ruby
exemplo = {}

exemplo = {nome: "Rafael", idade: 30}
puts "Meu nome é #{exemplo[:nome]} e tenho #{exemplo[:idade]} anos"
```

```ruby
exemplo = { :a => 2 }
puts exemplo[:a]

exemplo = { a: 2 }
puts exemplo[:a]

exemplo = { "a" => 2 }
puts exemplo["a"]
```

```ruby
exemplo = {}
exemplo["teste1"] = 1
exemplo[:teste2] = 2
puts "#{exemplo}" #{"teste1"=>1, :teste2=>2}
puts exemplo["teste1"] # 1
puts exemplo[:teste1] # não existe na lista exemplo

puts exemplo[:teste2] # 2
puts exemplo["teste2"] # não existe na lista exemplo

exemplo = { "teste1" => 1, :teste2 => 2}
```

```ruby
exemplo = {}
exemplo[:teste] = 1
puts "#{exemplo}" #{:teste=>1}
```

```ruby
exemplo = {}
exemplo[:lista] = []
puts "#{exemplo}" #{:lista=>[]}

exemplo[:lista] << "Morango"
exemplo[:lista] << "Banana"
puts "#{exemplo}" #{:lista=>["Banana", "Morango"]}


exemplo[:nome] = "Compras"
puts "#{exemplo}" #{:lista=>["Banana", "Morango"], :nome => "Compras"}
```

```ruby
exemplo = {nome: "Rafael", preferencias: ["Vermelho", "Preto"]}
puts exemplo[:nome]
puts exemplo[:preferencias] # Array ["Vermelho", "Preto"]
puts exemplo[:preferencias][1]
```

```ruby
exemplo = [{ nome: "Rafael", idade: 30}, {nome: "Roberto", idade: 40}]

puts exemplo[0][:nome]
puts exemplo[0][:idade]
puts exemplo[1][:nome]
puts exemplo[1][:idade]
```

### Links úteis

- [https://ruby-doc.org/core-2.7.0/Array.html#method-i-3C-3C](https://ruby-doc.org/core-2.7.0/Array.html#method-i-3C-3C)

- [https://ruby-doc.org/core-2.7.0/Hash.html](https://ruby-doc.org/core-2.7.0/Hash.html)

### Exercícios

#### 1.
Criar um hash que contenha uma chave chamada frutas com um array vazio e uma chave chamada verduras com um array vazio.
Utilizando o `<<` adicione no array correto (fruta ou verdura) os valores: `banana`, `cenoura`, `uva`, `brocolis`
Imprima a lista no final.

#### 2.
Criar uma hash simples contendo 3 chaves principais (:a, :b, "c").
`:a` deve conter um texto. `:b` deve conter um número. `"c"` deve um float.
Imprimir o valor das chaves a,b,c separadamente em cada linha.

---

#### 3.
Considerando o hash abaixo:

```ruby
exemplo = {
  a: "cinquenta",
  b: "dez",
  c: [0,1,2,3,4,5,6,7,8,9]
}
```
Utilizando o hash acima, imprima na tela o texto `cinquenta - 50` e em outra linha `dez - 10`.

NOTA: Você deve utilizar os numeros do array de 0 a 9 para formar o `50` e o `10`.

---

#### 4.
Criar e imprimir uma lista de compras com produtos de mercado, para duas pessoas diferentes, utilizando um único hash para armazenar os dados.
Imprimir a lista de cada pessoa. Exemplo `Rafael vai comprar: ["produto1", "produto2"]` `Roberto vai comprar: ["produto3", "produto4"]`

---

#### 5. [DESAFIO]
Considerando o hash abaixo:

```ruby
exemplo = {
  fora1: {
    dentro1: "1"
  }
}
```
Adicionar ao hash `exemplo` uma nova chave `fora2` que contenha a chave `dentro2` com valor `2`.

Imprima o hash `exemplo` no final:
`{:fora1=>{:dentro1=>"1"}, :fora2=>{:dentro2=>"2"}}`

---

##### Correção dos exercícios

- [https://rafaelbiriba.com/blog/br/programacao/aula-6B-aprendendo-a-programar-com-ruby-basico/](/blog/br/programacao/aula-6B-aprendendo-a-programar-com-ruby-basico/)
