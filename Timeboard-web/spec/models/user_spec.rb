require 'spec_helper'

describe User do

  before { @user = User.new(validUser) }

  subject { @user}

  it { should respond_to(:email) }
  it { should respond_to(:password) }
  it { should respond_to(:password_digest) }
  it { should respond_to(:password_confirmation)}
  it { should respond_to(:first_name) }
  it { should respond_to(:last_name) }
  it { should respond_to(:nick_name) }
  it { should respond_to(:gender) }
  it { should respond_to(:date_of_birth) }
  it { should respond_to(:date_joined) }
  it { should respond_to(:profile_photo_url) }
  it { should respond_to(:authenticate)}


  describe "return value of authenticate method" do
    before {@user.save}
    let(:found_user) { User.find_by(email:@user.email)}
    
    describe "with valid password" do
      it {should eq found_user.authenticate(@user.password) }
    end

    describe "with invalid password" do
      let(:invalid_user) { found_user.authenticate("invalid password") }
      
      it { should_not eq invalid_user}
    end
  end



  describe "when email is not present" do
    before { @user.email = "" }
    it { should_not be_valid }
  end

  describe "when password is not present" do
    before do 
      @user.password = ""
      @user.password_confirmation = ""
    end

    it { should_not be_valid }
  end

  describe "when password is not match" do
    before {@user.password = "wrong"}
    it { should_not be_valid }
  end

  describe "when email is too long" do
    before {@user.email = "a" *256 }
    it { should_not be_valid }
  end

  describe "when email format is valid" do
    it "should be valid" do
      address = %w[user@foo.COM A_US-ER@f.b.org frst.lst@foo.jp a+b@baz.cn]
      address.each do |valid_address|
        @user.email = valid_address
        expect(@user).to be_valid
      end
    end
  end

  describe "when email address is already taken" do
    before do
      same_email = @user.dup
      same_email.email = @user.email.upcase
      same_email.save
    end

    it { should_not be_valid }
  end

  describe "again when email address is already taken" do
    before do
      same_email = @user.dup
      same_email.email = @user.email.upcase
      same_email.save
    end

    it { should_not be_valid }
  end




end
