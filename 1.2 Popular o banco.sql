-- Populate "store" table
INSERT INTO "store" ("id", "created_at", "updated_at", "name", "address", "city", "state", "coordinates", "description", "delivery_range")  VALUES
  ('e8e176a4-8baa-4a78-9c02-47c5c50f50a1', NOW(), NOW(), 'Gourmet Grocers', 'Rua do Berilo', 'Natal', 'Rio Grande do Norte', ST_GeographyFromText('POINT(-75.0 40.7)'), 'A high-end grocery store', 5.0),
  ('c4f251df-79a9-4e1b-bd7e-8f6ed26c7f98', NOW(), NOW(), 'Organic Oasis','Rua do Diamante', 'Natal', 'Rio Grande do Norte', ST_GeographyFromText('POINT(-75.1 40.8)'), 'Specializing in organic products', 6.0),
  ('1f5f4a7b-0bd7-4f85-a285-7391c0e3f056', NOW(), NOW(), 'Cheese Haven','Rua do Sal', 'Rio de Janeiro', 'Rio de Janeiro', ST_GeographyFromText('POINT(-75.2 40.9)'), 'A paradise for cheese lovers', 7.0),
  ('76c05c22-145a-442c-9a2f-5f65a2874784', NOW(), NOW(), 'Farm Fresh Market', 'Avenida do Ouro', 'Rio de Janeiro', 'Rio de Janeiro', ST_GeographyFromText('POINT(-75.3 41.0)'), 'Direct from the farm to your table', 8.0),
  ('e3df874b-b3b8-4bb6-8fc2-485d05e5ed2a', NOW(), NOW(), 'Seafood Sensations', 'Rua do Quartzo', 'Rio de Janeiro', 'Rio de Janeiro', ST_GeographyFromText('POINT(-75.4 41.1)'), 'A seafood lover’s delight', 9.0),
  ('ae2820d0-2f26-4d5a-8eb7-8521a06f5a36', NOW(), NOW(), 'Mediterranean Mart', 'Avenida Paulista', 'São Paulo', 'São Paulo', ST_GeographyFromText('POINT(-75.5 41.2)'), 'Bringing the flavors of the Mediterranean', 10.0),
  ('5efed876-2453-4a25-a796-f9b075458a2f', NOW(), NOW(), 'Spice Bazaar', 'Rua Augusta', 'São Paulo', 'São Paulo', ST_GeographyFromText('POINT(-75.6 41.3)'), 'A diverse collection of spices', 11.0),
  ('c6cf26a0-0a35-4d7c-90f5-20971fc7aae7', NOW(), NOW(), 'Vegan Delights', 'Rua do Grafite', 'São Paulo', 'São Paulo', ST_GeographyFromText('POINT(-75.7 41.4)'), 'Catering to the vegan lifestyle', 12.0),
  ('d34a76e7-0daa-4c1c-a801-9144d4a762c5', NOW(), NOW(), 'Wine World', 'Rua da Turmalina', 'São Paulo', 'São Paulo', ST_GeographyFromText('POINT(-75.8 41.5)'), 'Curated selection of fine wines', 13.0),
  ('67cbca3b-7b0a-4e6e-b5bb-3d4deea067f3', NOW(), NOW(), 'Asian Fusion Market', 'Avenida Cabo Branco', 'João Pessoa', 'Paraíba', ST_GeographyFromText('POINT(-75.9 41.6)'), 'Fusion of flavors from across Asia', 14.0);

