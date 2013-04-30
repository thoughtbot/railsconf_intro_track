require 'spec_helper'

feature 'User manages tasks' do
  scenario 'add a task' do
    task_name = 'Mow the lawn'

    visit root_path
    click_link 'New Task'
    fill_in 'Name', with: task_name
    click_button 'Create Task'

    expect(page).to have_content task_name
  end

  scenario 'view all tasks' do
    tasks = create_list(:task, 3)

    visit root_path

    expect(page).to have_content task_name
  end

  scenario 'user enters a long name for the task' do
    task = create(:task, :long_name)

    visit root_path

    expect(page).to have_content(task.name)
  end
end
