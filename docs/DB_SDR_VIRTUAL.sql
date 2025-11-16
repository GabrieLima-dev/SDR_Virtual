CREATE TABLE `cliente` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `nome_cliente` varchar(150),
  `razao_social` varchar(150),
  `cnpj` varchar(14),
  `segmento` varchar(100),
  `data_hora_cadastro` timestamp,
  `ativo` boolean
);

CREATE TABLE `Agente` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `id_cliente` int,
  `id_produto` int,
  `id_canal` int,
  `nome_cliente` varchar(150),
  `whatsapp_id` varchar(20),
  `segmento` varchar(100),
  `data_hora_cadastro` timestamp,
  `ativo` boolean
);

CREATE TABLE `produto` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `nome` varchar(100),
  `descricao` varchar(512),
  `ativo` boolean,
  `data_hora_cadastro` timestamp
);

CREATE TABLE `plano` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `id_produto` int,
  `descricao` varchar(256),
  `valor_mensal` varchar(100),
  `faixa_produto` varchar(100),
  `limite_leads_mes` int,
  `limite_mensagens_mes` int,
  `data_hora_cadastro` timestamp,
  `ativo` boolean
);

CREATE TABLE `contrato` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `id_cliente` int,
  `id_plano` int,
  `id_produto` int,
  `data_inicio` date,
  `data_fim` date,
  `status` varchar(30),
  `data_hora_cadastro` timestamp,
  `ativo` boolean
);

CREATE TABLE `crm` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `nome_crm` varchar(256),
  `ativo` boolean,
  `data_hora_cadastro` timestamp
);

CREATE TABLE `cliente_configuracao` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `id_cliente` int,
  `token_maritaca` varchar(512),
  `url_webhook_n8n` varchar(512),
  `ativo` boolean,
  `data_hora_cadastro` timestamp
);

CREATE TABLE `sdr_cliente_config` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `id_cliente` int,
  `id_crm` int,
  `data_hora_cadastro` timestamp,
  `ativo` boolean,
  `whatsapp_business_phone` varchar(32),
  `whatsapp_token` varchar(600),
  `Whatsapp_Business_account_id` varchar(50),
  `wa_web_instance_id` int,
  `wa_web_token` varchar(600),
  `resposta_audio` boolean,
  `voz_agente` varchar(50)
);

CREATE TABLE `sdr_cliente_config_historico` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `id_cliente` int,
  `id_sdr_cliente_config` int,
  `campo` varchar(128),
  `valor_anterior` text,
  `valor_novo` text,
  `alterado_por` varchar(128),
  `host` varchar(128),
  `aplicacao` varchar(128),
  `data_hora_cadastro` timestamp
);

CREATE TABLE `canal` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `nome` varchar(50),
  `descricao` varchar(512),
  `ativo` boolean
);

CREATE TABLE `sdr_situacao_interna` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `nome` varchar(80),
  `descricao` varchar(512),
  `ativo` boolean
);

CREATE TABLE `sdr_contexto_cliente` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `id_cliente` int,
  `nome_contexto` varchar(100),
  `contexto_base` text,
  `contexto_institucional` text,
  `ativo` boolean,
  `data_hora_cadastro` timestamp
);

CREATE TABLE `sdr_contexto_cliente_historico` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `id_cliente` int,
  `id_sdr_contexto_cliente` int,
  `campo` varchar(128),
  `valor_anterior` text,
  `valor_novo` text,
  `alterado_por` varchar(128),
  `host` varchar(128),
  `aplicacao` varchar(128),
  `data_hora_cadastro` timestamp
);

CREATE TABLE `sdr_leads` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `id_cliente` int,
  `id_canal` int,
  `id_situacao_interna` int,
  `id_situacao_crm` int,
  `id_crm` int,
  `id_lead` int,
  `nome` varchar(150),
  `whatsapp_id` varchar(20),
  `email` varchar(150),
  `endereco` varchar(512),
  `documento` varchar(20),
  `origem` varchar(50),
  `data_hora_cadastro` timestamp,
  `data_hora_ultima_alteracao` timestamp,
  `tentativas_contato` int,
  `id_produto` int,
  `nome_produto` varchar(512),
  `observacoes` varchar(512),
  `motivo_descarte` varchar(512)
);

CREATE TABLE `sdr_leads_historico` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `id_lead` int,
  `id_situacao_interna_anterior` int,
  `id_situacao_interna_nova` int,
  `id_situacao_crm_anterior` int,
  `id_situacao_crm_nova` int,
  `data_hora_cadastro` timestamp
);

CREATE TABLE `tipo_mensagem` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `nome` varchar(50),
  `descricao` varchar(512),
  `ativo` boolean,
  `data_hora_cadastro` timestamp
);

CREATE TABLE `sdr_mensagens` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `id_cliente` int,
  `id_lead` int,
  `id_tipo_mensagem` int,
  `whatsapp_id` varchar(20),
  `whatsapp_name` varchar(256),
  `whatsapp__message_type` varchar(50),
  `role` varchar(50),
  `texto` text,
  `data_hora_cadastro` timestamp
);

