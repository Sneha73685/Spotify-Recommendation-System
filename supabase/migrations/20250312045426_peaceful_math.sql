/*
  # Initial Schema Setup for Spotify Recommendation System

  1. New Tables
    - users
      - id (uuid, primary key)
      - email (text, unique)
      - created_at (timestamp)
    - listening_history
      - id (uuid, primary key)
      - user_id (uuid, foreign key)
      - song_id (text)
      - artist (text)
      - listened_at (timestamp)
    - recommendations
      - id (uuid, primary key)
      - user_id (uuid, foreign key)
      - song_id (text)
      - artist (text)
      - confidence_score (float)
      - created_at (timestamp)

  2. Security
    - Enable RLS on all tables
    - Add policies for authenticated users to:
      - Read and write their own listening history
      - Read their recommendations
*/

-- Create users table
CREATE TABLE IF NOT EXISTS users (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  email text UNIQUE NOT NULL,
  created_at timestamptz DEFAULT now()
);

-- Create listening_history table
CREATE TABLE IF NOT EXISTS listening_history (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id uuid REFERENCES users(id) NOT NULL,
  song_id text NOT NULL,
  artist text NOT NULL,
  listened_at timestamptz DEFAULT now(),
  created_at timestamptz DEFAULT now()
);

-- Create recommendations table
CREATE TABLE IF NOT EXISTS recommendations (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id uuid REFERENCES users(id) NOT NULL,
  song_id text NOT NULL,
  artist text NOT NULL,
  confidence_score float NOT NULL,
  created_at timestamptz DEFAULT now()
);

-- Enable Row Level Security
ALTER TABLE users ENABLE ROW LEVEL SECURITY;
ALTER TABLE listening_history ENABLE ROW LEVEL SECURITY;
ALTER TABLE recommendations ENABLE ROW LEVEL SECURITY;

-- Create policies
CREATE POLICY "Users can read own data"
  ON users
  FOR SELECT
  TO authenticated
  USING (auth.uid() = id);

CREATE POLICY "Users can read own listening history"
  ON listening_history
  FOR SELECT
  TO authenticated
  USING (auth.uid() = user_id);

CREATE POLICY "Users can insert own listening history"
  ON listening_history
  FOR INSERT
  TO authenticated
  WITH CHECK (auth.uid() = user_id);

CREATE POLICY "Users can read own recommendations"
  ON recommendations
  FOR SELECT
  TO authenticated
  USING (auth.uid() = user_id);