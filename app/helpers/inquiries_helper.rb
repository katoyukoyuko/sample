module InquiriesHelper
  def choose_new
    if action_name == 'new' || action_name == 'create'
      new_inquiry_path
    end
  end
end
