feature "User can play singleplayer vs computer do" do
    before do
        visit root_path
    end

    describe "user can see controls" do
        it 'has selector for rock' do
            click_on "Rock"
            expect(page).to have_content "Rock"
        end

        it 'has selector for paper' do
            click_on "Paper"
            expect(page).to have_content "Paper"
        end

        it 'has selector for scissor' do
            click_on "Scissor"
            expect(page).to have_content "Scissor"
        end
    end

    describe "computer can throw" do
        it 'randomly selects a throw' do
            expect(page).to have_content /Computer chose ((rock)|(paper)|scissor)/
        end
    end

    describe "user can see result" do
        it 'displays that player won' do
            expect(page).to have_content /You (won|lost)!/
        end
    end
end