-- Populate "cheese" table
INSERT INTO "cheese" ("id", "created_at", "updated_at", "name", "quantity", "price", "description", "store_id") 
VALUES
  ('d5102e43-d2bb-45c5-bb35-8f13f86a631f', NOW(), NOW(), 'Brie', 20, '100', 'Soft and creamy', 'e8e176a4-8baa-4a78-9c02-47c5c50f50a1'),
  ('3d45fb72-2c4e-4a0e-8da5-e93f3bb7c947', NOW(), NOW(), 'Gouda', 15, '200', 'Mild and nutty', 'e8e176a4-8baa-4a78-9c02-47c5c50f50a1'),
  ('e3e081b3-57fe-4f02-a875-1a6393b2c3f0', NOW(), NOW(), 'Cheddar', 18, '50', 'Sharp and aged', 'c4f251df-79a9-4e1b-bd7e-8f6ed26c7f98'),
  ('a3f22a4f-017f-4174-9742-85b8362a3d2c', NOW(), NOW(), 'Camembert', 25, '20', 'Creamy with a white, bloomy rind', 'c4f251df-79a9-4e1b-bd7e-8f6ed26c7f98'),
  ('bd9a690a-08c5-4660-8921-3beed595b42e', NOW(), NOW(), 'Camembert', 25, '20', 'Creamy with a white, bloomy rind', '1f5f4a7b-0bd7-4f85-a285-7391c0e3f056'),
  ('06c4938d-679b-4e4d-9f3a-68d3db1ba0a2', NOW(), NOW(), 'Blue Cheese', 22, '30', 'Strong and pungent', '76c05c22-145a-442c-9a2f-5f65a2874784'),
  ('fc67eb49-2dbf-4f00-b189-d8ed95a8d536', NOW(), NOW(), 'Blue Cheese', 22, '30', 'Strong and pungent', 'e3df874b-b3b8-4bb6-8fc2-485d05e5ed2a'),
  ('b478e8ae-946b-46d0-9092-9380321a406a', NOW(), NOW(), 'Manchego', 30, '80', 'Spanish sheep milk cheese', 'ae2820d0-2f26-4d5a-8eb7-8521a06f5a36'),
  ('8217cc3e-10c4-46bb-a1d4-3d3f71d021b4', NOW(), NOW(), 'Pepper Jack', 15, '57', 'Spicy Monterey Jack', '5efed876-2453-4a25-a796-f9b075458a2f'),
  ('9d255bf5-d139-4289-8ad0-7813e6970af6', NOW(), NOW(), 'Vegan Cheese', 20, '150', 'Dairy-free alternative', 'c6cf26a0-0a35-4d7c-90f5-20971fc7aae7'),
  ('af43de71-45d2-46f1-9a1e-5c06b4e50e48', NOW(), NOW(), 'Gruyère', 18, '28', 'Swiss cheese with a sweet, nutty flavor', 'd34a76e7-0daa-4c1c-a801-9144d4a762c5'),
  ('37e5d2eb-f8ce-468d-ba9c-bf7da4aa8653', NOW(), NOW(), 'Manchego', 30, '80', 'Spanish sheep milk cheese', 'd34a76e7-0daa-4c1c-a801-9144d4a762c5'),
  ('6a0f835d-7ac1-4bb3-baa2-651b189c2925', NOW(), NOW(), 'Feta', 25, '10', 'Crumbling Greek cheese', '67cbca3b-7b0a-4e6e-b5bb-3d4deea067f3');

 -- Populate "customer" table
INSERT INTO "customer" ("id", "created_at", "updated_at", "name", "gov_reg_code")
VALUES
  ('7f4a07e0-5b3b-4e74-8a4f-4e2f9078f6c5', NOW(), NOW(), 'José', '12345678909'),
('7ba8bc0a-3af4-42c1-9b69-0d49a76f0f43', NOW(), NOW(), 'Pedro', '98765432100'),
('85e684e5-45c6-4d63-85e3-ae95c02aef6e', NOW(), NOW(), 'Henrique', '11122233344'),
('5ee6e2a1-9c2a-41bf-97cf-d24304d128a7', NOW(), NOW(), 'Jordão', '55566677788'),
('1f4967ce-bc7b-4a84-b4d6-d5911bf07e46', NOW(), NOW(), 'João Pedro', '99988877766'),
('3c3cfcc7-20bf-4a92-9e95-d9d21a7e90fc', NOW(), NOW(), 'Inácio', '44433322211'),
('2c4d7f61-47c4-41a2-8f88-575913b28465', NOW(), NOW(), 'Luan', '77788899900'),
('bf3b2335-78fc-4e6e-8eb2-0626e04a0138', NOW(), NOW(), 'Janaina', '33322211144'),
('e87cde8c-614f-4919-bad7-453c207dbedb', NOW(), NOW(), 'Sara', '66655544488'),
('f3a161b6-5f72-4d3a-99f1-15df81ee057f', NOW(), NOW(), 'Rita', '22233344455'),
('4f92d8a9-ee79-4e62-b4bf-5f236ed3e0b7', NOW(), NOW(), 'Jane', '88877766699'),
('1ce66ec3-d7c3-4094-8eaa-83c823c29bc4', NOW(), NOW(), 'Julia', '00011122233');

