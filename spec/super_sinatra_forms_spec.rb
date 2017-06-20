describe App do

  describe 'GET /' do
    before do
      get '/'
    end

    it 'sends a 200 status code' do
      expect(last_response.status).to eq(200)
    end

    it 'renders super hero form' do
      expect(last_response.body).to include("Create a Team and Heroes!")
      expect(last_response.body).to include("<form")
    end
  end

  describe 'POST /team' do
    it 'submits the form' do
      visit '/'
      fill_in("team[name]", :with => "Team Ruby")
      fill_in("team[motto]", :with => "We love Ruby!")
      fill_in("superhero_1_name", :with => "Amanda")
      fill_in("superhero_1_power", :with => "Ruby")
      fill_in("superhero_1_bio", :with => "I love Ruby!")
      fill_in("superhero_2_name", :with => "Arel")
      fill_in("superhero_2_power", :with => "JavaScript")
      fill_in("superhero_2_bio", :with => "I love JavaScript!")
      fill_in("superhero_3_name", :with => "Katie")
      fill_in("superhero_3_power", :with => "Sinatra")
      fill_in("superhero_3_bio", :with => "I love Sinatra!")
      click_button 'submit'

      expect(page).to have_text("Team Ruby")
      expect(page).to have_text("Motto: We love Ruby!")
      expect(page).to have_text("Name: Amanda")
      expect(page).to have_text("Power: Ruby")
      expect(page).to have_text("Bio: I love Ruby!")
      expect(page).to have_text("Name: Arel")
      expect(page).to have_text("Power: JavaScript")
      expect(page).to have_text("Bio: I love JavaScript!")
      expect(page).to have_text("Name: Katie")
      expect(page).to have_text("Power: Sinatra")
      expect(page).to have_text("Bio: I love Sinatra!")
    end
  end

end
