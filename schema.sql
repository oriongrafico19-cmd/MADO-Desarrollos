-- MADO / Cloudflare D1
CREATE TABLE IF NOT EXISTS projects (
  id TEXT PRIMARY KEY,
  slug TEXT UNIQUE NOT NULL,
  name TEXT NOT NULL,
  type TEXT NOT NULL,
  description TEXT,
  status TEXT DEFAULT 'draft',
  visibility TEXT DEFAULT 'public',
  store_url TEXT,
  created_at TEXT DEFAULT CURRENT_TIMESTAMP,
  updated_at TEXT DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS legal_documents (
  id TEXT PRIMARY KEY,
  project_id TEXT NOT NULL,
  slug TEXT NOT NULL,
  title TEXT NOT NULL,
  content TEXT,
  status TEXT DEFAULT 'draft',
  visibility TEXT DEFAULT 'unlisted',
  updated_at TEXT DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY(project_id) REFERENCES projects(id)
);

INSERT OR IGNORE INTO projects
(id, slug, name, type, description, status, visibility)
VALUES
('game-001', 'que-numero-traigo', 'Qué número traigo', 'game',
 'El primer videojuego de MADO DESARROLLO.', 'development', 'public');
