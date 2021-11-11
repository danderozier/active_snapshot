require "active_record"

if ActiveRecord::VERSION::MAJOR <= 5
  require "activerecord-import"
end

require "active_snapshot/version"

require "active_snapshot/models/snapshot"
require "active_snapshot/models/snapshot_item"

require "active_snapshot/models/concerns/snapshots_concern"

module ActiveSnapshot
  extend ActiveSupport::Concern

  included do
    include ActiveSnapshot::SnapshotsConcern
  end
end
