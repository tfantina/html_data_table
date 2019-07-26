class ApplicantsHelperTest < ActionView::TestCase
  test "job_skill_count method returns correct number of skills" do
    assert_equal 3, job_skill_count(jobs(:web_developer))
  end

  test "link method returns link or nothing" do
    assert_equal "<a href=\"http://travisfantina.com\">travisfantina.com</a>", link("travisfantina.com")
    assert_equal "---", link("")
  end
   test "mail method return if no email is supplied" do
    assert_equal "<a href=\"mailto:tfantina@gmail.com\">tfantina@gmail.com</a>", mail("tfantina@gmail.com")
    assert_equal "---", mail("")
  end


end
