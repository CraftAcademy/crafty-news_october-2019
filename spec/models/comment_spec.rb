RSpec.describe Comment, type: :model do
  describe "DB columns" do
  it { is_expected.to have_db_column :body }
  end
  
  describe "Validations" do
    it { is_expected.to validate_presence_of :body }
  end

  describe 'Associations' do
    it { is_expected.to belong_to :article }
    it { is_expected.to belong_to :user }
  end

  it "has a valid Factory" do
    expect(create(:article)).to be_valid
  end
end
