DROP TABLE IF EXISTS "coffees";

CREATE TABLE IF NOT EXISTS "coffees" (
  id SERIAL PRIMARY KEY,
  name VARCHAR(128) UNIQUE,
  description TEXT,
  reference VARCHAR(255),
  origin VARCHAR(255),
  pricekg DECIMAL(10, 2),
  main_characteristic VARCHAR(255),
  available BOOLEAN
);

INSERT INTO coffees (name, description, reference, origin, pricekg, main_characteristic, available) VALUES
('Expresso', 'Café fort et concentré préparé en faisant passer de l''eau chaude à travers du café finement moulu.', '100955890', 'Italie', 20.99, 'Corsé', TRUE),
('Colombien', 'Café moyennement corsé avec une acidité vive et une saveur riche.', '100955894', 'Colombie', 18.75, 'Acide', TRUE),
('Yirgacheffe éthiopien', 'Réputé pour son arôme floral, son acidité vive et ses notes de saveur citronnée.', '105589090', 'Éthiopie', 22.50, 'Fruité', TRUE),
('Santos brésilien', 'Café doux et lisse avec un profil de saveur de noisette.', '134009550', 'Brésil', 17.80, 'Doux', TRUE),
('Antigua guatémaltèque', 'Café corsé avec des nuances chocolatées et une pointe d''épice.', '256505890', 'Guatemala', 21.25, 'Corsé', TRUE),
('AA kenyan', 'Café complexe connu pour son acidité rappelant le vin et ses saveurs fruitées.', '295432730', 'Kenya', 23.70, 'Acide', TRUE),
('Mandheling de Sumatra', 'Café profond et terreux avec un corps lourd et une faible acidité.', '302932754', 'Indonésie', 19.95, 'Corsé', TRUE),
('Tarrazu costaricien', 'Café vif et net avec une finition propre et une acidité vive.', '327302954', 'Costa Rica', 24.50, 'Acide', TRUE),
('Robusta vietnamien', 'Café audacieux et fort avec une saveur robuste distinctive.', '549549090', 'Viêt Nam', 16.75, 'Épicé', TRUE),
('Pois de Tanzanie', 'Acidité vive avec un profil de saveur rappelant le vin et un corps moyen.', '582954954', 'Tanzanie', 26.80, 'Fruité', TRUE),
('Montagne bleue jamaïcaine', 'Reconnu pour sa saveur douce, son acidité vive et son absence d''amertume.', '589100954', 'Jamaïque', 39.25, 'Doux', TRUE),
('Bourbon rwandais', 'Café avec des notes florales prononcées, une acidité vive et un corps moyen.', '650753915', 'Rwanda', 21.90, 'Fruité', TRUE),
('Geisha panaméenne', 'Café rare aux arômes floraux complexes, une acidité brillante et un profil de saveur distinctif.', '795501340', 'Panama', 42.00, 'Fruité', TRUE),
('Arabica péruvien', 'Café équilibré avec des notes de chocolat, une acidité modérée et un corps velouté.', '954589100', 'Pérou', 19.40, 'Chocolaté', FALSE),
('Kona hawaïen', 'Café rare au goût riche, une acidité douce et des nuances subtiles.', '958090105', 'Hawaï', 55.75, 'Doux', FALSE),
('Maragogipe nicaraguayen', 'Café avec des notes de fruits, une acidité vive et un corps plein.', '691550753', 'Nicaragua', 28.60, 'Fruité', FALSE);
