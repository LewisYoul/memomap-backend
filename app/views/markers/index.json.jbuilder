# frozen_string_literal: true

json.array! @markers, partial: 'markers/marker', as: :marker
