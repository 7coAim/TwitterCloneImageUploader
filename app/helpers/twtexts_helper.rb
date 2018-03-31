module TwtextsHelper
  def choose_new_or_edit
    if action_name == 'new' || action_name == 'confirm'
      confirm_twtexts_path
    elsif action_name == 'edit'
      twtext_path
    end
  end
end
