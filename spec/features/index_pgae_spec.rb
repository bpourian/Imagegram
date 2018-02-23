feature 'Visit index page -- ' do
  scenario 'Should visit index page and get 200 response' do
    visit '/'

    expect(page.status_code).to be 200
  end

  scenario 'Should see Posts on index page' do
    visit '/'

    expect(page).to have_content('Posts')
  end

  scenario 'Should add post and see post' do
    posting_caption
    expect(page).to have_content("This is a test caption")
  end
end