-- Populate "customer_address" table
INSERT INTO "customer_address" ("id", "created_at", "updated_at", "address", "city", "state", "coordinates", "customer_id")
VALUES
  ('2acfc4b3-01c3-4ecf-b00f-c0d79aa0215a', NOW(), NOW(), 'Rua Bela Cintra', 'São Paulo', 'São Paulo', ST_GeographyFromText('POINT(-46.6483 -23.5661)'), '7f4a07e0-5b3b-4e74-8a4f-4e2f9078f6c5'),
('1c64a06e-202c-4c5e-bc8f-69d1e80d9e7b', NOW(), NOW(), 'Avenida Atlântica', 'Rio de Janeiro', 'Rio de Janeiro', ST_GeographyFromText('POINT(-43.1736 -22.9676)'), '7ba8bc0a-3af4-42c1-9b69-0d49a76f0f43'),
('0e6d1dd3-0f1d-417e-aa6f-59e6eb8162d2', NOW(), NOW(), 'Rua Ponta Negra', 'Natal', 'Rio Grande do Norte', ST_GeographyFromText('POINT(-35.2009 -5.8824)'), '85e684e5-45c6-4d63-85e3-ae95c02aef6e'),

('bb5f0995-ae2c-4473-89fc-9d692b1550a4', NOW(), NOW(), 'Avenida Epitácio Pessoa', 'João Pessoa', 'Paraíba', ST_GeographyFromText('POINT(-34.8829 -7.1153)'), '5ee6e2a1-9c2a-41bf-97cf-d24304d128a7'),

('e0af9aa7-27a9-4e42-9389-43a3a89fc2d3', NOW(), NOW(), 'Rua Augusta', 'São Paulo', 'São Paulo', ST_GeographyFromText('POINT(-46.6486 -23.5533)'), '1f4967ce-bc7b-4a84-b4d6-d5911bf07e46'),
('12c4c6f4-8f87-4d98-83fc-4c0b7e1a4644', NOW(), NOW(), 'Rua Copacabana', 'Rio de Janeiro', 'Rio de Janeiro', ST_GeographyFromText('POINT(-43.1872 -22.9711)'), '3c3cfcc7-20bf-4a92-9e95-d9d21a7e90fc'),
('82c8a641-cdd9-4a95-9ebf-4302767d9c92', NOW(), NOW(), 'Avenida Salgado Filho', 'Natal', 'Rio Grande do Norte', ST_GeographyFromText('POINT(-35.2125 -5.7930)'), '2c4d7f61-47c4-41a2-8f88-575913b28465'),
('7529b912-36ea-4a8c-9e84-1b76c75106a0', NOW(), NOW(), 'Rua Treze de Maio', 'João Pessoa', 'Paraíba', ST_GeographyFromText('POINT(-34.8836 -7.1180)'), 'bf3b2335-78fc-4e6e-8eb2-0626e04a0138'),
('0c1876db-8680-4c1a-94a4-41319e8c1e23', NOW(), NOW(), 'Avenida Paulista', 'São Paulo', 'São Paulo', ST_GeographyFromText('POINT(-46.6476 -23.5614)'), 'e87cde8c-614f-4919-bad7-453c207dbedb'),
('532d495e-6e78-4ea8-8272-553a1b41f1f1', NOW(), NOW(), 'Rua Ipanema', 'Rio de Janeiro', 'Rio de Janeiro', ST_GeographyFromText('POINT(-43.1795 -22.9052)'), '7ba8bc0a-3af4-42c1-9b69-0d49a76f0f43'),
('3448fc1b-cd3c-417a-8d19-05a62ddc775a', NOW(), NOW(), 'Rua do Meio', 'Natal', 'Rio Grande do Norte', ST_GeographyFromText('POINT(-35.2014 -5.8018)'), '4f92d8a9-ee79-4e62-b4bf-5f236ed3e0b7'),
('c62c1a0f-768e-4675-8a08-df84be4b229e', NOW(), NOW(), 'Avenida Tancredo Neves', 'João Pessoa', 'Paraíba', ST_GeographyFromText('POINT(-34.8843 -7.1203)'), '1ce66ec3-d7c3-4094-8eaa-83c823c29bc4');

