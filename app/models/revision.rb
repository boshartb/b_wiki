class Revision < ActiveRecord::Base
	belongs_to :page
	# belongs_to :previous, class_name: "Revision"

  def previous
    all = page.revisions
    pos = all.index(self) - 1
    if pos < 0
      nil
    else
      all[pos]
    end
  end

  def next
    all = page.revisions
    pos = all.index(self) + 1
    if pos >= all.size
      nil
    else
      all[pos]
    end
  end


end