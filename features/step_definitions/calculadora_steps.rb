# frozen_string_literal: true

Dado('que estou na calculadora') do
  find_element(id: 'main_calculator').displayed?
end

Quando('efetuo a divisão do número {int} com o {int}') do |num_1, num_2|
  find(num_1).click
  find_element(id: 'op_div').click
  find(num_2).click
  find_element(id: 'eq').click
end

Entao('visualizo {int} como o resultado da divisão') do |resultado_esperado|
  resultado_atual = find_element(id: 'result_final').text
  expect(resultado_atual.to_i).to eq(resultado_esperado)
end

Entao('valido o erro {string}') do |resultado_erro|
  resultado_atual = find_element(id: 'result_preview').text
  expect(resultado_atual).to eq(resultado_erro)
end
