require 'spec_helper'

describe "articles/new" do
  before(:each) do
    assign(:article, stub_model(Article,
      :title => "MyString",
      :body => "MyText",
      :user_id => 1,
      :word_count => 1
    ).as_new_record)
  end

  it "renders new article form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", articles_path, "post" do
      assert_select "input#article_title[name=?]", "article[title]"
      assert_select "textarea#article_body[name=?]", "article[body]"
      assert_select "input#article_user_id[name=?]", "article[user_id]"
      assert_select "input#article_word_count[name=?]", "article[word_count]"
    end
  end
end
