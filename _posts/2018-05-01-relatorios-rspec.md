---
layout: post
title: Relatórios Rspec
date: 2018-05-01 17:03 -0300
tags: [TDD,RSpec,Ruby on Rails]
img: rspec_reports.png
---

Sabemos que o Rspec é uma ferramenta poderosa para a realização de nossos testes, mas podemos realizar algumas configurações para entedermos melhor seus logs.

Digamos que estamos testando uma classe Calculator que basicamente faz a soma de dois números...

{% highlight ruby %}
class Calculator
  def sum(a,b)
	a+b
  end
end
{% endhighlight %}

e nosso teste:
{% highlight ruby %}
require "calculator"

describe Calculator do
	subject(:calc){described_class.new()}
	context "#sum" do
		it "with positive numbers" do 
			result = calc.sum(5,7)
			expect(result).to eq(12)
		end

		it "with negative and positive numbers" do
			result = calc.sum(-5,7)
			expect(result).to eq(2)
		end

		it "with negative numbers" do
			result = calc.sum(-5,-7)
			expect(result).to eq(-12)
		end
	end
end
{% endhighlight %}

Ao executarmos esse teste temos a seguinte saida:
{% highlight PowerShell %}
bundle exec rspec spec
	
Finished in 0.02381 seconds (files took 0.17227 seconds to load)
3 examples, 0 failures
{% endhighlight %}


Mas queremos um relatório melhor com mais informações e visualmente melhor do que apenas mostrar o que deu certou ou não.
Pensando nisso o rspec possui o comando **--format documentation**, vejamos como fica ao usarmos esse comando:

{% highlight PowerShell %}
bundle exec rspec spec --format documentation

Calculator
  #sum
    with positive numbers
    with negative and positive numbers
    with negative numbers

Finished in 0.00389 seconds (files took 0.23323 seconds to load)
3 examples, 0 failures
{% endhighlight %}

Até mesmo com erros o log fica bem melhor de visualizar:
{% highlight PowerShell %}
bundle exec rspec spec --format documentation

Failures:

  1) Calculator#sum with positive numbers
     Failure/Error: expect(result).to eq(112)
     
       expected: 112
            got: 12
     
       (compared using ==)
     # ./spec/calculator/calculator_spec.rb:8:in `block (3 levels) in <top (required)>'

Finished in 0.11017 seconds (files took 0.24823 seconds to load)
3 examples, 1 failure

Failed examples:

rspec ./spec/calculator/calculator_spec.rb:6 # Calculator#sum with positive numbers
{% endhighlight %}

Você deve estar se perguntando "Pô legal mas sempre vou precisar digitar tudo isso??"A resposta é **não** e para resolvermos existem duas maneiras.

A primeira solução é criar dentro do projeto o arquivo .rspec e adicionar nossas configurações nele como por exemplo:
{% highlight PowerShell %}
--require spec_helper
--format documentation
--color
{% endhighlight %}

A segunda maneira seria alterar o arquivo spec_help.rb localizado no projeto rails na pasta spec, basta adicionar a seguinte linha:
{% highlight PowerShell %}
RSpec.configure do |config|
  config.formatter = :documentation
end
{% endhighlight %}

As duas maneiras vão carregar as configurações e aplicar ao executar os nossos testes.Para mais informações de output do rspec sempre leia a [documentação][rspec-format].

E para finalizar podemos também exportar o conteúdo de nossos teste para um arquivo txt ou html, para fazer isso basta adicionar a seguinte instrução:
{% highlight PowerShell %}
--format html --out nome_arquivo.html
{% endhighlight %}

Assim teremos uma página html como imagem no início do nosso post.

Por enquanto é só isso, nos vemos na próxima.

[rspec-format]: https://relishapp.com/rspec/rspec-core/v/2-5/docs/command-line/format-option