class Page < ActiveRecord::Base
	has_many :revisions 

  def latest_revision
    revisions.last 
  end

  def add_revision(body)
    revisions.create(body: body)
  end
end