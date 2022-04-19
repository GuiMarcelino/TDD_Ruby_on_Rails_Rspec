describe 'Test Double' do
  it '--' do
    user = double('User') #aqui é como se estivesse criando um objeto user
    # abaixo com o método aloow estou permitindo que ele ja respanda a name e password  com os dados que passei
    allow(user).to receive_messages(name: 'Guilherme', password: '123')
    # tambem podemos usar a sintaxe
    allow(user).to receive(:name).and_return('Guilherme')
    allow(user).to receive(:password).and_return('123')


    puts user.name
    puts user.password
  end
end