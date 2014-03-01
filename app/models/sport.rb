class Sport
  include Id::Model

  field :id
  field :pos
  field :title
  field :is_virtual
  has_many :events, type: Event
  has_many :meetings

  def find_event(id)
    events.detect { |event| event.id == id }
  end

  def ordered_events
    events.sort { |a, b| a.pos <=> b.pos }
  end
end
