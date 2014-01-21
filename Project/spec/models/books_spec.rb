require 'spec_helper'

describe Books do
  before { 
    @book = Book.new(name: "The Great Kate and her Seven Xuedis", 
    isbn: "978-1934356142", author: "Jacy Li", publisher: "Panda Press", edition: "13th",
    description: "Almost new.", status: "Unavailable")
    }
    
    subject { @user }
    
    it { should respond_to(:name) }
    it { should respond_to(:author) }
    it { should respond_to(:isbn) }
    
    
end
