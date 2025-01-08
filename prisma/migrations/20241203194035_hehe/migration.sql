-- CreateEnum
CREATE TYPE "Metric_Profit_Loss" AS ENUM ('REVENUE', 'COST_OF_GOOD_SOLD', 'GROSS_PROFIT', 'SELLING_GENERAL_ADMINISTRATIVE', 'OPERATING_PROFIT', 'FINANCE_COST', 'FINANCE_INCOME', 'FX_GAIN_LOSS', 'OTHER_INCOME', 'TAX_BENEFIT_EXPENSES', 'NET_INCOME');

-- CreateEnum
CREATE TYPE "Metric_Balance_Sheet" AS ENUM ('TOTAL_ASSETS', 'CURRENT_ASSETS', 'RECEIVABLES', 'INVENTORY', 'NON_CURRENT_ASSETS', 'TOTAL_LIABILITIES', 'CURRENT_LIABILITY', 'BANK_LOAN', 'SHAREHOLDER_LOAN', 'LONG_TERM_LIABILITY', 'EQUITY', 'SHARE_CAPITAL', 'RETAINED_EARNING', 'TOTAL_LIABILITIES_AND_EQUITY');

-- CreateEnum
CREATE TYPE "Metric_Cashflow_Statement" AS ENUM ('CASH_FROM_OPERATION', 'CASH_FROM_INVESTING', 'CASH_FROM_FINANCING', 'REPAYMENT_BANK_LOAN', 'REPAYMENT_SHAREHOLDER_LOAN', 'CASH_INCREASE_DECREASE', 'BEGINNING_CASH', 'FX_GAIN_LOSS', 'ENDING_CASH');

-- CreateEnum
CREATE TYPE "IssueType" AS ENUM ('IRR', 'TKDN', 'ENGINEERING', 'CONSTRUCTION', 'TESTCOMISSION', 'PENYEDIAAN_ENERGI_PRIMER', 'PENYEDIAAN_JASA_OPERATION_DAN_MAINTENANCE', 'COMMERCIAL_OPERATION_DATE', 'FINANCIAL_COST');

-- CreateEnum
CREATE TYPE "Metric_Technical_Operational_Plts" AS ENUM ('NON_ADJUSTED_PROJECTED_AVAILABLE_ENERGY', 'DECLARED_OUTAGE_ADJUSTED_FACTOR', 'OUTAGE_ADJUSTED_PROJECTED_AVAILABLE_ENERGY', 'GUARANTEED_MINIMUM_PRODUCTIVITY', 'ACTUAL_PRODUCTION', 'ACTUAL_PRODUCTIVITY_RATE', 'PRODUCTIVITY_CAP', 'ENERGY_CAP_THIS_MONTH', 'BILLED_ENERGY_AEM', 'UN_BILL_ABLE_EXCESS_ENERGY', 'PENALTY_KVARH', 'PERFORMANCE_RATIO', 'OVERALL_LOSS_OF_PRODUCTION');

-- CreateEnum
CREATE TYPE "Unit_Technical_Operational_Plts" AS ENUM ('KWH', 'PERCENT', 'KVARH');

-- CreateEnum
CREATE TYPE "Metric_Technical_Operational_Pltu" AS ENUM ('ENERGY_GENERATED', 'ENERGY_SALES', 'COAL_STOCK', 'HOP', 'CF_PLAN', 'CF', 'EAF', 'EFOR', 'SDOF', 'NPHR_PLAN', 'NPHR', 'AFPM_DECLARE', 'AFA', 'LOSS_OF_PRODUCTION');

-- CreateEnum
CREATE TYPE "Unit_Technical_Operational_Pltu" AS ENUM ('MWH', 'MT', 'DAY', 'PERCENT', 'KALI_PER_UNIT', 'KCAL_PER_KWH');

-- CreateEnum
CREATE TYPE "Metric_Free_Cashflow_to_Equity" AS ENUM ('EQUITY_DRAWDOWN', 'SHAREHOLDER_LOAN_DRAWDOWN', 'REPAYMENT_SHAREHOLDER_LOAN', 'INTEREST_ON_SHAREHOLDER_LOAN', 'DIVIDEND', 'FCFE');

-- CreateEnum
CREATE TYPE "Metric_Macroeconomic" AS ENUM ('CURRENCY_IN_MODEL', 'CURRENCY_REALIZATION', 'INTEREST_IN_MODEL', 'INTEREST_REALIZATION', 'ID_CPI_IN_MODEL', 'ID_CPI_REALIZATION', 'US_CPI_IN_MODEL', 'US_CPI_REALIZATION');

-- CreateEnum
CREATE TYPE "Unit_Macroeconomic" AS ENUM ('USD_IDR', 'PERCENT', 'POINT');

-- CreateEnum
CREATE TYPE "Metric_Installed_Capacity" AS ENUM ('GROSS', 'NET');

-- CreateEnum
CREATE TYPE "Unit_Installed_Capacity" AS ENUM ('MW');

-- CreateEnum
CREATE TYPE "ProjectPhase" AS ENUM ('INITIATION', 'DEVELOPMENT', 'CONSTRUCTION', 'OPERATION');

-- CreateEnum
CREATE TYPE "PowerPlantType" AS ENUM ('PLTA', 'PLTB', 'PLTS', 'PLTU');

-- CreateEnum
CREATE TYPE "IssueTypes" AS ENUM ('ENGINEERING', 'KONSTRUKSI', 'TKDN', 'PENYEDIAAN_ENERGI_PRIMER', 'PENYEDIAAN_JASA_OM', 'PENYEDIAAN_ORGANISASI_SDM', 'COMMERCIAL_OPERATION_DATE', 'FINANCIAL_CLOSE');

-- CreateEnum
CREATE TYPE "FinancialReportType" AS ENUM ('PROFIT_AND_LOSS', 'BALANCE_SHEET', 'CASHFLOW');

-- CreateEnum
CREATE TYPE "PeriodicReportType" AS ENUM ('TECHNICAL_OPERATION', 'FREE_CASHFLOW_TO_EQUITY', 'MACROECONOMIC');

-- CreateEnum
CREATE TYPE "IssuePriority" AS ENUM ('HIGH', 'MID', 'LOW');

-- CreateEnum
CREATE TYPE "IssueStatus" AS ENUM ('OPEN', 'ON_PROGRESS', 'COMPLETE');

-- CreateEnum
CREATE TYPE "Construction_Info_Type" AS ENUM ('ACTUAL_PLAN', 'PENYEDIAAN_JASA_OPERATION_DAN_MAINTENANCE', 'PENYEDIAAN_ENERGI_PRIMER', 'COMMERCIAL_OPERATION_DATE', 'FINANCIAL_CLOSE', 'REALISASI_EPC_COST');

-- CreateEnum
CREATE TYPE "typeActualPlan" AS ENUM ('ENGINEERING', 'PROCUREMENT', 'CONSTRUCTION', 'TESTCOMISSION');

-- CreateEnum
CREATE TYPE "TahapanProsesEnergiPrimer" AS ENUM ('PENYUSUNAN_RFP', 'PENGUMUMAN_TENDER', 'PEMASUKKAN_DOKUMEN_PENAWARAN', 'EVALUASI_TEKNIS_DAN_KOMERSIAL', 'PENETAPAN_PENYEDIA_ENERGI_PRIMER', 'TANDATANGAN_KONTRAK_ENERGI_PRIMER');

-- CreateEnum
CREATE TYPE "TahapanProsesOandM" AS ENUM ('PENYUSUNAN_RFP', 'PENGUMUMAN_TENDER', 'PEMASUKKAN_DOKUMEN_PENAWARAN', 'EVALUASI_TEKNIS_DAN_KOMERSIAL', 'PENETAPAN_PENYEDIA_OM', 'TANDATANGAN_KONTRAK_OM');

-- CreateEnum
CREATE TYPE "TahapanCommissioning" AS ENUM ('INDIVIDUAL_TEST', 'COMMISSIONING', 'REKOMENDASI_LAIK_BERTEGANGAN', 'REKOMENDASI_LAIK_SINKRON', 'PEMBUATAN_NIDI', 'DOKUMEN_SLO', 'SERTIFIKAT_COD');

-- CreateEnum
CREATE TYPE "TahapanFinancialClose" AS ENUM ('PEMENUHAN_TIMELINE_FINANCIAL_CLOSE', 'INITIAL_DRAWDOWN');

-- CreateEnum
CREATE TYPE "energy_usage_source" AS ENUM ('TERBARUKAN', 'TIDAK_TERBARUKAN');

-- CreateEnum
CREATE TYPE "type_waste_b3" AS ENUM ('BATERAI', 'BOHLAM', 'TONER', 'OTHER');

-- CreateEnum
CREATE TYPE "type_gender" AS ENUM ('LAKI_LAKI', 'PEREMPUAN');

-- CreateEnum
CREATE TYPE "type_realization" AS ENUM ('PLANT_AVAILABILLITY', 'PERFORMANCE_RATIO', 'PRODUCTIVITY_RATE');

-- CreateEnum
CREATE TYPE "type_community_empowerment" AS ENUM ('SOCIAL', 'LINGKUNGAN', 'EKONOMI', 'TIDAK_BERKELANJUTAN', 'OTHER');

-- CreateEnum
CREATE TYPE "esg_type_gender" AS ENUM ('LAKI_LAKI', 'PEREMPUAN');

-- CreateTable
CREATE TABLE "audit_logs" (
    "id" SERIAL NOT NULL,
    "user_id" INTEGER,
    "file_id" INTEGER,
    "folder_id" INTEGER,
    "action" VARCHAR(255),
    "details" TEXT,
    "timestamp" TIMESTAMP(6),

    CONSTRAINT "audit_logs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "cache" (
    "key" VARCHAR(255) NOT NULL,
    "value" TEXT NOT NULL,
    "expiration" INTEGER NOT NULL,

    CONSTRAINT "cache_pkey" PRIMARY KEY ("key")
);

