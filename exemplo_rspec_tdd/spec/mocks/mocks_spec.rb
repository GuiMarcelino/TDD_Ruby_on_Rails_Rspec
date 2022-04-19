require 'student'

# Mocks são para a fase de 'Verify'.
# Mocks são usados para testar comportamentos
# no caso abaixo o comportamento testado é chamar o método bar

describe 'Mocks' do
  it '#bar' do
    # setup
    student = Student.new

    # verify
    expect(student).to receive(:bar)

    #exercise
    student.bar
  end
end