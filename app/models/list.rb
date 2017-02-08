class List < AppicationRecord

  validates_presence_of :title, :body


def info
  "list = #{title} #{body}"
end
