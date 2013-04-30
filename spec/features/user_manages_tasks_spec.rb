require 'spec_helper'

feature 'User manages tasks' do
  scenario 'add a task' do
    task_name = 'Mow the lawn'

    visit root_path
    click_link 'New Task'
    fill_in 'Name', with: task_name
    click_button('Create Task')

    expect(page).to have_content(task_name)
  end

  scenario 'view all tasks' do
    task_name = 'Mow the lawn'
    Task.create!(name: task_name)

    visit root_path

    expect(page).to have_content(task_name)
  end

  scenario 'user edits a task' do
    original_name = 'Mow the lawn'
    updated_name = 'Paint the fence'
    Task.create!(name: original_name)

    visit root_path
    click_link 'Edit'
    fill_in 'Name', with: updated_name
    click_button('Update Task')

    expect(page).to have_content(updated_name)
  end
end
