module Connpass
  module Event
    def event_search options = {}
      convert_response(get('event', options))
    end
  end
end