-- CreateTable
CREATE TABLE "cache_locks" (
    "key" VARCHAR(255) NOT NULL,
    "owner" VARCHAR(255) NOT NULL,
    "expiration" INTEGER NOT NULL,

    CONSTRAINT "cache_locks_pkey" PRIMARY KEY ("key")
);

-- CreateTable
CREATE TABLE "critical_path" (
    "id" SERIAL NOT NULL,
    "project_id" INTEGER,
    "item" VARCHAR(255),
    "plan" DATE,
    "status" VARCHAR(255),
    "remark" VARCHAR(255),

    CONSTRAINT "critical_path_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "cyber_security_regen" (
    "id" SERIAL NOT NULL,
    "project_id" INTEGER,
    "period" VARCHAR(255),
    "policy_description" VARCHAR(255),
    "cybersecurity_incidents" INTEGER,
    "response_plan" VARCHAR(255),
    "indicator" VARCHAR(255),
    "created_at" TIMESTAMP(6),
    "updated_at" TIMESTAMP(6),

    CONSTRAINT "cyber_security_regen_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "energy_consumption" (
    "id" SERIAL NOT NULL,
    "project_id" INTEGER,
    "period" VARCHAR(255),
    "year" INTEGER,
    "type" VARCHAR(255),
    "consumption" DOUBLE PRECISION,
    "unit" VARCHAR(50),
    "source" VARCHAR(255),
    "indicator" VARCHAR(255),
    "reduction_target" VARCHAR(255),
    "created_at" TIMESTAMP(6),
    "updated_at" TIMESTAMP(6),

    CONSTRAINT "energy_consumption_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "esg_performance_targets" (
    "id" SERIAL NOT NULL,
    "project_id" INTEGER,
    "target_year" INTEGER,
    "goal_description" TEXT,
    "progress_percentage" DOUBLE PRECISION,
    "indicator" VARCHAR(255),
    "created_at" TIMESTAMP(6),
    "updated_at" TIMESTAMP(6),

    CONSTRAINT "esg_performance_targets_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "esg_score" (
    "id" SERIAL NOT NULL,
    "project_id" INTEGER,
    "aspect" VARCHAR(255),
    "value" DOUBLE PRECISION,
    "remark" VARCHAR(255),

    CONSTRAINT "esg_score_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "failed_jobs" (
    "id" SERIAL NOT NULL,
    "uuid" VARCHAR(255) NOT NULL,
    "connection" TEXT NOT NULL,
    "queue" TEXT NOT NULL,
    "payload" TEXT NOT NULL,
    "exception" TEXT NOT NULL,
    "failed_at" TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "failed_jobs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "financial_statement_profit_loss" (
    "id" SERIAL NOT NULL,
    "project_id" INTEGER,
    "metric" "Metric_Profit_Loss",
    "units" VARCHAR(10),
    "value" DECIMAL(20,2),
    "month_period" INTEGER,
    "year_period" INTEGER,
    "created_at" TIMESTAMP(3) DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3),

    CONSTRAINT "financial_statement_profit_loss_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "financial_statement_balance_sheet" (
    "id" SERIAL NOT NULL,
    "project_id" INTEGER,
    "metric" "Metric_Balance_Sheet",
    "units" VARCHAR(10),
    "value" DECIMAL(20,2),
    "month_period" INTEGER,
    "year_period" INTEGER,
    "created_at" TIMESTAMP(3) DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3),

    CONSTRAINT "financial_statement_balance_sheet_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "financial_statement_cashflow_statement" (
    "id" SERIAL NOT NULL,
    "project_id" INTEGER,
    "metric" "Metric_Cashflow_Statement",
    "units" VARCHAR(10),
    "value" DECIMAL(20,2),
    "month_period" INTEGER,
    "year_period" INTEGER,
    "created_at" TIMESTAMP(3) DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3),

    CONSTRAINT "financial_statement_cashflow_statement_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "general_info" (
    "id" SERIAL NOT NULL,
    "project_id" INTEGER,
    "metric" VARCHAR(255),
    "unit" VARCHAR(255),
    "value" DOUBLE PRECISION,

    CONSTRAINT "general_info_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "governance" (
    "id" SERIAL NOT NULL,
    "project_id" INTEGER,
    "period" VARCHAR(255),
    "policy_type" VARCHAR(255),
    "details" VARCHAR(255),
    "indicator" VARCHAR(255),
    "created_at" TIMESTAMP(6),
    "updated_at" TIMESTAMP(6),

    CONSTRAINT "governance_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "groups" (
    "id" SERIAL NOT NULL,
    "name" VARCHAR(255),

    CONSTRAINT "groups_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "human_capital" (
    "id" SERIAL NOT NULL,
    "project_id" INTEGER,
    "period" VARCHAR(255),
    "employee_type" VARCHAR(255),
    "employee_count" INTEGER,
    "training_program" VARCHAR(255),
    "indicator" VARCHAR(255),
    "created_at" TIMESTAMP(6),
    "updated_at" TIMESTAMP(6),

    CONSTRAINT "human_capital_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "issue_colaborators" (
    "id" INTEGER NOT NULL,
    "issue_id" INTEGER,
    "user_id" INTEGER,

    CONSTRAINT "issue_colaborators_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "issue" (
    "id" SERIAL NOT NULL,
    "project_id" INTEGER,
    "dueDate" TIMESTAMP(3),
    "issue" VARCHAR(255) NOT NULL,
    "follow_up" TEXT NOT NULL,
    "priority" "IssuePriority",
    "status" "IssueStatus",
    "type" "IssueType" NOT NULL,
    "remark" TEXT,
    "assignee" INTEGER,

    CONSTRAINT "issue_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "job_batches" (
    "id" VARCHAR(255) NOT NULL,
    "name" VARCHAR(255) NOT NULL,
    "total_jobs" INTEGER NOT NULL,
    "pending_jobs" INTEGER NOT NULL,
    "failed_jobs" INTEGER NOT NULL,
    "failed_job_ids" TEXT NOT NULL,
    "options" TEXT,
    "cancelled_at" INTEGER,
    "created_at" INTEGER NOT NULL,
    "finished_at" INTEGER,

    CONSTRAINT "job_batches_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "jobs" (
    "id" SERIAL NOT NULL,
    "queue" VARCHAR(255) NOT NULL,
    "payload" TEXT NOT NULL,
    "attempts" SMALLINT NOT NULL,
    "reserved_at" INTEGER,
    "available_at" INTEGER NOT NULL,
    "created_at" INTEGER NOT NULL,

    CONSTRAINT "jobs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "legal_files" (
    "id" SERIAL NOT NULL,
    "name" VARCHAR(255),
    "folder_id" INTEGER,
    "user_id" INTEGER,
    "file_path" VARCHAR(255),
    "file_status" VARCHAR(255),
    "is_shared" BOOLEAN,

    CONSTRAINT "legal_files_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "legal_folders" (
    "id" SERIAL NOT NULL,
    "name" VARCHAR(255),
    "user_id" INTEGER,
    "parent_folder_id" INTEGER,
    "is_shared" BOOLEAN,
    "created_at" TIMESTAMP(6),
    "updated_at" TIMESTAMP(6),

    CONSTRAINT "legal_folders_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "meeting_attachments" (
    "id" SERIAL NOT NULL,
    "file_unique" TEXT NOT NULL,
    "meeting_id" INTEGER,
    "file_url" TEXT,

    CONSTRAINT "meeting_attachments_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "meetings" (
    "id" INTEGER NOT NULL,
    "project_id" INTEGER,
    "prod_bussines" VARCHAR(255),
    "name" VARCHAR(255),
    "conducted_at" DATE,
    "issue" TEXT,
    "contents" TEXT,
    "participants" JSON,
    "approved_by" INTEGER,
    "key_indicator" JSON,

    CONSTRAINT "meetings_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "migrations" (
    "id" SERIAL NOT NULL,
    "migration" VARCHAR(255) NOT NULL,
    "batch" INTEGER NOT NULL,

    CONSTRAINT "migrations_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "model_has_permissions" (
    "permission_id" INTEGER NOT NULL,
    "model_type" VARCHAR(255) NOT NULL,
    "model_id" INTEGER NOT NULL,

    CONSTRAINT "model_has_permissions_pkey" PRIMARY KEY ("permission_id","model_id","model_type")
);

-- CreateTable
CREATE TABLE "model_has_roles" (
    "role_id" INTEGER NOT NULL,
    "model_type" VARCHAR(255) NOT NULL,
    "model_id" INTEGER NOT NULL,

    CONSTRAINT "model_has_roles_pkey" PRIMARY KEY ("role_id","model_id","model_type")
);

-- CreateTable
CREATE TABLE "password_reset_tokens" (
    "email" VARCHAR(255) NOT NULL,
    "token" VARCHAR(255) NOT NULL,
    "created_at" TIMESTAMP(0),

    CONSTRAINT "password_reset_tokens_pkey" PRIMARY KEY ("email")
);

