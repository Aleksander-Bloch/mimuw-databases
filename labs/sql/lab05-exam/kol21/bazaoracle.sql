DROP TABLE autorstwo;
DROP TABLE cytowanie;

CREATE TABLE autorstwo (
  tytul VARCHAR2(100) NOT NULL,
  autor VARCHAR2(100) NOT NULL
);	

CREATE TABLE cytowanie (
  tytul_cytujaca VARCHAR2(100),
  tytul_cytowana VARCHAR2(100)		
);

INSERT INTO autorstwo VALUES ('Attention Is All You Need', 'Lukasz Kaiser');
INSERT INTO autorstwo VALUES ('Attention Is All You Need', 'Ashish Vaswani');
INSERT INTO autorstwo VALUES ('Attention Is All You Need', 'Noam Shazeer');
INSERT INTO autorstwo VALUES ('Attention Is All You Need', 'Niki Parmar');
INSERT INTO autorstwo VALUES ('Attention Is All You Need', 'Jakob Uszkoreit');
INSERT INTO autorstwo VALUES ('Attention Is All You Need', 'Llion Jones');
INSERT INTO autorstwo VALUES ('Longformer: The Long-Document Transformer', 'Iz Beltagy');
INSERT INTO autorstwo VALUES ('Longformer: The Long-Document Transformer', 'Matthew E. Peters');
INSERT INTO autorstwo VALUES ('Longformer: The Long-Document Transformer', 'Arman Cohan');
INSERT INTO autorstwo VALUES ('Longformer 2: The Long-Document Transformer', 'Iz Beltagy');
INSERT INTO autorstwo VALUES ('Longformer 3: The Long-Document Transformer', 'Iz Beltagy');
INSERT INTO autorstwo VALUES ('Longformer 4: The Long-Document Transformer', 'Iz Beltagy');
INSERT INTO autorstwo VALUES ('Shortformer: The Short-Document Transformer', 'Piotr Kowalski');
INSERT INTO autorstwo VALUES ('Shortformer: The Short-Document Transformer', 'Jan Kowalski');
INSERT INTO autorstwo VALUES ('UltraFormer: Generic Transformer', 'Jarek Kowalski');
INSERT INTO autorstwo VALUES ('Attention is Not All You Need: Pure Attention Loses Rank Doubly Exponentially with Depth', 'Yihe Dong');
INSERT INTO autorstwo VALUES ('Attention is Not All You Need: Pure Attention Loses Rank Doubly Exponentially with Depth', 'Jean-Baptiste Cordonnier');
INSERT INTO autorstwo VALUES ('Attention is Not All You Need: Pure Attention Loses Rank Doubly Exponentially with Depth', 'Andreas Loukas');
INSERT INTO autorstwo VALUES ('Biased Transformer', 'Jan Kowalski');
INSERT INTO autorstwo VALUES ('Hourglass', 'Janina Kowalska');
INSERT INTO autorstwo VALUES ('Titan', 'Lukas Sun');


INSERT INTO cytowanie VALUES ('UltraFormer: Generic Transformer', 'Attention is Not All You Need: Pure Attention Loses Rank Doubly Exponentially with Depth');
INSERT INTO cytowanie VALUES ('UltraFormer: Generic Transformer', 'Longformer: The Long-Document Transformer');
INSERT INTO cytowanie VALUES ('UltraFormer: Generic Transformer', 'Shortformer: The Short-Document Transformer');
INSERT INTO cytowanie VALUES ('Longformer: The Long-Document Transformer', 'Biased Transformer');
INSERT INTO cytowanie VALUES ('Shortformer: The Short-Document Transformer', 'Biased Transformer');
INSERT INTO cytowanie VALUES ('Biased Transformer', 'Attention Is All You Need');
INSERT INTO cytowanie VALUES ('Longformer 2: The Long-Document Transformer', 'Biased Transformer');
INSERT INTO cytowanie VALUES ('Longformer 3: The Long-Document Transformer', 'Biased Transformer');
INSERT INTO cytowanie VALUES ('Longformer 4: The Long-Document Transformer', 'Biased Transformer');
INSERT INTO cytowanie VALUES ('Longformer 2: The Long-Document Transformer', 'Hourglass');
INSERT INTO cytowanie VALUES ('Longformer 3: The Long-Document Transformer', 'Hourglass');
INSERT INTO cytowanie VALUES ('Longformer 4: The Long-Document Transformer', 'Hourglass');
INSERT INTO cytowanie VALUES ('Longformer 2: The Long-Document Transformer', 'Titan');
INSERT INTO cytowanie VALUES ('Longformer 3: The Long-Document Transformer', 'Titan');
INSERT INTO cytowanie VALUES ('Longformer 4: The Long-Document Transformer', 'Titan');
INSERT INTO cytowanie VALUES ('UltraFormer: Generic Transformer', 'Longformer 2: The Long-Document Transformer');
INSERT INTO cytowanie VALUES ('Longformer: The Long-Document Transformer', 'Longformer 2: The Long-Document Transformer');
INSERT INTO cytowanie VALUES ('Shortformer: The Short-Document Transformer', 'Longformer 2: The Long-Document Transformer');
INSERT INTO cytowanie VALUES ('UltraFormer: Generic Transformer', 'Longformer 3: The Long-Document Transformer');
INSERT INTO cytowanie VALUES ('Longformer: The Long-Document Transformer', 'Longformer 3: The Long-Document Transformer');
INSERT INTO cytowanie VALUES ('Shortformer: The Short-Document Transformer', 'Longformer 3: The Long-Document Transformer');
INSERT INTO cytowanie VALUES ('UltraFormer: Generic Transformer', 'Longformer 4: The Long-Document Transformer');
INSERT INTO cytowanie VALUES ('Longformer: The Long-Document Transformer', 'Longformer 4: The Long-Document Transformer');
INSERT INTO cytowanie VALUES ('Shortformer: The Short-Document Transformer', 'Longformer 4: The Long-Document Transformer');
INSERT INTO cytowanie VALUES ('Longformer 2: The Long-Document Transformer', 'Attention Is All You Need');
INSERT INTO cytowanie VALUES ('Longformer 3: The Long-Document Transformer', 'Attention Is All You Need');
INSERT INTO cytowanie VALUES ('Longformer 4: The Long-Document Transformer', 'Attention Is All You Need');

COMMIT;
