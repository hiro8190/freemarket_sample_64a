crumb :root do
  link "トップページ", root_path
end

crumb :mypage do
  link "マイページ", users_path
end

crumb :editprofile do
  link "プロフィール", editprofile_users_path
  parent :mypage
end

crumb :creditConfirm do
  link "支払い方法", creditConfirm_card_index_path
  parent :mypage
end

crumb :signout do
  link "ログアウト", signout_users_path
  parent :mypage
end

crumb :exhibit do
  link "出品した商品-出品中", exhibit_item_path
  parent :mypage
end

# crumb : do
#   link "マイページ", mypage_users_path
# end

# crumb :projects do
#   link "Projects", projects_path
# end

# crumb :project do |project|
#   link project.name, project_path(project)
#   parent :projects
# end

# crumb :project_issues do |project|
#   link "Issues", project_issues_path(project)
#   parent :project, project
# end

# crumb :issue do |issue|
#   link issue.title, issue_path(issue)
#   parent :project_issues, issue.project
# end

# If you want to split your breadcrumbs configuration over multiple files, you
# can create a folder named `config/breadcrumbs` and put your configuration
# files there. All *.rb files (e.g. `frontend.rb` or `products.rb`) in that
# folder are loaded and reloaded automatically when you change them, just like
# this file (`config/breadcrumbs.rb`)