class Booking < ApplicationRecord
  belongs_to :pet
  belongs_to :user
  validate :validate_other_booking_overlap

  def period
    (self.start..self.end)
  end

  private

  def validate_other_booking_overlap
    other_bookings = Booking.all
    is_overlapping = other_bookings.any? do |other_booking|
      period.overlaps?(other_booking.period)
    end
    errors.add(:overlaps_with_other) if is_overlapping
  end
end