-- CreateTable
CREATE TABLE "periodic_report_technical_operation_plts" (
    "id" SERIAL NOT NULL,
    "project_id" INTEGER,
    "metric" "Metric_Technical_Operational_Plts",
    "units" "Unit_Technical_Operational_Plts",
    "value" DECIMAL(20,2),
    "month_period" INTEGER,
    "year_period" INTEGER,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "periodic_report_technical_operation_plts_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "periodic_report_technical_operation_pltu" (
    "id" SERIAL NOT NULL,
    "project_id" INTEGER,
    "metric" "Metric_Technical_Operational_Pltu",
    "units" "Unit_Technical_Operational_Pltu",
    "value" DECIMAL(20,2),
    "month_period" INTEGER,
    "year_period" INTEGER,

    CONSTRAINT "periodic_report_technical_operation_pltu_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "periodic_report_free_cashflow_to_equity" (
    "id" SERIAL NOT NULL,
    "project_id" INTEGER,
    "metric" "Metric_Free_Cashflow_to_Equity",
    "units" VARCHAR(10),
    "value" DECIMAL(20,2),
    "month_period" INTEGER,
    "year_period" INTEGER,

    CONSTRAINT "periodic_report_free_cashflow_to_equity_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "periodic_report_macroeconomic" (
    "id" SERIAL NOT NULL,
    "project_id" INTEGER,
    "metric" "Metric_Macroeconomic",
    "units" "Unit_Macroeconomic",
    "value" DECIMAL(20,2),
    "month_period" INTEGER,
    "year_period" INTEGER,
    "created_at" TIMESTAMP(3),

    CONSTRAINT "periodic_report_macroeconomic_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "installed_capacity" (
    "id" SERIAL NOT NULL,
    "project_id" INTEGER,
    "metric" "Metric_Installed_Capacity",
    "units" "Unit_Installed_Capacity",
    "value" DECIMAL(20,2),
    "month_period" INTEGER,
    "year_period" INTEGER,

    CONSTRAINT "installed_capacity_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "permissions" (
    "id" SERIAL NOT NULL,
    "name" VARCHAR(255) NOT NULL,
    "guard_name" VARCHAR(255) NOT NULL,
    "created_at" TIMESTAMP(0),
    "updated_at" TIMESTAMP(0),

    CONSTRAINT "permissions_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "personal_access_tokens" (
    "id" SERIAL NOT NULL,
    "tokenable_type" VARCHAR(255) NOT NULL,
    "tokenable_id" INTEGER NOT NULL,
    "name" VARCHAR(255) NOT NULL,
    "token" VARCHAR(64) NOT NULL,
    "abilities" TEXT,
    "last_used_at" TIMESTAMP(0),
    "expires_at" TIMESTAMP(0),
    "created_at" TIMESTAMP(0),
    "updated_at" TIMESTAMP(0),

    CONSTRAINT "personal_access_tokens_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "power_plants" (
    "id" SERIAL NOT NULL,
    "type" "PowerPlantType" NOT NULL,
    "capacity" VARCHAR(100),
    "energy_generated_per_year" DOUBLE PRECISION,
    "equivalent_co2_reduction_per_year" DOUBLE PRECISION,
    "interconnection" TEXT,
    "area" DOUBLE PRECISION,
    "lat" DOUBLE PRECISION,
    "lng" DOUBLE PRECISION,
    "project_id" INTEGER,

    CONSTRAINT "power_plants_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "procurement" (
    "id" SERIAL NOT NULL,
    "project_id" INTEGER,
    "item" VARCHAR(255),
    "start_plan" DATE,
    "finish_plan" DATE,
    "start_actual" DATE,
    "finish_actual" DATE,

    CONSTRAINT "procurement_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "project_costs" (
    "id" SERIAL NOT NULL,
    "project_id" INTEGER,
    "metric" VARCHAR(255),
    "unit" VARCHAR(255),
    "value" DOUBLE PRECISION,

    CONSTRAINT "project_costs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "project_irr" (
    "id" SERIAL NOT NULL,
    "project_id" INTEGER,
    "date" TIMESTAMP(3),
    "irr" DOUBLE PRECISION,
    "updated_at" DATE,
    "updated_by" INTEGER,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "project_irr_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "project_tkdn" (
    "id" SERIAL NOT NULL,
    "project_id" INTEGER,
    "date" TIMESTAMP(3),
    "tkdn" DOUBLE PRECISION,
    "updated_at" DATE,
    "updated_by" INTEGER,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "project_tkdn_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "project_issues" (
    "id" SERIAL NOT NULL,
    "project_id" INTEGER,
    "issue" TEXT,
    "types" "IssuePriority",
    "status" "IssueStatus",
    "assignee" INTEGER,
    "name" TEXT,
    "created_at" TIMESTAMP(3) DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3),
    "dueDate" TIMESTAMP(3),
    "description" VARCHAR(255),
    "follow_up" VARCHAR(255),

    CONSTRAINT "project_issues_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "project_milestone" (
    "id" SERIAL NOT NULL,
    "project_id" INTEGER,
    "name" VARCHAR(255),
    "deadline" DATE,
    "detail" TEXT[],
    "status" SMALLINT,

    CONSTRAINT "project_milestone_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "media_project_milestone" (
    "id" SERIAL NOT NULL,
    "project_milestone_id" INTEGER,
    "link_media" TEXT,
    "created_at" TIMESTAMP(3) DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3),

    CONSTRAINT "media_project_milestone_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "project_milestone_detail" (
    "id" SERIAL NOT NULL,
    "milestone_id" INTEGER,
    "remark" TEXT,

    CONSTRAINT "project_milestone_detail_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "project_plan_timeline" (
    "id" SERIAL NOT NULL,
    "project_id" INTEGER,
    "description" VARCHAR(255),
    "start_date" DATE,
    "finish_date" DATE,
    "weight" DOUBLE PRECISION,

    CONSTRAINT "project_plan_timeline_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "project_plan_timeline_details" (
    "id" SERIAL NOT NULL,
    "project_plan_id" INTEGER,
    "version" INTEGER,
    "duedate" DATE,
    "planing" DOUBLE PRECISION,
    "actual" DOUBLE PRECISION,

    CONSTRAINT "project_plan_timeline_details_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "project_shareholders" (
    "id" SERIAL NOT NULL,
    "project_id" INTEGER,
    "shareholder_id" INTEGER,
    "percentage" DOUBLE PRECISION,

    CONSTRAINT "project_shareholders_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "project_timeline" (
    "id" SERIAL NOT NULL,
    "project_id" INTEGER,
    "title" VARCHAR(255),
    "description" TEXT,
    "attachment_link" TEXT,
    "type" TEXT,
    "date" TIMESTAMP(3),

    CONSTRAINT "project_timeline_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "development_timeline" (
    "id" SERIAL NOT NULL,
    "project_id" INTEGER,
    "title" VARCHAR(255),
    "description" TEXT,
    "attachment_link" TEXT,
    "type" TEXT,
    "date" TIMESTAMP(3),

    CONSTRAINT "development_timeline_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "project_metrics_history" (
    "id" SERIAL NOT NULL,
    "project_cost" DOUBLE PRECISION,
    "rates" DOUBLE PRECISION,
    "irr" DOUBLE PRECISION,
    "anually_contract_energy" DOUBLE PRECISION,
    "project_id" INTEGER,
    "created_at" TIMESTAMP(3) DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3),

    CONSTRAINT "project_metrics_history_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "projects" (
    "id" SERIAL NOT NULL,
    "name" VARCHAR(255) NOT NULL,
    "developer" VARCHAR(255),
    "scheme" VARCHAR(50),
    "project_cost" DOUBLE PRECISION,
    "rates" DOUBLE PRECISION,
    "required_cod" TIMESTAMP(3),
    "commercial_operation_date" TIMESTAMP(3),
    "financing" VARCHAR(100),
    "epc_contractor" TEXT,
    "phase" "ProjectPhase",
    "owner" VARCHAR(255),
    "location" TEXT,
    "der" DOUBLE PRECISION,
    "irr" DOUBLE PRECISION,
    "tkdn" DOUBLE PRECISION,
    "coordinate" TEXT,
    "slug" TEXT,

    CONSTRAINT "projects_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "project_attachment" (
    "id" SERIAL NOT NULL,
    "attachment_link" TEXT,
    "project_id" INTEGER,
    "metrics_history_id" INTEGER,

    CONSTRAINT "project_attachment_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "project_issue" (
    "id" SERIAL NOT NULL,

    CONSTRAINT "project_issue_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "role_has_permissions" (
    "permission_id" INTEGER NOT NULL,
    "role_id" INTEGER NOT NULL,

    CONSTRAINT "role_has_permissions_pkey" PRIMARY KEY ("permission_id","role_id")
);

-- CreateTable
CREATE TABLE "role_permissions" (
    "role_id" INTEGER NOT NULL,
    "permission_id" INTEGER NOT NULL,

    CONSTRAINT "role_permissions_pkey" PRIMARY KEY ("role_id","permission_id")
);

-- CreateTable
CREATE TABLE "roles" (
    "id" SERIAL NOT NULL,
    "name" VARCHAR(255) NOT NULL,
    "guard_name" VARCHAR(255) NOT NULL,
    "created_at" TIMESTAMP(0),
    "updated_at" TIMESTAMP(0),

    CONSTRAINT "roles_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "sessions" (
    "id" VARCHAR(255) NOT NULL,
    "user_id" INTEGER,
    "ip_address" VARCHAR(45),
    "user_agent" TEXT,
    "payload" TEXT NOT NULL,
    "last_activity" INTEGER NOT NULL,

    CONSTRAINT "sessions_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "shared_permissions" (
    "id" SERIAL NOT NULL,
    "file_id" INTEGER,
    "folder_id" INTEGER,
    "shared_with_user_id" INTEGER,
    "permission" VARCHAR(50),

    CONSTRAINT "shared_permissions_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "shareholders" (
    "id" SERIAL NOT NULL,
    "name" VARCHAR(255),
    "description" TEXT,

    CONSTRAINT "shareholders_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "social_responsibility" (
    "id" SERIAL NOT NULL,
    "project_id" INTEGER,
    "period" VARCHAR(255),
    "program_name" VARCHAR(255),
    "budget" DOUBLE PRECISION,
    "beneficiaries_count" INTEGER,
    "indicator" VARCHAR(255),
    "created_at" TIMESTAMP(6),
    "updated_at" TIMESTAMP(6),

    CONSTRAINT "social_responsibility_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "user_groups" (
    "id" SERIAL NOT NULL,
    "user_id" INTEGER,
    "group_id" INTEGER,

    CONSTRAINT "user_groups_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "user_roles" (
    "role_id" INTEGER NOT NULL,
    "user_id" INTEGER NOT NULL,

    CONSTRAINT "user_roles_pkey" PRIMARY KEY ("user_id","role_id")
);

