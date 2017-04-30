require 'spec_helper'

describe 'sessions/new.html.erb' do

  it 'displays form for new session correctly' do
    render
    expect(rendered).to have_content("Log In to Course Discuss")
  end
  
end