-- Populate "payment_form_catalog" table
INSERT INTO "payment_form_catalog" ("id", "created_at", "payment_type")
VALUES
  ('67647d35-9d2d-44d6-b8f7-243cb08f90bb', NOW(), 'Cartão de Crédito'),
('cc6c913f-b08d-41da-9e6d-66b07b993754', NOW(), 'Dinheiro em Espécie'),
('8c7455db-bc4a-4bd3-a51b-5f731cd3c39e', NOW(), 'Vale Alimentação'),
('7f3d06ab-1964-42b2-83b3-4e8cb28b9ef2', NOW(), 'PicPay'),
('ecdb17b9-34f7-4e29-af85-7a7ad63c9b16', NOW(), 'Nubank Pay');

-- Populate "customer_payment_form" table
INSERT INTO "customer_payment_form" ("id", "created_at", "customer_id", "payment_form_id")
VALUES
  ('aad68a58-8b0e-48b1-b6cd-41a2cc1f45eb', NOW(), '7f4a07e0-5b3b-4e74-8a4f-4e2f9078f6c5', '67647d35-9d2d-44d6-b8f7-243cb08f90bb'),
('fc8cb45f-8a57-4a34-80da-58ea3830d72e', NOW(), '7f4a07e0-5b3b-4e74-8a4f-4e2f9078f6c5', 'cc6c913f-b08d-41da-9e6d-66b07b993754'),
('3b01e8d8-af7b-478a-a20f-79283cb376c4', NOW(), '7ba8bc0a-3af4-42c1-9b69-0d49a76f0f43', '8c7455db-bc4a-4bd3-a51b-5f731cd3c39e'),
('61777a27-3f58-4325-ba02-b25b78a09b07', NOW(), '7ba8bc0a-3af4-42c1-9b69-0d49a76f0f43', 'ecdb17b9-34f7-4e29-af85-7a7ad63c9b16'),
('2f6189e9-c4e5-40e4-8bcf-2a303a8c7326', NOW(), '85e684e5-45c6-4d63-85e3-ae95c02aef6e', 'ecdb17b9-34f7-4e29-af85-7a7ad63c9b16'),
('7b07a8c8-ae8d-4f82-a517-79a9684e1b22', NOW(), '85e684e5-45c6-4d63-85e3-ae95c02aef6e', '67647d35-9d2d-44d6-b8f7-243cb08f90bb'),
('a76a9997-7763-45e5-937a-9f2e365204a1', NOW(), '5ee6e2a1-9c2a-41bf-97cf-d24304d128a7', 'cc6c913f-b08d-41da-9e6d-66b07b993754'),
('d889da8f-f9ee-45bb-8ff2-2f72aa2f86db', NOW(), '5ee6e2a1-9c2a-41bf-97cf-d24304d128a7', '8c7455db-bc4a-4bd3-a51b-5f731cd3c39e'),
('9e614ac5-9c05-4f2a-b00e-22c5b2e9128c', NOW(), '1f4967ce-bc7b-4a84-b4d6-d5911bf07e46', 'ecdb17b9-34f7-4e29-af85-7a7ad63c9b16'),
('4bb8e038-81a5-4e36-87a2-861dd53d9307', NOW(), '1f4967ce-bc7b-4a84-b4d6-d5911bf07e46', '67647d35-9d2d-44d6-b8f7-243cb08f90bb'),
('2c835f07-2a4c-4b29-86d2-8373ddc17e7b', NOW(), '3c3cfcc7-20bf-4a92-9e95-d9d21a7e90fc', 'cc6c913f-b08d-41da-9e6d-66b07b993754'),
('96f0f8a8-4da4-4e67-8418-d7c1397a72f4', NOW(), '3c3cfcc7-20bf-4a92-9e95-d9d21a7e90fc', 'ecdb17b9-34f7-4e29-af85-7a7ad63c9b16'),
('ed0c6a72-4240-49d7-a57f-147ba98dd8c3', NOW(), '2c4d7f61-47c4-41a2-8f88-575913b28465', 'ecdb17b9-34f7-4e29-af85-7a7ad63c9b16'),
('e1b75e11-1674-4d3e-a769-67d464e38f86', NOW(), '2c4d7f61-47c4-41a2-8f88-575913b28465', '67647d35-9d2d-44d6-b8f7-243cb08f90bb'),
('fcde3bd5-b72e-4f47-9f70-776214b94f19', NOW(), 'bf3b2335-78fc-4e6e-8eb2-0626e04a0138', 'cc6c913f-b08d-41da-9e6d-66b07b993754'),
('73b15e68-308b-4f6a-ba1e-7748e8c1c1c3', NOW(), 'bf3b2335-78fc-4e6e-8eb2-0626e04a0138', '7f3d06ab-1964-42b2-83b3-4e8cb28b9ef2'),
('19b8ed11-c88b-4ad4-a8da-d2345b235618', NOW(), 'e87cde8c-614f-4919-bad7-453c207dbedb', 'ecdb17b9-34f7-4e29-af85-7a7ad63c9b16'),
('80802b9c-4c76-408b-b9da-4aaf82c0ff9d', NOW(), 'e87cde8c-614f-4919-bad7-453c207dbedb', '67647d35-9d2d-44d6-b8f7-243cb08f90bb'),
('4c86cd34-dcaa-4c43-890c-e8360e5463c9', NOW(), 'f3a161b6-5f72-4d3a-99f1-15df81ee057f', 'cc6c913f-b08d-41da-9e6d-66b07b993754'),
('8d48607d-e0eb-4dcd-a648-5e66df3c5c14', NOW(), 'f3a161b6-5f72-4d3a-99f1-15df81ee057f', '7f3d06ab-1964-42b2-83b3-4e8cb28b9ef2'),
('40a05ee1-dacc-4eaa-89fc-76811c4bf18b', NOW(), '4f92d8a9-ee79-4e62-b4bf-5f236ed3e0b7', 'cc6c913f-b08d-41da-9e6d-66b07b993754'),
('8daae5f9-3f84-4b37-92bb-064e0b96f3a5', NOW(), '4f92d8a9-ee79-4e62-b4bf-5f236ed3e0b7', '7f3d06ab-1964-42b2-83b3-4e8cb28b9ef2'),
('ec43b7af-b13e-4811-9eae-b55ea615df87', NOW(), '1ce66ec3-d7c3-4094-8eaa-83c823c29bc4', 'ecdb17b9-34f7-4e29-af85-7a7ad63c9b16'),
('e85ef405-1e48-49f2-b477-8fb09d3d8f71', NOW(), '1ce66ec3-d7c3-4094-8eaa-83c823c29bc4', '67647d35-9d2d-44d6-b8f7-243cb08f90bb');