-- CreateTable
CREATE TABLE "users" (
    "id" SERIAL NOT NULL,
    "full_name" VARCHAR(255) NOT NULL,
    "username" VARCHAR(255) NOT NULL,
    "email" VARCHAR(255) NOT NULL,
    "email_verified_at" TIMESTAMP(0),
    "password" VARCHAR(255) NOT NULL,
    "remember_token" VARCHAR(100),
    "created_at" TIMESTAMP(0),
    "updated_at" TIMESTAMP(0),

    CONSTRAINT "users_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "waste_management" (
    "id" SERIAL NOT NULL,
    "project_id" INTEGER,
    "period" VARCHAR(255),
    "waste_type" VARCHAR(255),
    "generated_amount" DOUBLE PRECISION,
    "unit" VARCHAR(50),
    "treated_amount" DOUBLE PRECISION,
    "treated_method" VARCHAR(255),
    "indicator" VARCHAR(255),
    "created_at" TIMESTAMP(6),
    "updated_at" TIMESTAMP(6),

    CONSTRAINT "waste_management_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "construction_info" (
    "id" SERIAL NOT NULL,
    "project_id" INTEGER,
    "penyediaan_jasa_operation_dan_maintenance" DOUBLE PRECISION,
    "penyediaan_jasa_operation_dan_maintenance_date" TIMESTAMP(3),
    "penyediaan_energi_primer" DOUBLE PRECISION,
    "penyediaan_energi_primer_date" TIMESTAMP(3),
    "commercial_operation_date" DOUBLE PRECISION,
    "commercial_operation_date_date" TIMESTAMP(3),
    "financial_close" DOUBLE PRECISION,
    "financial_close_date" TIMESTAMP(3),
    "epc_cost_realization" DOUBLE PRECISION,
    "epc_cost_realization_date" TIMESTAMP(3),
    "total_progress_plan" DOUBLE PRECISION,
    "total_actual_plan" DOUBLE PRECISION,
    "actual_plan_date" TIMESTAMP(3),
    "irr" DOUBLE PRECISION,
    "irr_date" TIMESTAMP(3),
    "tkdn" DOUBLE PRECISION,
    "tkdn_date" TIMESTAMP(3),
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "construction_info_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "actual_plan" (
    "id" SERIAL NOT NULL,
    "project_id" INTEGER,
    "total_progress_plan" DOUBLE PRECISION,
    "total_actual_plan" DOUBLE PRECISION,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "actual_plan_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "actual_plan_date_plan" (
    "id" SERIAL NOT NULL,
    "project_id" INTEGER,
    "duration" INTEGER,
    "start_date" TIMESTAMP(3),
    "finish_date" TIMESTAMP(3),
    "actual_plan_id" INTEGER,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "actual_plan_date_plan_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "actual_plan_info_plan" (
    "id" SERIAL NOT NULL,
    "project_id" INTEGER,
    "type" "typeActualPlan",
    "progress_plan" DOUBLE PRECISION,
    "progress_actual" DOUBLE PRECISION,
    "schedule_date" TIMESTAMP(3),
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "actual_plan_info_plan_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "actual_plan_info_actual" (
    "id" SERIAL NOT NULL,
    "project_id" INTEGER,
    "type" "typeActualPlan",
    "progress_plan" DOUBLE PRECISION,
    "progress_actual_calculated" DOUBLE PRECISION,
    "progress_actual" DOUBLE PRECISION,
    "schedule_date" TIMESTAMP(3),
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "actual_plan_info_actual_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "actual_plan_procurement" (
    "id" SERIAL NOT NULL,
    "item" TEXT,
    "plan_start" TIMESTAMP(3),
    "plan_finish" TIMESTAMP(3),
    "actual_start" TIMESTAMP(3),
    "actual_finish" TIMESTAMP(3),
    "progress" DOUBLE PRECISION,
    "remark" TEXT,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "actual_plan_info_actual_id" INTEGER,

    CONSTRAINT "actual_plan_procurement_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "penyediaan_energy_primer" (
    "id" SERIAL NOT NULL,
    "project_id" INTEGER,
    "total_progress" DOUBLE PRECISION,
    "reported_date" TIMESTAMP(3),
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "penyediaan_energy_primer_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "indicative_timeline_energy_primer" (
    "id" SERIAL NOT NULL,
    "type" "TahapanProsesEnergiPrimer",
    "title" TEXT,
    "target_date" TIMESTAMP(3),
    "actual_date" TIMESTAMP(3),
    "description" TEXT,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "project_id" INTEGER,

    CONSTRAINT "indicative_timeline_energy_primer_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "penyedia_jasa_operation_dan_maintenance" (
    "id" SERIAL NOT NULL,
    "project_id" INTEGER,
    "total_progress" DOUBLE PRECISION,
    "reported_date" TIMESTAMP(3),
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "penyedia_jasa_operation_dan_maintenance_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "indicative_timeline_jasa_operation_dan_maintenance" (
    "id" SERIAL NOT NULL,
    "title" TEXT,
    "type" "TahapanProsesOandM",
    "target_date" TIMESTAMP(3),
    "actual_date" TIMESTAMP(3),
    "description" TEXT,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "project_id" INTEGER,

    CONSTRAINT "indicative_timeline_jasa_operation_dan_maintenance_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "commercial_operation_date" (
    "id" SERIAL NOT NULL,
    "project_id" INTEGER,
    "total_progress" DOUBLE PRECISION,
    "reported_date" TIMESTAMP(3),
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "commercial_operation_date_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "indicative_timeline_commercial_operation_date" (
    "id" SERIAL NOT NULL,
    "title" TEXT,
    "type" "TahapanCommissioning",
    "target_date" TIMESTAMP(3),
    "actual_date" TIMESTAMP(3),
    "description" TEXT,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "project_id" INTEGER,

    CONSTRAINT "indicative_timeline_commercial_operation_date_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "financial_close" (
    "id" SERIAL NOT NULL,
    "project_id" INTEGER,
    "total_progress" DOUBLE PRECISION,
    "reported_date" TIMESTAMP(3),
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "financial_close_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "indicative_timeline_financial_close" (
    "id" SERIAL NOT NULL,
    "title" TEXT,
    "type" "TahapanFinancialClose",
    "target_date" TIMESTAMP(3),
    "actual_date" TIMESTAMP(3),
    "description" TEXT,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "project_id" INTEGER,

    CONSTRAINT "indicative_timeline_financial_close_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "epc_cost_realization" (
    "id" SERIAL NOT NULL,
    "project_id" INTEGER,
    "created_at" TIMESTAMP(3) DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3),

    CONSTRAINT "epc_cost_realization_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "epc_cost_realization_detail" (
    "id" SERIAL NOT NULL,
    "project_id" INTEGER,
    "year" INTEGER,
    "month" INTEGER,
    "planned_payment" DOUBLE PRECISION DEFAULT 0,
    "realized_payment" DOUBLE PRECISION DEFAULT 0,
    "remaining_payment" DOUBLE PRECISION DEFAULT 0,
    "payment_progress" DOUBLE PRECISION DEFAULT 0,
    "physical_progress" DOUBLE PRECISION DEFAULT 0,
    "total_realized_payment" DOUBLE PRECISION DEFAULT 0,
    "total_remaining_payment" DOUBLE PRECISION DEFAULT 0,
    "created_at" TIMESTAMP(3) DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3),
    "epc_cost_realization_id" INTEGER,

    CONSTRAINT "epc_cost_realization_detail_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "esg_environment" (
    "id" SERIAL NOT NULL,
    "energy_consumption" DOUBLE PRECISION,
    "energy_reduction" DOUBLE PRECISION,
    "water_consumption" DOUBLE PRECISION,
    "waste_generated" DOUBLE PRECISION,
    "number_of_planted_trees_mangroove" INTEGER,
    "number_of_planted_trees_other" INTEGER,
    "mangrove_trees" INTEGER,
    "other_trees" INTEGER,
    "green_energy_production" DOUBLE PRECISION,
    "project_id" INTEGER,

    CONSTRAINT "esg_environment_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "esg_social" (
    "id" SERIAL NOT NULL,
    "community_development" INTEGER,
    "diversity_inclusion" DOUBLE PRECISION,
    "human_capital_development_hrs" INTEGER,
    "human_rights_policy" BOOLEAN,
    "human_rights_policy_date" TIMESTAMP(3),
    "health_and_safety_hours" INTEGER,
    "zero_accidents" BOOLEAN,
    "customer_satisfaction_index" DOUBLE PRECISION,
    "project_id" INTEGER,

    CONSTRAINT "esg_social_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "esg_governance" (
    "id" SERIAL NOT NULL,
    "governance_actions" INTEGER,
    "money_laundering_policy" BOOLEAN,
    "money_laundering_policy_date" TIMESTAMP(3),
    "whistleblowing_reports" INTEGER,
    "whistleblowing_resolved" INTEGER,
    "responsible_investment" BOOLEAN,
    "cyber_security_cases" INTEGER,
    "cyber_security_resolved" BOOLEAN,
    "esg_commitments" INTEGER,
    "project_id" INTEGER,

    CONSTRAINT "esg_governance_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "shadow_rating" (
    "id" SERIAL NOT NULL,
    "company_exposure" DOUBLE PRECISION,
    "manageable_risk" DOUBLE PRECISION,
    "managed_risk" DOUBLE PRECISION,
    "management_gap" DOUBLE PRECISION,
    "unmanageable_risk" DOUBLE PRECISION,
    "unmanaged_risk_total" DOUBLE PRECISION,
    "created_at" TIMESTAMP(3) DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3),
    "project_id" INTEGER,

    CONSTRAINT "shadow_rating_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "energy_usage" (
    "id" SERIAL NOT NULL,
    "year" INTEGER,
    "period" TEXT,
    "energy_source" "energy_usage_source",
    "electricity_kwh" DOUBLE PRECISION,
    "fuel_liters" DOUBLE PRECISION,
    "distance_km" DOUBLE PRECISION,
    "created_at" TIMESTAMP(3) DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3),
    "project_id" INTEGER,

    CONSTRAINT "energy_usage_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "energy_usage_air" (
    "id" SERIAL NOT NULL,
    "year" INTEGER,
    "period" TEXT,
    "minum_kemasan" DOUBLE PRECISION,
    "operational" DOUBLE PRECISION,
    "created_at" TIMESTAMP(3) DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3),
    "project_id" INTEGER,

    CONSTRAINT "energy_usage_air_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "waste_produced" (
    "id" SERIAL NOT NULL,
    "year" INTEGER,
    "period" TEXT,
    "organic" DOUBLE PRECISION,
    "plastic" DOUBLE PRECISION,
    "paper" DOUBLE PRECISION,
    "can_or_iron" DOUBLE PRECISION,
    "created_at" TIMESTAMP(3) DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3),
    "project_id" INTEGER,

    CONSTRAINT "waste_produced_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "waste_managed" (
    "id" SERIAL NOT NULL,
    "year" INTEGER,
    "period" TEXT,
    "organic" DOUBLE PRECISION,
    "plastic" DOUBLE PRECISION,
    "paper" DOUBLE PRECISION,
    "can_or_iron" DOUBLE PRECISION,
    "created_at" TIMESTAMP(3) DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3),
    "project_id" INTEGER,

    CONSTRAINT "waste_managed_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "waste_B3" (
    "id" SERIAL NOT NULL,
    "year" INTEGER,
    "period" TEXT,
    "type" "type_waste_b3",
    "total" DOUBLE PRECISION,
    "terkelola" DOUBLE PRECISION,
    "created_at" TIMESTAMP(3) DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3),
    "project_id" INTEGER,

    CONSTRAINT "waste_B3_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "tree_planting" (
    "id" SERIAL NOT NULL,
    "year" INTEGER,
    "period" TEXT,
    "mangrove" DOUBLE PRECISION,
    "other" DOUBLE PRECISION,
    "created_at" TIMESTAMP(3) DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3),
    "project_id" INTEGER,

    CONSTRAINT "tree_planting_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "green_energy_production" (
    "id" SERIAL NOT NULL,
    "year" INTEGER,
    "period" TEXT,
    "plts_cirata" DOUBLE PRECISION,
    "plts_ikn" DOUBLE PRECISION,
    "plts_tembesi" DOUBLE PRECISION,
    "plts_karangkates" DOUBLE PRECISION,
    "plts_batang_toru" DOUBLE PRECISION,
    "pltb_tanah_laut" DOUBLE PRECISION,
    "created_at" TIMESTAMP(3) DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3),
    "project_id" INTEGER,

    CONSTRAINT "green_energy_production_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "community_empowerment" (
    "id" SERIAL NOT NULL,
    "year" INTEGER,
    "period" TEXT,
    "type" "type_community_empowerment",
    "realisasi" DOUBLE PRECISION,
    "beneficiary" DOUBLE PRECISION,
    "created_at" TIMESTAMP(3) DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3),
    "project_id" INTEGER,

    CONSTRAINT "community_empowerment_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "employee" (
    "id" SERIAL NOT NULL,
    "name" TEXT,
    "position" TEXT,
    "education" TEXT,
    "birth_date" TIMESTAMP(3),
    "gender" "type_gender",
    "years_of_service" TIMESTAMP(3),
    "project_id" INTEGER,

    CONSTRAINT "employee_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "training" (
    "id" SERIAL NOT NULL,
    "training_name" TEXT,

    CONSTRAINT "training_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "employee_training" (
    "id" SERIAL NOT NULL,
    "employee_id" INTEGER NOT NULL,
    "training_id" INTEGER NOT NULL,

    CONSTRAINT "employee_training_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "human_rights_overview" (
    "id" SERIAL NOT NULL,
    "year" INTEGER,
    "period" TEXT,
    "total_case" INTEGER,
    "case_in_process" INTEGER,
    "finished_case" INTEGER,
    "created_at" TIMESTAMP(3) DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3),
    "project_id" INTEGER,

    CONSTRAINT "human_rights_overview_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "human_rights_attachment" (
    "id" SERIAL NOT NULL,
    "attachment_link" TEXT,
    "created_at" TIMESTAMP(3) DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3),
    "project_id" INTEGER,

    CONSTRAINT "human_rights_attachment_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "human_rights_case" (
    "id" SERIAL NOT NULL,
    "year" INTEGER,
    "period" TEXT,
    "title" TEXT,
    "severity" TEXT,
    "details" TEXT,
    "created_at" TIMESTAMP(3) DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3),
    "project_id" INTEGER,

    CONSTRAINT "human_rights_case_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "occupational_health_and_safety" (
    "id" SERIAL NOT NULL,
    "year" INTEGER,
    "period" TEXT,
    "safe_man_hour" TEXT,
    "incident" TEXT,
    "details" TEXT,
    "follow_up" TEXT,
    "created_at" TIMESTAMP(3) DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3),
    "project_id" INTEGER,

    CONSTRAINT "occupational_health_and_safety_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "occupational_health_and_safety_attachment" (
    "id" SERIAL NOT NULL,
    "attachment_link" TEXT,
    "created_at" TIMESTAMP(3) DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3),
    "project_id" INTEGER,

    CONSTRAINT "occupational_health_and_safety_attachment_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "customer_satisfaction_survey_index" (
    "id" SERIAL NOT NULL,
    "year" INTEGER,
    "instruction" TEXT,
    "follow_up" TEXT,
    "value" INTEGER,
    "created_at" TIMESTAMP(3) DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3),
    "project_id" INTEGER,

    CONSTRAINT "customer_satisfaction_survey_index_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "governance_risk_compliance" (
    "id" SERIAL NOT NULL,
    "year" INTEGER,
    "instruction" TEXT,
    "follow_up" TEXT,
    "value" INTEGER,
    "created_at" TIMESTAMP(3) DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3),
    "project_id" INTEGER,

    CONSTRAINT "governance_risk_compliance_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "money_laundering_policy" (
    "id" SERIAL NOT NULL,
    "year" INTEGER,
    "period" TEXT,
    "safe_man_hour" TEXT,
    "incident" TEXT,
    "details" TEXT,
    "follow_up" TEXT,
    "created_at" TIMESTAMP(3) DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3),
    "project_id" INTEGER,

    CONSTRAINT "money_laundering_policy_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "money_laundering_policy_attachment" (
    "id" SERIAL NOT NULL,
    "attachment_link" TEXT,
    "created_at" TIMESTAMP(3) DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3),
    "project_id" INTEGER,

    CONSTRAINT "money_laundering_policy_attachment_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "whistleblowing_system" (
    "id" SERIAL NOT NULL,
    "year" INTEGER,
    "period" TEXT,
    "total_reports" INTEGER,
    "follow_up" TEXT,
    "finished_report" TEXT,
    "created_at" TIMESTAMP(3) DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3),
    "project_id" INTEGER,

    CONSTRAINT "whistleblowing_system_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "whistleblowing_system_attachment" (
    "id" SERIAL NOT NULL,
    "attachment_link" TEXT,
    "created_at" TIMESTAMP(3) DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3),
    "project_id" INTEGER,

    CONSTRAINT "whistleblowing_system_attachment_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "cyber_security" (
    "id" SERIAL NOT NULL,
    "year" INTEGER,
    "period" TEXT,
    "case" TEXT,
    "follow_up" TEXT,
    "finished_report" TEXT,
    "created_at" TIMESTAMP(3) DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3),
    "project_id" INTEGER,

    CONSTRAINT "cyber_security_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "cyber_security_attachment" (
    "id" SERIAL NOT NULL,
    "attachment_link" TEXT,
    "created_at" TIMESTAMP(3) DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3),
    "project_id" INTEGER,

    CONSTRAINT "cyber_security_attachment_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "esg_performance_targets_pact" (
    "id" SERIAL NOT NULL,
    "attachment_link" TEXT,
    "created_at" TIMESTAMP(3) DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3),
    "project_id" INTEGER,

    CONSTRAINT "esg_performance_targets_pact_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "folder" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "path" TEXT,
    "owner_id" INTEGER,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "projectId" INTEGER,
    "Comment" TEXT,
    "parentId" INTEGER,

    CONSTRAINT "folder_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "file" (
    "id" TEXT NOT NULL,
    "name" TEXT,
    "folder_id" INTEGER,
    "uploaded_by" INTEGER,
    "owner" TEXT,
    "path" TEXT,
    "size" INTEGER,
    "type" TEXT,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "file_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "realization" (
    "id" SERIAL NOT NULL,
    "plant_availabillity" DOUBLE PRECISION,
    "performance_ratio" DOUBLE PRECISION,
    "productivity_rate" DOUBLE PRECISION,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "project_id" INTEGER,

    CONSTRAINT "realization_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "realization_history" (
    "id" SERIAL NOT NULL,
    "metrics" "type_realization",
    "value" DOUBLE PRECISION,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "project_id" INTEGER,

    CONSTRAINT "realization_history_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "esg_energy_consumption" (
    "id" SERIAL NOT NULL,
    "project_id" INTEGER,
    "period" TEXT,
    "year" INTEGER,
    "renewable" DOUBLE PRECISION,
    "non_renewable" DOUBLE PRECISION,

    CONSTRAINT "esg_energy_consumption_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "esg_energy_reduction" (
    "id" SERIAL NOT NULL,
    "project_id" INTEGER,
    "period" TEXT,
    "year" INTEGER,
    "renewable" DOUBLE PRECISION,
    "non_renewable" DOUBLE PRECISION,

    CONSTRAINT "esg_energy_reduction_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "esg_energy_total" (
    "id" SERIAL NOT NULL,
    "project_id" INTEGER,
    "year" INTEGER,
    "total_electricity" INTEGER,
    "total_fuel" INTEGER,
    "total_distance" INTEGER,

    CONSTRAINT "esg_energy_total_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "esg_water_consumption" (
    "id" SERIAL NOT NULL,
    "project_id" INTEGER,
    "period" TEXT,
    "year" INTEGER,
    "renewable" DOUBLE PRECISION,
    "non_renewable" DOUBLE PRECISION,

    CONSTRAINT "esg_water_consumption_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "esg_water_total" (
    "id" SERIAL NOT NULL,
    "project_id" INTEGER,
    "year" INTEGER,
    "total_air_kemasan" INTEGER,
    "total_air_produksi" INTEGER,

    CONSTRAINT "esg_water_total_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "esg_waste_generated_produced" (
    "id" SERIAL NOT NULL,
    "project_id" INTEGER,
    "period" TEXT,
    "year" INTEGER,
    "organic" DOUBLE PRECISION,
    "plastic" DOUBLE PRECISION,
    "paper" DOUBLE PRECISION,
    "canIron" DOUBLE PRECISION,

    CONSTRAINT "esg_waste_generated_produced_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "esg_waste_generated_managed" (
    "id" SERIAL NOT NULL,
    "project_id" INTEGER,
    "period" TEXT,
    "year" INTEGER,
    "organic" DOUBLE PRECISION,
    "plastic" DOUBLE PRECISION,
    "paper" DOUBLE PRECISION,
    "canIron" DOUBLE PRECISION,

    CONSTRAINT "esg_waste_generated_managed_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "esg_waste_generated_b_three" (
    "id" SERIAL NOT NULL,
    "project_id" INTEGER,
    "period" TEXT,
    "year" INTEGER,
    "organic" DOUBLE PRECISION,
    "plastic" DOUBLE PRECISION,
    "paper" DOUBLE PRECISION,
    "canIron" DOUBLE PRECISION,

    CONSTRAINT "esg_waste_generated_b_three_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "esg_trees_planted" (
    "id" SERIAL NOT NULL,
    "project_id" INTEGER,
    "period" TEXT,
    "year" INTEGER,
    "mangrove" DOUBLE PRECISION,
    "other" DOUBLE PRECISION,

    CONSTRAINT "esg_trees_planted_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "esg_community_empowerment" (
    "id" SERIAL NOT NULL,
    "project_id" INTEGER,
    "period" TEXT,
    "year" INTEGER,
    "category" "type_community_empowerment",
    "realization" DOUBLE PRECISION,
    "beneficiary" INTEGER,

    CONSTRAINT "esg_community_empowerment_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "esg_employee" (
    "id" SERIAL NOT NULL,
    "employee_total_male" INTEGER,
    "employee_total_female" INTEGER,
    "employee_total_male_f" INTEGER,
    "employee_total_male_md" INTEGER,
    "employee_total_male_mm" INTEGER,
    "employee_total_female_f" INTEGER,
    "employee_total_female_md" INTEGER,
    "employee_total_female_mm" INTEGER,
    "employee_total_male_strata_one" INTEGER,
    "employee_total_male_strata_two" INTEGER,
    "employee_total_female_strata_one" INTEGER,
    "employee_total_female_strata_two" INTEGER,
    "average_age" INTEGER,
    "average_work_service_year" INTEGER,
    "year" INTEGER,
    "project_id" INTEGER,

    CONSTRAINT "esg_employee_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "esg_human_rights_report" (
    "id" SERIAL NOT NULL,
    "project_id" INTEGER,
    "period" TEXT,
    "year" INTEGER,
    "total_case" INTEGER,
    "processed_case" INTEGER,
    "finished_case" INTEGER,

    CONSTRAINT "esg_human_rights_report_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "esg_human_rights_report_attachment" (
    "id" TEXT NOT NULL,
    "project_id" INTEGER,
    "name" TEXT,
    "path" TEXT,

    CONSTRAINT "esg_human_rights_report_attachment_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "esg_k_three_violation_report" (
    "id" SERIAL NOT NULL,
    "project_id" INTEGER,
    "period" TEXT,
    "year" INTEGER,
    "total_case" INTEGER,
    "processed_case" INTEGER,
    "finished_case" INTEGER,

    CONSTRAINT "esg_k_three_violation_report_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "esg_k_three_violation_report_attachment" (
    "id" TEXT NOT NULL,
    "project_id" INTEGER,
    "name" TEXT,
    "path" TEXT,

    CONSTRAINT "esg_k_three_violation_report_attachment_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "esg_satisfaction" (
    "id" SERIAL NOT NULL,
    "project_id" INTEGER,
    "year" INTEGER,
    "score" DOUBLE PRECISION,
    "instructions" TEXT,
    "follow_up" TEXT,

    CONSTRAINT "esg_satisfaction_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "esg_governance_risk_compliance" (
    "id" SERIAL NOT NULL,
    "project_id" INTEGER,
    "year" INTEGER,
    "score" DOUBLE PRECISION,
    "instructions" TEXT,
    "follow_up" TEXT,

    CONSTRAINT "esg_governance_risk_compliance_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "esg_money_laundering_report" (
    "id" SERIAL NOT NULL,
    "project_id" INTEGER,
    "period" TEXT,
    "year" INTEGER,
    "total_case" INTEGER,
    "processed_case" INTEGER,
    "finished_case" INTEGER,

    CONSTRAINT "esg_money_laundering_report_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "failed_jobs_uuid_unique" ON "failed_jobs"("uuid");

