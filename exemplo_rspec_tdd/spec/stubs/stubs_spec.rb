require 'student'
require 'course'
# os stubs são utilizados para substituir estados
# stub força uma resposta de alguem que estou necesitando naquele momento, mesmo que o meu método has_finished? não tenha nada
# no allow eu crio uma instancia de course e espero que has_finished? seja true.
# aqui a classe é verdadeira so o objeto que é um double
# stubs obrigamos a responder da forma que queremos nnão dependemos da resposta do método, tanto que em nosso teste o método has_finished?,
# não tem nada nele.


describe 'Stub' do
  it '--' do
    student = Student.new
    course = Course.new

    allow(student).to receive(:has_finished?)
                        .with(an_instance_of(Course))
                        .and_return(true) # nesse caso permito que meu objeto studente o meu stub vai receber a chamada do método has_finished?
    # passando com argumento alguém que é to dipo Course, esperando true

    course_finished = student.has_finished?(course)

    expect(course_finished).to be_truthy
  end
  #
  # it 'Argumentos Dinâmicos' do
  #   student = Student.new
  #
  #   allow(:student).to receive(:foo) do |arg|
  #     if arg == :hello
  #       'olá'
  #     elsif arg == :hi
  #       'Hi!!!'
  #     end
  #   end
  #
  #   expect(student.foo(:hello)).to eq('olá')
  #   expect(student.foo(:hi)).to eq('Hi!!!')
  # end
end