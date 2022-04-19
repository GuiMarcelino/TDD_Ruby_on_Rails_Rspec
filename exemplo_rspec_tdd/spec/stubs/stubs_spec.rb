require 'student'
require 'course'

# stub força uma resposta de alguem que estou necesitando naquele momento, mesmo que o meu método has_finished? não tenha nada
# no allow eu crio uma instancia de course e espero que has_finished? seja true.
# aqui a classe é verdadeira so o objeto que é um double


describe 'Stub' do
  it '--' do
    student = Student.new
    course = Course.new

    allow(student).to receive(:has_finished?)
                        .with(an_instance_of(Course))
                        .and_return(true)

    course_finished = student.has_finished?(course)

    expect(course_finished).to be_truthy
  end

end