-- Populate "store_payment_form" table
insert
	into
	"store_payment_form" ("id",
	"created_at",
	"store_id",
	"payment_form_id")
values
  ('a5dbc343-1c7d-4744-887b-3206b2fc4daf',
NOW(),
'e8e176a4-8baa-4a78-9c02-47c5c50f50a1',
'67647d35-9d2d-44d6-b8f7-243cb08f90bb'),
  ('568daf49-88be-4ce5-8802-78cb9c23d261',
NOW(),
'e8e176a4-8baa-4a78-9c02-47c5c50f50a1',
'cc6c913f-b08d-41da-9e6d-66b07b993754'),
('f0666a8b-33e2-45c5-8ef2-63a8b68f4f82',
NOW(),
'c4f251df-79a9-4e1b-bd7e-8f6ed26c7f98',
'cc6c913f-b08d-41da-9e6d-66b07b993754'),
('294f39d1-5f90-4161-a787-59b902586ce4',
NOW(),
'1f5f4a7b-0bd7-4f85-a285-7391c0e3f056',
'8c7455db-bc4a-4bd3-a51b-5f731cd3c39e'),
('25a030e8-c5dd-4187-b60d-b592c3a5b50a',
NOW(),
'76c05c22-145a-442c-9a2f-5f65a2874784',
'7f3d06ab-1964-42b2-83b3-4e8cb28b9ef2'),
('846b9b2b-df0d-4c5c-81d9-476e579c0775',
NOW(),
'e3df874b-b3b8-4bb6-8fc2-485d05e5ed2a',
'ecdb17b9-34f7-4e29-af85-7a7ad63c9b16'),
('c995b29f-8aa2-40f3-bcd4-1c10c6fc0682',
NOW(),
'ae2820d0-2f26-4d5a-8eb7-8521a06f5a36',
'67647d35-9d2d-44d6-b8f7-243cb08f90bb'),
('d6b28da9-1466-447d-b9af-ba73147b16ce',
NOW(),
'5efed876-2453-4a25-a796-f9b075458a2f',
'cc6c913f-b08d-41da-9e6d-66b07b993754'),
('2c26c32a-39a8-49e2-8891-b051f5ff18d8',
NOW(),
'c6cf26a0-0a35-4d7c-90f5-20971fc7aae7',
'67647d35-9d2d-44d6-b8f7-243cb08f90bb'),
('0d842a64-3a85-4a9d-8c2f-b16a41f6ad56',
NOW(),
'd34a76e7-0daa-4c1c-a801-9144d4a762c5',
'ecdb17b9-34f7-4e29-af85-7a7ad63c9b16'),
('bd65f879-e523-42f3-836a-30cf03f497b2',
NOW(),
'67cbca3b-7b0a-4e6e-b5bb-3d4deea067f3',
'8c7455db-bc4a-4bd3-a51b-5f731cd3c39e');
 
 -- Populate "order" table
