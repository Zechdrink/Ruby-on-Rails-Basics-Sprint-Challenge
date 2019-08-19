require "publishable/version"

module Publishable
  # 3. Add a `publish` method to the `publishable` 
  # module (at `lib/publishable.rb`) that calls `update` 
  # with the `published_at` value set to `Time.now`.
  def publish
    update(published_at: Time.now)
  end
  # 4. Add the `unpublish` method which will update the 
  # `published_at` value to `nil`
  def unpublish
    update(published_at: nil)
  end
  # 5. Add a `published?` method to check if the `published_at` 
  # field is 'not `nil`'.
  def published?
    published_at.present?
  end

end
