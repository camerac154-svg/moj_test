-- SQL skripta za kreiranje tabele moje_rakete u Supabase

-- Prvo obrišite postojeću tabelu ako postoji (OPREZ: ovo će obrisati sve podatke!)
-- DROP TABLE IF EXISTS moje_rakete;

-- Kreirajte novu tabelu
CREATE TABLE IF NOT EXISTS moje_rakete (
    id BIGSERIAL PRIMARY KEY,
    naziv TEXT NOT NULL,
    tip TEXT,
    opis TEXT,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT TIMEZONE('utc'::text, NOW()) NOT NULL
);

-- Ako želite da omogućite Row Level Security (RLS)
-- ALTER TABLE moje_rakete ENABLE ROW LEVEL SECURITY;

-- Ako želite da omogućite javno čitanje i dodavanje (za testiranje)
-- CREATE POLICY "Allow public read access" ON moje_rakete FOR SELECT USING (true);
-- CREATE POLICY "Allow public insert access" ON moje_rakete FOR INSERT WITH CHECK (true);