INSERT INTO "order" ("id", "created_at", "delivered_at", "store_id", "customer_address_id", "customer_payment_form_id", "total_value", "observations")
VALUES
  ('eab7c30b-7989-4ad1-8b6c-3cb3191cf1e2', NOW(), NOW(), 'e8e176a4-8baa-4a78-9c02-47c5c50f50a1', '0e6d1dd3-0f1d-417e-aa6f-59e6eb8162d2', '7b07a8c8-ae8d-4f82-a517-79a9684e1b22', 135, 'Delivery to back door'),
('5a8d4ea0-568b-42e4-9a02-8a2cc104a3bb', NOW(), NOW(), 'e8e176a4-8baa-4a78-9c02-47c5c50f50a1', '0e6d1dd3-0f1d-417e-aa6f-59e6eb8162d2', '7b07a8c8-ae8d-4f82-a517-79a9684e1b22', 30, 'Delivery to back door'),
('a731e481-3e0f-45b8-a719-74efeb819c1a', NOW(), NOW(), 'e8e176a4-8baa-4a78-9c02-47c5c50f50a1', '3448fc1b-cd3c-417a-8d19-05a62ddc775a', '40a05ee1-dacc-4eaa-89fc-76811c4bf18b', 100, 'Delivery to back door'),
('3b36a1a3-097c-46cd-8309-ae77c48ec9f5', NOW(), NOW(), 'e3df874b-b3b8-4bb6-8fc2-485d05e5ed2a', '1c64a06e-202c-4c5e-bc8f-69d1e80d9e7b', '61777a27-3f58-4325-ba02-b25b78a09b07', 44, 'Delivery to back door'),
('8d482c77-cc97-4657-9f59-97b7e87282e3', NOW(), NOW(), 'e3df874b-b3b8-4bb6-8fc2-485d05e5ed2a', '12c4c6f4-8f87-4d98-83fc-4c0b7e1a4644', '96f0f8a8-4da4-4e67-8418-d7c1397a72f4', 88, 'Delivery to back door'),
('475d58c9-39b7-4e43-a693-2a9a43fc0cd8', NOW(), NOW(), 'ae2820d0-2f26-4d5a-8eb7-8521a06f5a36', '0c1876db-8680-4c1a-94a4-41319e8c1e23', '80802b9c-4c76-408b-b9da-4aaf82c0ff9d', 300, 'Delivery to back door'),
('de97fe9b-8bb5-4c19-b16f-8e3a60ef6a34', NOW(), NOW(), 'ae2820d0-2f26-4d5a-8eb7-8521a06f5a36', '0c1876db-8680-4c1a-94a4-41319e8c1e23', '80802b9c-4c76-408b-b9da-4aaf82c0ff9d', 210, 'Delivery to back door'),
('b3656d4f-1077-4d18-9e3e-974ae9f986a6', NOW(), NOW(), 'c6cf26a0-0a35-4d7c-90f5-20971fc7aae7', 'e0af9aa7-27a9-4e42-9389-43a3a89fc2d3', '4bb8e038-81a5-4e36-87a2-861dd53d9307', 100, 'Delivery to back door'),
('dc4d82a3-30a0-44c0-b7e5-2fe4a3e7f5cd', NOW(), NOW(), 'd34a76e7-0daa-4c1c-a801-9144d4a762c5', 'e0af9aa7-27a9-4e42-9389-43a3a89fc2d3', '9e614ac5-9c05-4f2a-b00e-22c5b2e9128c', 108, 'Delivery to back door'),
('41e2f981-1579-447f-b2f1-3da9722fc1f0', NOW(), NOW(), '67cbca3b-7b0a-4e6e-b5bb-3d4deea067f3', 'bb5f0995-ae2c-4473-89fc-9d692b1550a4', 'd889da8f-f9ee-45bb-8ff2-2f72aa2f86db', 50, 'Delivery to back door');
 