CREATE TABLE `follow_up` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `id_cliente` int,
  `numero_tentativas` int,
  `nome` varchar(50),
  `descricao` varchar(512),
  `ativo` boolean,
  `data_hora_cadastro` timestamp
);

CREATE TABLE `sdr_produtos` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `id_cliente` int,
  `id_produto_crm` int,
  `nome` varchar(256),
  `descricao` varchar(600),
  `contexto_produto` text,
  `data_hora_cadastro` timestamp,
  `ativo` boolean
);

CREATE TABLE `sdr_imagem_produto` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `id_produto` int,
  `nome` varchar(150),
  `descricao` varchar(512),
  `url_download` varchar(512),
  `url_view` varchar(512),
  `google_file_id` varchar(128),
  `ordem` int,
  `data_hora_cadastro` timestamp,
  `ativo` boolean
);

CREATE TABLE `blocked_list` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `id_cliente` int,
  `whatsapp_id` varchar(20),
  `motivo` varchar(512),
  `ativo` boolean,
  `data_hora_cadastro` timestamp
);

CREATE TABLE `whatsapp_account_update` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `id_cliente` int,
  `field` varchar(150),
  `event` varchar(150),
  `violation_type` varchar(150),
  `scenario_name` varchar(512),
  `scenario_execution_id` varchar(512),
  `scenario_execution_url` varchar(512),
  `motivo` varchar(512),
  `ativo` boolean,
  `data_hora_cadastro` timestamp
);

CREATE TABLE `usuario` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `id_cliente` int,
  `nome` varchar(100),
  `email` varchar(100),
  `senha` varchar(256),
  `role` varchar(20),
  `primeiro_login` boolean,
  `data_hora_cadastro` timestamp,
  `ativo` boolean
);

ALTER TABLE `Agente` ADD FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id`);

ALTER TABLE `Agente` ADD FOREIGN KEY (`id_produto`) REFERENCES `produto` (`id`);

ALTER TABLE `Agente` ADD FOREIGN KEY (`id_canal`) REFERENCES `canal` (`id`);

ALTER TABLE `plano` ADD FOREIGN KEY (`id_produto`) REFERENCES `produto` (`id`);

ALTER TABLE `contrato` ADD FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id`);

ALTER TABLE `contrato` ADD FOREIGN KEY (`id_plano`) REFERENCES `plano` (`id`);

ALTER TABLE `contrato` ADD FOREIGN KEY (`id_produto`) REFERENCES `produto` (`id`);

ALTER TABLE `cliente_configuracao` ADD FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id`);

ALTER TABLE `sdr_cliente_config` ADD FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id`);

ALTER TABLE `sdr_cliente_config` ADD FOREIGN KEY (`id_crm`) REFERENCES `crm` (`id`);

ALTER TABLE `sdr_cliente_config_historico` ADD FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id`);

ALTER TABLE `sdr_cliente_config_historico` ADD FOREIGN KEY (`id_sdr_cliente_config`) REFERENCES `sdr_cliente_config` (`id`);

ALTER TABLE `sdr_contexto_cliente` ADD FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id`);

ALTER TABLE `sdr_contexto_cliente_historico` ADD FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id`);

ALTER TABLE `sdr_contexto_cliente_historico` ADD FOREIGN KEY (`id_sdr_contexto_cliente`) REFERENCES `sdr_contexto_cliente` (`id`);

ALTER TABLE `sdr_leads` ADD FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id`);

ALTER TABLE `sdr_leads` ADD FOREIGN KEY (`id_canal`) REFERENCES `canal` (`id`);

ALTER TABLE `sdr_leads` ADD FOREIGN KEY (`id_situacao_interna`) REFERENCES `sdr_situacao_interna` (`id`);

ALTER TABLE `sdr_leads` ADD FOREIGN KEY (`id_crm`) REFERENCES `crm` (`id`);

ALTER TABLE `sdr_leads` ADD FOREIGN KEY (`id_produto`) REFERENCES `sdr_produtos` (`id`);

ALTER TABLE `sdr_leads_historico` ADD FOREIGN KEY (`id_lead`) REFERENCES `sdr_leads` (`id`);

ALTER TABLE `sdr_mensagens` ADD FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id`);

ALTER TABLE `sdr_mensagens` ADD FOREIGN KEY (`id_lead`) REFERENCES `sdr_leads` (`id`);

ALTER TABLE `sdr_mensagens` ADD FOREIGN KEY (`id_tipo_mensagem`) REFERENCES `tipo_mensagem` (`id`);

ALTER TABLE `follow_up` ADD FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id`);

ALTER TABLE `sdr_produtos` ADD FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id`);

ALTER TABLE `sdr_imagem_produto` ADD FOREIGN KEY (`id_produto`) REFERENCES `sdr_produtos` (`id`);

ALTER TABLE `blocked_list` ADD FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id`);

ALTER TABLE `whatsapp_account_update` ADD FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id`);

ALTER TABLE `usuario` ADD FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id`);
