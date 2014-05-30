require 'spec_helper'

describe "articles/edit" do
  before(:each) do
    @article = assign(:article, stub_model(Article,
      :title => "MyString",
      :body => "MyText",
      :user_id => 1,
      :word_count => 1
    ))
  end

  it "renders the edit article form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", article_path(@article), "post" do
      assert_select "input#article_title[name=?]", "article[title]"
      assert_select "textarea#article_body[name=?]", "article[body]"
      assert_select "input#article_user_id[name=?]", "article[user_id]"
      assert_select "input#article_word_count[name=?]", "article[word_count]"
    end
  end
end
