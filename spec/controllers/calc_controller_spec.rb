require 'spec_helper'

describe CalcController do
	Let(:calc) ...... something here

	before :each do
		sign_in
end



describe '#create' do
	before each do
		it 'creates a new user' do
			user.new, {id: user.name}
			expect(response).to render_template(:user)
		end
	end