CREATE TABLE hotel_bookings (
    id UUID PRIMARY KEY,
    org_id UUID,
    hotel_id VARCHAR(100),
    city VARCHAR(100),
    checkin_date DATE,
    checkout_date DATE,
    amount NUMERIC(12,2),
    status VARCHAR(50),
    created_at TIMESTAMP
);

CREATE TABLE booking_events (
    id BIGSERIAL PRIMARY KEY,
    booking_id UUID,
    event_type VARCHAR(100),
    payload JSONB,
    created_at TIMESTAMP
);

CREATE INDEX idx_booking_city_created
ON hotel_bookings(city, created_at);
