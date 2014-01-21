require 'spec_helper'

describe User do
  before { @user = User.new(username: "wenpeiying", nickname: "wenwanruyu") }
  subject { @user }
  
  it { should respond_to(:username) }
  it { should respond_to(:nickname) }

end