-- CreateIndex
CREATE INDEX "jobs_queue_index" ON "jobs"("queue");

-- CreateIndex
CREATE UNIQUE INDEX "meeting_attachments_file_unique_key" ON "meeting_attachments"("file_unique");

-- CreateIndex
CREATE INDEX "model_has_permissions_model_id_model_type_index" ON "model_has_permissions"("model_id", "model_type");

-- CreateIndex
CREATE INDEX "model_has_roles_model_id_model_type_index" ON "model_has_roles"("model_id", "model_type");

-- CreateIndex
CREATE UNIQUE INDEX "permissions_name_guard_name_unique" ON "permissions"("name", "guard_name");

-- CreateIndex
CREATE UNIQUE INDEX "personal_access_tokens_token_unique" ON "personal_access_tokens"("token");

-- CreateIndex
CREATE INDEX "personal_access_tokens_tokenable_type_tokenable_id_index" ON "personal_access_tokens"("tokenable_type", "tokenable_id");

-- CreateIndex
CREATE UNIQUE INDEX "power_plants_project_id_key" ON "power_plants"("project_id");

-- CreateIndex
CREATE UNIQUE INDEX "projects_slug_key" ON "projects"("slug");

-- CreateIndex
CREATE UNIQUE INDEX "roles_name_guard_name_unique" ON "roles"("name", "guard_name");

