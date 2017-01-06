module FlashesHelper
  FLESH_CLASSES = { alert:"danger", notice:"success"}.freeze

  def flash_class(key)
    FLESH_CLASSES.fetch key.to_sym,key
  end

  def user_facing_flashes
    flash.to_hash.slice "alert", "notice","warning"
  end
end
