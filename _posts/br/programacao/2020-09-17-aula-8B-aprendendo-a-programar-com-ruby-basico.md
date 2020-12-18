---
layout: post
title: 'Aula 8B - Aprendendo a programar com Ruby: O Básico para iniciantes'
excerpt: Essa é a quinta parte da aula de ruby básico 5, onde eu faço a correção comentada dos exercícios. Este é o material da aula 8B do curso aprendendo a programar com ruby, o básico para iniciantes. Nunca é tarde para começar a programar! Eu criei um curso gratuito, fácil e didático voltado para iniciantes. Confira mais informações aqui nessa publicação.
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
date: 2020-09-17 10:18 +0200
last_modified_at: 2020-12-21
---
![](/blog/images/curso_ruby_basico/banner-curso-ruby-8B.jpg)

> :warning: Material da aula 8.B! Veja mais informações sobre o curso e a lista completa das aulas em: [http://cursoprogramacao.rafaelbiriba.com/](http://cursoprogramacao.rafaelbiriba.com/) :warning:

# 8.B. Ruby Basics 5 - Correção dos exercícios

Essa é a quinta parte da aula de ruby básico 5, onde eu faço a correção comentada dos exercícios.

Não deixe de tentar resolver os exercícios da aula e investir algum tempo estudando mais sobre o assunto.

### Vídeo da aula

- [https://www.youtube.com/watch?v=CzJfntx-NSQ](https://www.youtube.com/watch?v=CzJfntx-NSQ)

### Exercícios

- [https://rafaelbiriba.com/blog/br/programacao/aula-8A-aprendendo-a-programar-com-ruby-basico/](/blog/br/programacao/aula-8A-aprendendo-a-programar-com-ruby-basico/)


##### Correção dos exercícios

#### 1.

```ruby
peso_em_kilos = [10, 23, 44, 95]
peso_em_kilos.each do |peso|
  puts peso * 1000
end
```

---

#### 2.

```ruby
lista = "Rafael!Roberto!Rodolfo!Marcos!Rodrigo!Jorge!Lucas!Carlos!Dario!Ronaldo!Luis!Moises!Tulio!Armando!Beto!Mathias"

# OPCAO DE RESPOSTA 1
nomes = lista.split("!")
nomes.each do |nome|
  puts "Oi, #{nome}!"
end

# OPCAO DE RESPOSTA 2
lista.split("!").each do |nome|
  puts "Oi, #{nome}!"
end
```

---

#### 3.

```ruby
exemplo = {a: 1, b: 2, c: 3, d: 7, e: 9}
soma = 0
exemplo.each do |chave, valor|
  if chave == :b or chave == :d
    next
  end
  soma = soma + valor
end
puts soma
# 13
```

---

#### 4.

```ruby
agenda = [{nome: "Rafael", telefone: "5566"}, {nome: "Rodolfo", telefone: "9988"} , {nome: "Romário", telefone: "2299"}]
procurar_por = "Rodolfo"

agenda.each do |contato|
  if contato[:nome] == procurar_por
    puts "Nome: #{contato[:nome]} - Telefone: #{contato[:telefone]}"
    break
  else
    next
  end
  puts "ESSA LINHA NAO VAI SER EXECUTADA NUNCA POR CAUSA DO NEXT/BREAK"
end
```

---

#### 5.

```ruby
carnes = ["picanha", "costela", "alcatra", "maminha"]
pontos = ["mal passada", "ao ponto", "bem passada"]

carnes.each do |carne|
  pontos.each do |ponto|
    puts "#{carne} #{ponto}"
  end
end
```

---