-- CreateIndex
CREATE INDEX "sessions_last_activity_index" ON "sessions"("last_activity");

-- CreateIndex
CREATE INDEX "sessions_user_id_index" ON "sessions"("user_id");

-- CreateIndex
CREATE UNIQUE INDEX "users_username_unique" ON "users"("username");

-- CreateIndex
CREATE UNIQUE INDEX "users_email_unique" ON "users"("email");

-- CreateIndex
CREATE UNIQUE INDEX "construction_info_project_id_key" ON "construction_info"("project_id");

-- CreateIndex
CREATE UNIQUE INDEX "epc_cost_realization_project_id_key" ON "epc_cost_realization"("project_id");

-- CreateIndex
CREATE UNIQUE INDEX "employee_training_employee_id_training_id_key" ON "employee_training"("employee_id", "training_id");

-- CreateIndex
CREATE UNIQUE INDEX "realization_project_id_key" ON "realization"("project_id");

-- AddForeignKey
ALTER TABLE "audit_logs" ADD CONSTRAINT "audit_logs_file_id_fkey" FOREIGN KEY ("file_id") REFERENCES "legal_files"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "audit_logs" ADD CONSTRAINT "audit_logs_folder_id_fkey" FOREIGN KEY ("folder_id") REFERENCES "legal_folders"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "audit_logs" ADD CONSTRAINT "audit_logs_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "users"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "critical_path" ADD CONSTRAINT "critical_path_project_id_fkey" FOREIGN KEY ("project_id") REFERENCES "projects"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "energy_consumption" ADD CONSTRAINT "energy_consumption_project_id_fkey" FOREIGN KEY ("project_id") REFERENCES "projects"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "esg_performance_targets" ADD CONSTRAINT "esg_performance_targets_project_id_fkey" FOREIGN KEY ("project_id") REFERENCES "projects"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "esg_score" ADD CONSTRAINT "esg_score_project_id_fkey" FOREIGN KEY ("project_id") REFERENCES "projects"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "financial_statement_profit_loss" ADD CONSTRAINT "financial_statement_profit_loss_project_id_fkey" FOREIGN KEY ("project_id") REFERENCES "projects"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "financial_statement_balance_sheet" ADD CONSTRAINT "financial_statement_balance_sheet_project_id_fkey" FOREIGN KEY ("project_id") REFERENCES "projects"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "financial_statement_cashflow_statement" ADD CONSTRAINT "financial_statement_cashflow_statement_project_id_fkey" FOREIGN KEY ("project_id") REFERENCES "projects"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "general_info" ADD CONSTRAINT "general_info_project_id_fkey" FOREIGN KEY ("project_id") REFERENCES "projects"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "governance" ADD CONSTRAINT "governance_project_id_fkey" FOREIGN KEY ("project_id") REFERENCES "projects"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "human_capital" ADD CONSTRAINT "human_capital_project_id_fkey" FOREIGN KEY ("project_id") REFERENCES "projects"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "issue_colaborators" ADD CONSTRAINT "issue_colaborators_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "users"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "issue" ADD CONSTRAINT "issue_project_id_fkey" FOREIGN KEY ("project_id") REFERENCES "projects"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "issue" ADD CONSTRAINT "issue_assignee_fkey" FOREIGN KEY ("assignee") REFERENCES "users"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "legal_files" ADD CONSTRAINT "legal_files_folder_id_fkey" FOREIGN KEY ("folder_id") REFERENCES "legal_folders"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "legal_files" ADD CONSTRAINT "legal_files_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "users"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "legal_folders" ADD CONSTRAINT "legal_folders_parent_folder_id_fkey" FOREIGN KEY ("parent_folder_id") REFERENCES "legal_folders"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "legal_folders" ADD CONSTRAINT "legal_folders_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "users"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "meeting_attachments" ADD CONSTRAINT "meeting_attachments_meeting_id_fkey" FOREIGN KEY ("meeting_id") REFERENCES "meetings"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "meetings" ADD CONSTRAINT "meetings_project_id_fkey" FOREIGN KEY ("project_id") REFERENCES "projects"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "model_has_permissions" ADD CONSTRAINT "model_has_permissions_permission_id_foreign" FOREIGN KEY ("permission_id") REFERENCES "permissions"("id") ON DELETE CASCADE ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "model_has_roles" ADD CONSTRAINT "model_has_roles_role_id_foreign" FOREIGN KEY ("role_id") REFERENCES "roles"("id") ON DELETE CASCADE ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "periodic_report_technical_operation_plts" ADD CONSTRAINT "periodic_report_technical_operation_plts_project_id_fkey" FOREIGN KEY ("project_id") REFERENCES "projects"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "periodic_report_technical_operation_pltu" ADD CONSTRAINT "periodic_report_technical_operation_pltu_project_id_fkey" FOREIGN KEY ("project_id") REFERENCES "projects"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "periodic_report_free_cashflow_to_equity" ADD CONSTRAINT "periodic_report_free_cashflow_to_equity_project_id_fkey" FOREIGN KEY ("project_id") REFERENCES "projects"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "periodic_report_macroeconomic" ADD CONSTRAINT "periodic_report_macroeconomic_project_id_fkey" FOREIGN KEY ("project_id") REFERENCES "projects"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "installed_capacity" ADD CONSTRAINT "installed_capacity_project_id_fkey" FOREIGN KEY ("project_id") REFERENCES "projects"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "power_plants" ADD CONSTRAINT "power_plants_project_id_fkey" FOREIGN KEY ("project_id") REFERENCES "projects"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "procurement" ADD CONSTRAINT "procurement_project_id_fkey" FOREIGN KEY ("project_id") REFERENCES "projects"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "project_costs" ADD CONSTRAINT "project_costs_project_id_fkey" FOREIGN KEY ("project_id") REFERENCES "projects"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "project_irr" ADD CONSTRAINT "project_irr_project_id_fkey" FOREIGN KEY ("project_id") REFERENCES "projects"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "project_irr" ADD CONSTRAINT "project_irr_updated_by_fkey" FOREIGN KEY ("updated_by") REFERENCES "users"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "project_tkdn" ADD CONSTRAINT "project_tkdn_project_id_fkey" FOREIGN KEY ("project_id") REFERENCES "projects"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "project_tkdn" ADD CONSTRAINT "project_tkdn_updated_by_fkey" FOREIGN KEY ("updated_by") REFERENCES "users"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "project_issues" ADD CONSTRAINT "project_issues_project_id_fkey" FOREIGN KEY ("project_id") REFERENCES "projects"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "project_milestone" ADD CONSTRAINT "project_milestone_project_id_fkey" FOREIGN KEY ("project_id") REFERENCES "projects"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "media_project_milestone" ADD CONSTRAINT "media_project_milestone_project_milestone_id_fkey" FOREIGN KEY ("project_milestone_id") REFERENCES "project_milestone"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "project_plan_timeline" ADD CONSTRAINT "project_plan_timeline_project_id_fkey" FOREIGN KEY ("project_id") REFERENCES "projects"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "project_shareholders" ADD CONSTRAINT "project_shareholders_project_id_fkey" FOREIGN KEY ("project_id") REFERENCES "projects"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "project_shareholders" ADD CONSTRAINT "project_shareholders_shareholder_id_fkey" FOREIGN KEY ("shareholder_id") REFERENCES "shareholders"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "project_timeline" ADD CONSTRAINT "project_timeline_project_id_fkey" FOREIGN KEY ("project_id") REFERENCES "projects"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "development_timeline" ADD CONSTRAINT "development_timeline_project_id_fkey" FOREIGN KEY ("project_id") REFERENCES "projects"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "project_metrics_history" ADD CONSTRAINT "project_metrics_history_project_id_fkey" FOREIGN KEY ("project_id") REFERENCES "projects"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "project_attachment" ADD CONSTRAINT "project_attachment_project_id_fkey" FOREIGN KEY ("project_id") REFERENCES "projects"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "project_attachment" ADD CONSTRAINT "project_attachment_metrics_history_id_fkey" FOREIGN KEY ("metrics_history_id") REFERENCES "project_metrics_history"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "role_has_permissions" ADD CONSTRAINT "role_has_permissions_permission_id_foreign" FOREIGN KEY ("permission_id") REFERENCES "permissions"("id") ON DELETE CASCADE ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "role_has_permissions" ADD CONSTRAINT "role_has_permissions_role_id_foreign" FOREIGN KEY ("role_id") REFERENCES "roles"("id") ON DELETE CASCADE ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "role_permissions" ADD CONSTRAINT "role_permissions_permission_id_fkey" FOREIGN KEY ("permission_id") REFERENCES "permissions"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "role_permissions" ADD CONSTRAINT "role_permissions_role_id_fkey" FOREIGN KEY ("role_id") REFERENCES "roles"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "shared_permissions" ADD CONSTRAINT "shared_permissions_file_id_fkey" FOREIGN KEY ("file_id") REFERENCES "legal_files"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "shared_permissions" ADD CONSTRAINT "shared_permissions_folder_id_fkey" FOREIGN KEY ("folder_id") REFERENCES "legal_folders"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "shared_permissions" ADD CONSTRAINT "shared_permissions_shared_with_user_id_fkey" FOREIGN KEY ("shared_with_user_id") REFERENCES "users"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "social_responsibility" ADD CONSTRAINT "social_responsibility_project_id_fkey" FOREIGN KEY ("project_id") REFERENCES "projects"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "user_groups" ADD CONSTRAINT "user_groups_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "users"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "user_roles" ADD CONSTRAINT "user_roles_role_id_fkey" FOREIGN KEY ("role_id") REFERENCES "roles"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "user_roles" ADD CONSTRAINT "user_roles_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "users"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "waste_management" ADD CONSTRAINT "waste_management_project_id_fkey" FOREIGN KEY ("project_id") REFERENCES "projects"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "construction_info" ADD CONSTRAINT "construction_info_project_id_fkey" FOREIGN KEY ("project_id") REFERENCES "projects"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "actual_plan" ADD CONSTRAINT "actual_plan_project_id_fkey" FOREIGN KEY ("project_id") REFERENCES "projects"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "actual_plan_date_plan" ADD CONSTRAINT "actual_plan_date_plan_project_id_fkey" FOREIGN KEY ("project_id") REFERENCES "projects"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "actual_plan_date_plan" ADD CONSTRAINT "actual_plan_date_plan_actual_plan_id_fkey" FOREIGN KEY ("actual_plan_id") REFERENCES "actual_plan"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "actual_plan_info_plan" ADD CONSTRAINT "actual_plan_info_plan_project_id_fkey" FOREIGN KEY ("project_id") REFERENCES "projects"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "actual_plan_info_actual" ADD CONSTRAINT "actual_plan_info_actual_project_id_fkey" FOREIGN KEY ("project_id") REFERENCES "projects"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "actual_plan_procurement" ADD CONSTRAINT "actual_plan_procurement_actual_plan_info_actual_id_fkey" FOREIGN KEY ("actual_plan_info_actual_id") REFERENCES "actual_plan_info_actual"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "penyediaan_energy_primer" ADD CONSTRAINT "penyediaan_energy_primer_project_id_fkey" FOREIGN KEY ("project_id") REFERENCES "projects"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "indicative_timeline_energy_primer" ADD CONSTRAINT "indicative_timeline_energy_primer_project_id_fkey" FOREIGN KEY ("project_id") REFERENCES "projects"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "penyedia_jasa_operation_dan_maintenance" ADD CONSTRAINT "penyedia_jasa_operation_dan_maintenance_project_id_fkey" FOREIGN KEY ("project_id") REFERENCES "projects"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "indicative_timeline_jasa_operation_dan_maintenance" ADD CONSTRAINT "indicative_timeline_jasa_operation_dan_maintenance_project_fkey" FOREIGN KEY ("project_id") REFERENCES "projects"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "commercial_operation_date" ADD CONSTRAINT "commercial_operation_date_project_id_fkey" FOREIGN KEY ("project_id") REFERENCES "projects"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "indicative_timeline_commercial_operation_date" ADD CONSTRAINT "indicative_timeline_commercial_operation_date_project_id_fkey" FOREIGN KEY ("project_id") REFERENCES "projects"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "financial_close" ADD CONSTRAINT "financial_close_project_id_fkey" FOREIGN KEY ("project_id") REFERENCES "projects"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "indicative_timeline_financial_close" ADD CONSTRAINT "indicative_timeline_financial_close_project_id_fkey" FOREIGN KEY ("project_id") REFERENCES "projects"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "epc_cost_realization" ADD CONSTRAINT "epc_cost_realization_project_id_fkey" FOREIGN KEY ("project_id") REFERENCES "projects"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "epc_cost_realization_detail" ADD CONSTRAINT "epc_cost_realization_detail_epc_cost_realization_id_fkey" FOREIGN KEY ("epc_cost_realization_id") REFERENCES "epc_cost_realization"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "epc_cost_realization_detail" ADD CONSTRAINT "epc_cost_realization_detail_project_id_fkey" FOREIGN KEY ("project_id") REFERENCES "projects"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "esg_environment" ADD CONSTRAINT "esg_environment_project_id_fkey" FOREIGN KEY ("project_id") REFERENCES "projects"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "esg_social" ADD CONSTRAINT "esg_social_project_id_fkey" FOREIGN KEY ("project_id") REFERENCES "projects"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "esg_governance" ADD CONSTRAINT "esg_governance_project_id_fkey" FOREIGN KEY ("project_id") REFERENCES "projects"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "shadow_rating" ADD CONSTRAINT "shadow_rating_project_id_fkey" FOREIGN KEY ("project_id") REFERENCES "projects"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "energy_usage" ADD CONSTRAINT "energy_usage_project_id_fkey" FOREIGN KEY ("project_id") REFERENCES "projects"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "energy_usage_air" ADD CONSTRAINT "energy_usage_air_project_id_fkey" FOREIGN KEY ("project_id") REFERENCES "projects"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "waste_produced" ADD CONSTRAINT "waste_produced_project_id_fkey" FOREIGN KEY ("project_id") REFERENCES "projects"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "waste_managed" ADD CONSTRAINT "waste_managed_project_id_fkey" FOREIGN KEY ("project_id") REFERENCES "projects"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "waste_B3" ADD CONSTRAINT "waste_B3_project_id_fkey" FOREIGN KEY ("project_id") REFERENCES "projects"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "tree_planting" ADD CONSTRAINT "tree_planting_project_id_fkey" FOREIGN KEY ("project_id") REFERENCES "projects"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "green_energy_production" ADD CONSTRAINT "green_energy_production_project_id_fkey" FOREIGN KEY ("project_id") REFERENCES "projects"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "community_empowerment" ADD CONSTRAINT "community_empowerment_project_id_fkey" FOREIGN KEY ("project_id") REFERENCES "projects"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "employee" ADD CONSTRAINT "employee_project_id_fkey" FOREIGN KEY ("project_id") REFERENCES "projects"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "employee_training" ADD CONSTRAINT "employee_training_employee_id_fkey" FOREIGN KEY ("employee_id") REFERENCES "employee"("id") ON DELETE CASCADE ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "employee_training" ADD CONSTRAINT "employee_training_training_id_fkey" FOREIGN KEY ("training_id") REFERENCES "training"("id") ON DELETE CASCADE ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "human_rights_overview" ADD CONSTRAINT "human_rights_overview_project_id_fkey" FOREIGN KEY ("project_id") REFERENCES "projects"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "human_rights_attachment" ADD CONSTRAINT "human_rights_attachment_project_id_fkey" FOREIGN KEY ("project_id") REFERENCES "projects"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "human_rights_case" ADD CONSTRAINT "human_rights_case_project_id_fkey" FOREIGN KEY ("project_id") REFERENCES "projects"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "occupational_health_and_safety" ADD CONSTRAINT "occupational_health_and_safety_project_id_fkey" FOREIGN KEY ("project_id") REFERENCES "projects"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "occupational_health_and_safety_attachment" ADD CONSTRAINT "occupational_health_and_safety_attachment_project_id_fkey" FOREIGN KEY ("project_id") REFERENCES "projects"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "customer_satisfaction_survey_index" ADD CONSTRAINT "customer_satisfaction_survey_index_project_id_fkey" FOREIGN KEY ("project_id") REFERENCES "projects"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "governance_risk_compliance" ADD CONSTRAINT "governance_risk_compliance_project_id_fkey" FOREIGN KEY ("project_id") REFERENCES "projects"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "money_laundering_policy" ADD CONSTRAINT "money_laundering_policy_project_id_fkey" FOREIGN KEY ("project_id") REFERENCES "projects"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "money_laundering_policy_attachment" ADD CONSTRAINT "money_laundering_policy_attachment_project_id_fkey" FOREIGN KEY ("project_id") REFERENCES "projects"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "whistleblowing_system" ADD CONSTRAINT "whistleblowing_system_project_id_fkey" FOREIGN KEY ("project_id") REFERENCES "projects"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "whistleblowing_system_attachment" ADD CONSTRAINT "whistleblowing_system_attachment_project_id_fkey" FOREIGN KEY ("project_id") REFERENCES "projects"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "cyber_security" ADD CONSTRAINT "cyber_security_project_id_fkey" FOREIGN KEY ("project_id") REFERENCES "projects"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "cyber_security_attachment" ADD CONSTRAINT "cyber_security_attachment_project_id_fkey" FOREIGN KEY ("project_id") REFERENCES "projects"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "esg_performance_targets_pact" ADD CONSTRAINT "esg_performance_targets_pact_project_id_fkey" FOREIGN KEY ("project_id") REFERENCES "projects"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "folder" ADD CONSTRAINT "folder_parentId_fkey" FOREIGN KEY ("parentId") REFERENCES "folder"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "folder" ADD CONSTRAINT "folder_projectId_fkey" FOREIGN KEY ("projectId") REFERENCES "projects"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "file" ADD CONSTRAINT "file_folder_id_fkey" FOREIGN KEY ("folder_id") REFERENCES "folder"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "file" ADD CONSTRAINT "file_uploaded_by_fkey" FOREIGN KEY ("uploaded_by") REFERENCES "users"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "realization" ADD CONSTRAINT "realization_project_id_fkey" FOREIGN KEY ("project_id") REFERENCES "projects"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "realization_history" ADD CONSTRAINT "realization_history_project_id_fkey" FOREIGN KEY ("project_id") REFERENCES "projects"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "esg_energy_consumption" ADD CONSTRAINT "esg_energy_consumption_project_id_fkey" FOREIGN KEY ("project_id") REFERENCES "projects"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "esg_energy_reduction" ADD CONSTRAINT "esg_energy_reduction_project_id_fkey" FOREIGN KEY ("project_id") REFERENCES "projects"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "esg_energy_total" ADD CONSTRAINT "esg_energy_total_project_id_fkey" FOREIGN KEY ("project_id") REFERENCES "projects"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "esg_water_consumption" ADD CONSTRAINT "esg_water_consumption_project_id_fkey" FOREIGN KEY ("project_id") REFERENCES "projects"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "esg_water_total" ADD CONSTRAINT "esg_water_total_project_id_fkey" FOREIGN KEY ("project_id") REFERENCES "projects"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "esg_waste_generated_produced" ADD CONSTRAINT "esg_waste_generated_produced_project_id_fkey" FOREIGN KEY ("project_id") REFERENCES "projects"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "esg_waste_generated_managed" ADD CONSTRAINT "esg_waste_generated_managed_project_id_fkey" FOREIGN KEY ("project_id") REFERENCES "projects"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "esg_waste_generated_b_three" ADD CONSTRAINT "esg_waste_generated_b_three_project_id_fkey" FOREIGN KEY ("project_id") REFERENCES "projects"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "esg_trees_planted" ADD CONSTRAINT "esg_trees_planted_project_id_fkey" FOREIGN KEY ("project_id") REFERENCES "projects"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "esg_community_empowerment" ADD CONSTRAINT "esg_community_empowerment_project_id_fkey" FOREIGN KEY ("project_id") REFERENCES "projects"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "esg_employee" ADD CONSTRAINT "esg_employee_project_id_fkey" FOREIGN KEY ("project_id") REFERENCES "projects"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "esg_human_rights_report" ADD CONSTRAINT "esg_human_rights_report_project_id_fkey" FOREIGN KEY ("project_id") REFERENCES "projects"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "esg_human_rights_report_attachment" ADD CONSTRAINT "esg_human_rights_report_attachment_project_id_fkey" FOREIGN KEY ("project_id") REFERENCES "projects"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "esg_k_three_violation_report" ADD CONSTRAINT "esg_k_three_violation_report_project_id_fkey" FOREIGN KEY ("project_id") REFERENCES "projects"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "esg_k_three_violation_report_attachment" ADD CONSTRAINT "esg_k_three_violation_report_attachment_project_id_fkey" FOREIGN KEY ("project_id") REFERENCES "projects"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "esg_satisfaction" ADD CONSTRAINT "esg_satisfaction_project_id_fkey" FOREIGN KEY ("project_id") REFERENCES "projects"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "esg_governance_risk_compliance" ADD CONSTRAINT "esg_governance_risk_compliance_project_id_fkey" FOREIGN KEY ("project_id") REFERENCES "projects"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "esg_money_laundering_report" ADD CONSTRAINT "esg_money_laundering_report_project_id_fkey" FOREIGN KEY ("project_id") REFERENCES "projects"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
