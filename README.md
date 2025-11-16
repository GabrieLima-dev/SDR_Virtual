# 🤖 SDR Virtual Inteligente

![Status](https://img.shields.io/badge/status-MVP%20em%20desenvolvimento-blue)
![License](https://img.shields.io/badge/license-MIT-green)
![IA](https://img.shields.io/badge/IA-Maritaca%20Sabiazinho--3-yellow)
![Automation](https://img.shields.io/badge/Automation-n8n-orange)
![Database](https://img.shields.io/badge/Database-PostgreSQL-blue)
![Backend](https://img.shields.io/badge/Backend-FastAPI%20|%20SpringBoot-lightgrey)
![MessageAPI](https://img.shields.io/badge/WhatsApp-Evolution%20API-success)

---

## 📘 Sobre o Projeto

A **SDR Virtual Inteligente** é uma solução de **automação de pré-vendas** desenvolvida para atender leads via **WhatsApp** de forma **humanizada, eficiente e totalmente automática**.

O projeto visa reduzir custos operacionais e aumentar a produtividade de equipes comerciais, utilizando **Inteligência Artificial** e **orquestração de fluxos** com **n8n**.  

💡 O MVP foi desenhado para ser **totalmente funcional**, **modular** e **escalável**, podendo evoluir facilmente para integrações com **OpenAI (GPT-5)** ou outros modelos avançados de IA.

---

## 🎯 Objetivo

Desenvolver uma **SDR Virtual Inteligente** capaz de:
- Atender automaticamente leads via WhatsApp;
- Coletar informações, enviar imagens e realizar follow-ups automáticos;
- Gerar cadências personalizadas de comunicação;
- Operar com **baixo custo**, **alta performance** e **estrutura pronta para escalar**.

---

## 🧠 Tecnologias Utilizadas

| Camada | Tecnologia | Função |
|--------|-------------|--------|
| **IA** | [Maritaca AI – Sabiazinho-3](https://maritaca.ai) | Modelo leve e otimizado para português |
| **Automação** | [n8n (self-hosted)](https://n8n.io) | Orquestração de fluxos e integrações |
| **Mensageria** | [Evolution API](https://evolution-api.com) | Envio e recebimento de mensagens WhatsApp |
| **Banco de Dados** | PostgreSQL | Persistência e controle de cadências e contatos |
| **Backend (evolutivo)** | FastAPI (Python) / Spring Boot (Java) | API de controle e dashboards |
| **Infraestrutura** | VPS Ocean Digital | Hospedagem do ambiente completo |
| **Storage** | Google Drive | Armazenamento gratuito de imagens |

---

## 🧱 Arquitetura do MVP

A arquitetura da SDR Virtual Inteligente foi desenhada para ser leve, modular e escalável, garantindo baixo custo e alta performance no MVP.
Cada componente conversa entre si de forma harmônica, garantindo fluidez e autonomia no atendimento via WhatsApp.

                💬 Usuário (WhatsApp)
                          │
                          ▼
                🌐 Evolution API (Gateway)
                          │
                          ▼
        ⚙️ n8n (Automação + IA Maritaca)
        ├── Fluxos de automação
        ├── Regras de follow-up
        └── Interação com a IA (Sabiazinho-3)
                          │
                          ▼
         🗄️ Banco de Dados (PostgreSQL)
        ├── Leads
        ├── Cadências
        └── Logs de atendimento
                          │
                          ▼
          ☁️ Google Drive (Armazenamento)
                └── Imagens e arquivos enviados

## 👉 Resumo da Comunicação entre os Componentes:
O usuário interage via WhatsApp, enviando mensagens, fotos ou dúvidas.
A Evolution API recebe essas mensagens e repassa ao n8n.
O n8n processa os dados, aciona a IA da Maritaca para gerar respostas inteligentes e aplica regras de cadência.
As informações são registradas no PostgreSQL (leads, status, logs).
Caso haja envio de mídia, as imagens são armazenadas no Google Drive.

## 🚀 Arquitetura Evolutiva da Solução

O projeto foi construído com base **modular e escalável**, permitindo evolução natural para um ecossistema distribuído:

- 🔹 **n8n Cloud Pro** para automações escaláveis;
- 🔹 **Banco isolado em PostgreSQL Cloud**;
- 🔹 **Portal administrativo (FastAPI ou Spring Boot)** com dashboards e controle de múltiplos clientes;
- 🔹 **Autenticação segura (JWT / OAuth2)** e controle de usuários;
- 🔹 **Integração com CRMs e ferramentas de marketing**;
- 🔹 **IA avançada (OpenAI / GPT-5)** para respostas mais humanas;
- 🔹 **Alta disponibilidade e escalabilidade horizontal**.

---

## 💰 Custos

### 💻 Desenvolvimento (Projeto Fechado)

### ☁️ Custos Mensais do MVP

| Serviço | Descrição | Valor (R$) |
|----------|------------|-----------:|
| Ocean Digital (VPS + Banco + n8n) | Hospedagem completa | 59,78 |
| Maritaca AI (Sabiazinho-3) | API compatível com OpenAI | 1,00 |
| Google Drive | Armazenamento gratuito | 0,00 |
| Evolution API | Integração com WhatsApp | 0,00 |
| Número WhatsApp (chip pessoal) | Linha própria | 0,00 |
| **Total mensal (MVP)** |  | **≈ R$ 60,78** |

---

## 🧩 Pós-MVP (Escalabilidade e Produção)

| Serviço | Descrição | Valor (R$) |
|----------|------------|-----------:|
| Ocean Digital | Infraestrutura completa (API, banco e backend) | 59,78 |
| N8N Cloud (Pro) | Automação e IA escalável | 350,00 |
| Google Drive (Storage) | Armazenamento em nuvem | 0,04/GB |
| OpenAI (GPT-5) | IA avançada para produção | 358,68 |
| Evolution API (Pro) | Envio de mídia e cadência profissional | 0,00 |
| Número WhatsApp (chip físico) | Linha dedicada | 20,00 |
| **Total estimado** |  | **≈ R$ 800,00/mês** |

---

## 🧰 Ferramentas de Desenvolvimento

- **Visual Studio Code** — Desenvolvimento e testes
- **Postman / Thunder Client** — Testes de APIs
- **dbdiagram.io / Figma** — Modelagem visual
- **Azure Data Studio** — Visualização e análise do banco de dados
- **Docker Compose** — Empacotamento e deploy local do n8n e Postgres

---

## 🗃️ Arquitetura do Banco de Dados

O banco PostgreSQL organiza o MVP em domínios que garantem rastreabilidade desde o cadastro do cliente até a entrega da mensagem. O diagrama abaixo resume os relacionamentos centrais.

```
              cliente
        ┌────────┼────────┬─────────────────────┐
     contrato   agente   cliente_configuração   sdr_contexto_cliente
        │          │              │                         │
   plano/produto   │     sdr_cliente_config           sdr_produtos
        │          │              │                         │
    sdr_produtos ──┼──────────────┴──────────┐        sdr_imagem_produto
        │          │                         │
     sdr_leads  follow_up              sdr_mensagens
        │          │                         │
 sdr_leads_historico  blocked_list   whatsapp_account_update
```

- **Clientes e Contratos** — `cliente` centraliza os dados comerciais e se relaciona com `produto`, `plano`, `contrato` e `Agente`, permitindo controlar ofertas, canais e períodos contratados.
- **Configurações e Integrações** — `cliente_configuracao` e `sdr_cliente_config` armazenam chaves do n8n, WhatsApp e Maritaca, enquanto `sdr_cliente_config_historico` registra alterações; `crm`, `canal` e `sdr_situacao_interna` conectam o fluxo com sistemas externos.
- **Contexto e Conteúdo** — `sdr_contexto_cliente` + histórico guardam o prompt institucional, e `sdr_produtos`/`sdr_imagem_produto` definem catálogos e mídias que a IA pode utilizar durante o atendimento.
- **Leads e Cadência** — `sdr_leads`, `sdr_leads_historico`, `follow_up` e `blocked_list` controlam entrada de oportunidades, evolução no funil e regras de tentativa/pausa.
- **Mensageria e Auditoria** — `tipo_mensagem`, `sdr_mensagens`, `whatsapp_account_update` e `usuario` mantêm cada interação registrada com papéis, eventos críticos da API e acessos humanos.

📄 **DDL completa:** `docs/DB_SDR_VIRTUAL.sql`  
🗂️ **Diagrama visual:** https://dbdiagram.io/d/SDR_VIRTUAL-691528c26735e111708c65ec

---

## 📜 Licença

Este projeto está licenciado sob a [MIT License](LICENSE).

