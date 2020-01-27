require 'rails_helper'
describe User do
  describe '#create' do
    context 'can save' do
      
      it "is valid with all" do
        user = build(:user)
        user.valid?
        expect(user).to be_valid
      end

      it "is invalid with a duplicate email address" do
        #はじめにユーザーを登録
        user = create(:user)
        #先に登録したユーザーと同じemailの値を持つユーザーのインスタンスを作成
        another_user = build(:user)
        another_user.valid?
        expect(another_user.errors[:email]).to include("has already been taken")
      end
    end

    context 'can not save' do

      it "is invalid without a name" do
        user = build(:user, name: "")
        user.valid?
        expect(user.errors[:name]).to include("can't be blank")
      end

      it "is invalid without a email" do
        user = build(:user,email: "")
        user.valid?
        expect(user.errors[:email]).to include("can't be blank")
      end

      it "is invalid without a password" do
        user = build(:user,password: "")
        user.valid?
        expect(user.errors[:password]).to include("can't be blank")
      end

      it "is invalid without a img_name" do
        user = build(:user,img_name: "")
        user.valid?
        expect(user.errors[:img_name]).to include("can't be blank")
      end

      it "is invalid without a prefecture_id" do
        user = build(:user,prefecture_id: "")
        user.valid?
        expect(user.errors[:prefecture_id]).to include("can't be blank")
      end

      it "is invalid without a blood_type_id" do
        user = build(:user,blood_type_id: "")
        user.valid?
        expect(user.errors[:blood_type_id]).to include("can't be blank")
      end
    end
  end
end