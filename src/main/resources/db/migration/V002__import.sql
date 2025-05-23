INSERT INTO `tb_participante` VALUES (1, 'José Silva', 'jose@gmail.com');
INSERT INTO `tb_participante` VALUES (2, 'Tiago Faria', 'tiago@gmail.com');
INSERT INTO `tb_participante` VALUES (3, 'Maria do Rosário', 'maria@gmail.com');
INSERT INTO `tb_participante` VALUES (4, 'Teresa Silva', 'teresa@gmail.com');

INSERT INTO `tb_categoria` VALUE (1, 'Curso');
INSERT INTO `tb_categoria` VALUE (2, 'Oficina');

INSERT INTO `tb_atividade` VALUE (1, 'Curso de HTML', 'Aprenda HTML de forma prática', 80.00, 1);
INSERT INTO `tb_atividade` VALUE (2, 'Oficina de Github', 'Controle versões de seus projetos', 50.00, 2);

INSERT INTO `tb_bloco` VALUE (1, '2017-09-25T08:00:00', '2017-09-25T11:00:00', 1);
INSERT INTO `tb_bloco` VALUE (2, '2017-09-25T14:00:00', '2017-09-25T18:00:00', 2);
INSERT INTO `tb_bloco` VALUE (3, '2017-09-26T08:00:00', '2017-09-26T11:00:00', 2);

INSERT INTO `tb_participante_atividade` VALUE (1, 1);
INSERT INTO `tb_participante_atividade` VALUE (1, 2);
INSERT INTO `tb_participante_atividade` VALUE (2, 1);
INSERT INTO `tb_participante_atividade` VALUE (3, 1);
INSERT INTO `tb_participante_atividade` VALUE (3, 2);
INSERT INTO `tb_participante_atividade` VALUE (4, 2);