-- Populate "order_items" table
INSERT INTO "order_items" ("id", "created_at", "cheese_id", "quantity", "order_id", "observations")
VALUES
  ('6a7c64e2-dbf1-45b7-9817-8016fb381f43', NOW(), 'd5102e43-d2bb-45c5-bb35-8f13f86a631f', 3, 'eab7c30b-7989-4ad1-8b6c-3cb3191cf1e2', 'Add extra crackers'),
  ('19781be6-6021-4f6c-bdf7-ffc1f79a2393', NOW(), '3d45fb72-2c4e-4a0e-8da5-e93f3bb7c947', 5, 'eab7c30b-7989-4ad1-8b6c-3cb3191cf1e2', 'Include a cheese knife'),
  ('60bc5223-0ec8-4f29-bde5-24c268c8dbcd', NOW(), '3d45fb72-2c4e-4a0e-8da5-e93f3bb7c947', 2, '5a8d4ea0-568b-42e4-9a02-8a2cc104a3bb', 'Include a cheese knife'),
  ('4f11d573-fcd7-4dac-9b4f-ede191cf96f9', NOW(), 'd5102e43-d2bb-45c5-bb35-8f13f86a631f', 5, 'a731e481-3e0f-45b8-a719-74efeb819c1a', 'Add extra crackers'),
  ('d3acffad-5bc6-4ff3-ae84-6e1780dbb1ef', NOW(), 'fc67eb49-2dbf-4f00-b189-d8ed95a8d536', 2, '3b36a1a3-097c-46cd-8309-ae77c48ec9f5', 'Wrap individually'),
  ('f5f57d38-641f-47a3-ba10-59b9da5d7cc4', NOW(), 'fc67eb49-2dbf-4f00-b189-d8ed95a8d536', 4, '8d482c77-cc97-4657-9f59-97b7e87282e3', 'No plastic packaging'),
  ('3c5c4370-7c8e-442f-a6fb-80aa587df18d', NOW(), 'b478e8ae-946b-46d0-9092-9380321a406a', 10, '475d58c9-39b7-4e43-a693-2a9a43fc0cd8', 'No plastic packaging'),
  ('ba99be8b-21f2-4a96-a343-8f1d8bdd3fa4', NOW(), 'b478e8ae-946b-46d0-9092-9380321a406a', 7, 'de97fe9b-8bb5-4c19-b16f-8e3a60ef6a34', 'No plastic packaging'),
  ('59fd4eb5-8f1c-4e68-9451-da0590532499', NOW(), '9d255bf5-d139-4289-8ad0-7813e6970af6', 5, 'b3656d4f-1077-4d18-9e3e-974ae9f986a6', 'No plastic packaging'),
  ('65f86eaf-7e16-4d84-a7cd-fbc971e5ffd9', NOW(), 'af43de71-45d2-46f1-9a1e-5c06b4e50e48', 1, 'dc4d82a3-30a0-44c0-b7e5-2fe4a3e7f5cd', 'No plastic packaging'),
  ('bc8729e1-6139-45df-83d2-a5e89be8e5c3', NOW(), '37e5d2eb-f8ce-468d-ba9c-bf7da4aa8653', 3, 'dc4d82a3-30a0-44c0-b7e5-2fe4a3e7f5cd', 'No plastic packaging'),
  ('4428e19c-0b44-4a67-96bb-86d783ba1504', NOW(), '6a0f835d-7ac1-4bb3-baa2-651b189c2925', 2, '41e2f981-1579-447f-b2f1-3da9722fc1f0', 'Wrap individually');

