-- Write your migrate up statements here

CREATE TABLE IF NOT EXISTS messages (
  "id" uuid PRIMARY KEY NOT NULL DEFAULT gen_random_uuid(),
  "room_id" uuid NOT NULL,
  "message" text NOT NULL,
  "reaction_count" BIGINT NOT NULL DEFAULT 0,
  "answered" boolean NOT NULL DEFAULT false,
  FOREIGN KEY (room_id) REFERENCES rooms(id)
);

---- create above / drop below ----

DROP TABLE IF EXISTS messages;

-- Write your migrate down statements here. If this migration is irreversible
-- Then delete the separator line above.
