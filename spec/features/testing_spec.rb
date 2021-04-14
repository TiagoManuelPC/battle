
feature 'testing infrastructure' do
  scenario ' it works' do
    visit('/')
    expect(page).to have_content 'i am testing'
  end
end