-- Populate "customer_points" table
INSERT INTO "customer_points" ("id", "created_at", "customer_id", "order_id", "points")
VALUES
('9237e28f-858d-4b18-90e0-a03547604e62', NOW(), '85e684e5-45c6-4d63-85e3-ae95c02aef6e', 'eab7c30b-7989-4ad1-8b6c-3cb3191cf1e2', 13.5),
('fe5a27b4-aa4e-4218-b54c-e646cc4a06f9', NOW(), '85e684e5-45c6-4d63-85e3-ae95c02aef6e', '5a8d4ea0-568b-42e4-9a02-8a2cc104a3bb', 3),
('71ab5bf5-50ab-4920-84cd-094e62f02290', NOW(), '4f92d8a9-ee79-4e62-b4bf-5f236ed3e0b7', 'a731e481-3e0f-45b8-a719-74efeb819c1a', 10),
('0079a0ab-b333-4bab-b98b-64123e91e27e', NOW(), '7ba8bc0a-3af4-42c1-9b69-0d49a76f0f43', '3b36a1a3-097c-46cd-8309-ae77c48ec9f5', 4.4),
('70e234bd-3fdd-43b5-b562-dc3e56b9cfe5', NOW(), '3c3cfcc7-20bf-4a92-9e95-d9d21a7e90fc', '8d482c77-cc97-4657-9f59-97b7e87282e3', 8.8),
('03225421-10d0-46fa-b186-f7f03dbf12ec', NOW(), 'e87cde8c-614f-4919-bad7-453c207dbedb', '475d58c9-39b7-4e43-a693-2a9a43fc0cd8', 30),
('9cbeae56-e4bb-4d92-89bc-61cad1b3116d', NOW(), 'e87cde8c-614f-4919-bad7-453c207dbedb', 'de97fe9b-8bb5-4c19-b16f-8e3a60ef6a34', 21),
('5f262db0-bc2d-4afd-b27e-f1a331126033', NOW(), '1f4967ce-bc7b-4a84-b4d6-d5911bf07e46', 'b3656d4f-1077-4d18-9e3e-974ae9f986a6', 10),
('fde056da-8931-4097-a64d-759bd7d16a5e', NOW(), '1f4967ce-bc7b-4a84-b4d6-d5911bf07e46', 'dc4d82a3-30a0-44c0-b7e5-2fe4a3e7f5cd', 10.8),
('962bd439-88e3-428a-9841-c1e019bf55dc', NOW(), '5ee6e2a1-9c2a-41bf-97cf-d24304d128a7', '41e2f981-1579-447f-b2f1-3da9722fc1f0', 5);


