/*
  Warnings:

  - You are about to drop the column `email_verified_at` on the `users` table. All the data in the column will be lost.
  - You are about to drop the column `full_name` on the `users` table. All the data in the column will be lost.
  - You are about to drop the column `remember_token` on the `users` table. All the data in the column will be lost.
  - You are about to drop the column `updated_at` on the `users` table. All the data in the column will be lost.
  - You are about to drop the column `username` on the `users` table. All the data in the column will be lost.
  - You are about to drop the `actual_plan` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `actual_plan_date_plan` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `actual_plan_info_actual` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `actual_plan_info_plan` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `actual_plan_procurement` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `audit_logs` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `cache` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `cache_locks` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `commercial_operation_date` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `community_empowerment` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `construction_info` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `critical_path` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `customer_satisfaction_survey_index` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `cyber_security` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `cyber_security_attachment` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `cyber_security_regen` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `development_timeline` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `employee` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `employee_training` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `energy_consumption` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `energy_usage` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `energy_usage_air` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `epc_cost_realization` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `epc_cost_realization_detail` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `esg_community_empowerment` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `esg_employee` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `esg_energy_consumption` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `esg_energy_reduction` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `esg_energy_total` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `esg_environment` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `esg_governance` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `esg_governance_risk_compliance` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `esg_human_rights_report` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `esg_human_rights_report_attachment` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `esg_k_three_violation_report` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `esg_k_three_violation_report_attachment` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `esg_money_laundering_report` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `esg_performance_targets` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `esg_performance_targets_pact` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `esg_satisfaction` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `esg_score` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `esg_social` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `esg_trees_planted` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `esg_waste_generated_b_three` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `esg_waste_generated_managed` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `esg_waste_generated_produced` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `esg_water_consumption` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `esg_water_total` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `failed_jobs` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `file` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `financial_close` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `financial_statement_balance_sheet` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `financial_statement_cashflow_statement` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `financial_statement_profit_loss` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `folder` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `general_info` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `governance` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `governance_risk_compliance` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `green_energy_production` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `groups` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `human_capital` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `human_rights_attachment` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `human_rights_case` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `human_rights_overview` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `indicative_timeline_commercial_operation_date` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `indicative_timeline_energy_primer` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `indicative_timeline_financial_close` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `indicative_timeline_jasa_operation_dan_maintenance` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `installed_capacity` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `issue` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `issue_colaborators` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `job_batches` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `jobs` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `legal_files` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `legal_folders` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `media_project_milestone` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `meeting_attachments` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `meetings` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `migrations` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `model_has_permissions` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `model_has_roles` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `money_laundering_policy` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `money_laundering_policy_attachment` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `occupational_health_and_safety` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `occupational_health_and_safety_attachment` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `password_reset_tokens` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `penyedia_jasa_operation_dan_maintenance` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `penyediaan_energy_primer` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `periodic_report_free_cashflow_to_equity` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `periodic_report_macroeconomic` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `periodic_report_technical_operation_plts` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `periodic_report_technical_operation_pltu` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `permissions` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `personal_access_tokens` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `power_plants` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `procurement` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `project_attachment` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `project_costs` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `project_irr` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `project_issue` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `project_issues` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `project_metrics_history` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `project_milestone` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `project_milestone_detail` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `project_plan_timeline` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `project_plan_timeline_details` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `project_shareholders` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `project_timeline` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `project_tkdn` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `projects` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `realization` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `realization_history` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `role_has_permissions` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `role_permissions` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `roles` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `sessions` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `shadow_rating` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `shared_permissions` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `shareholders` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `social_responsibility` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `training` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `tree_planting` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `user_groups` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `user_roles` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `waste_B3` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `waste_managed` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `waste_management` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `waste_produced` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `whistleblowing_system` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `whistleblowing_system_attachment` table. If the table is not empty, all the data it contains will be lost.
  - Made the column `created_at` on table `users` required. This step will fail if there are existing NULL values in that column.

*/
-- DropForeignKey
ALTER TABLE "actual_plan" DROP CONSTRAINT "actual_plan_project_id_fkey";

-- DropForeignKey
ALTER TABLE "actual_plan_date_plan" DROP CONSTRAINT "actual_plan_date_plan_actual_plan_id_fkey";

-- DropForeignKey
ALTER TABLE "actual_plan_date_plan" DROP CONSTRAINT "actual_plan_date_plan_project_id_fkey";

-- DropForeignKey
ALTER TABLE "actual_plan_info_actual" DROP CONSTRAINT "actual_plan_info_actual_project_id_fkey";

-- DropForeignKey
ALTER TABLE "actual_plan_info_plan" DROP CONSTRAINT "actual_plan_info_plan_project_id_fkey";

-- DropForeignKey
ALTER TABLE "actual_plan_procurement" DROP CONSTRAINT "actual_plan_procurement_actual_plan_info_actual_id_fkey";

-- DropForeignKey
ALTER TABLE "audit_logs" DROP CONSTRAINT "audit_logs_file_id_fkey";

-- DropForeignKey
ALTER TABLE "audit_logs" DROP CONSTRAINT "audit_logs_folder_id_fkey";

-- DropForeignKey
ALTER TABLE "audit_logs" DROP CONSTRAINT "audit_logs_user_id_fkey";

-- DropForeignKey
ALTER TABLE "commercial_operation_date" DROP CONSTRAINT "commercial_operation_date_project_id_fkey";

-- DropForeignKey
ALTER TABLE "community_empowerment" DROP CONSTRAINT "community_empowerment_project_id_fkey";

-- DropForeignKey
ALTER TABLE "construction_info" DROP CONSTRAINT "construction_info_project_id_fkey";

-- DropForeignKey
ALTER TABLE "critical_path" DROP CONSTRAINT "critical_path_project_id_fkey";

-- DropForeignKey
ALTER TABLE "customer_satisfaction_survey_index" DROP CONSTRAINT "customer_satisfaction_survey_index_project_id_fkey";

-- DropForeignKey
ALTER TABLE "cyber_security" DROP CONSTRAINT "cyber_security_project_id_fkey";

-- DropForeignKey
ALTER TABLE "cyber_security_attachment" DROP CONSTRAINT "cyber_security_attachment_project_id_fkey";

-- DropForeignKey
ALTER TABLE "development_timeline" DROP CONSTRAINT "development_timeline_project_id_fkey";

-- DropForeignKey
ALTER TABLE "employee" DROP CONSTRAINT "employee_project_id_fkey";

-- DropForeignKey
ALTER TABLE "employee_training" DROP CONSTRAINT "employee_training_employee_id_fkey";

-- DropForeignKey
ALTER TABLE "employee_training" DROP CONSTRAINT "employee_training_training_id_fkey";

-- DropForeignKey
ALTER TABLE "energy_consumption" DROP CONSTRAINT "energy_consumption_project_id_fkey";

-- DropForeignKey
ALTER TABLE "energy_usage" DROP CONSTRAINT "energy_usage_project_id_fkey";

-- DropForeignKey
ALTER TABLE "energy_usage_air" DROP CONSTRAINT "energy_usage_air_project_id_fkey";

-- DropForeignKey
ALTER TABLE "epc_cost_realization" DROP CONSTRAINT "epc_cost_realization_project_id_fkey";

-- DropForeignKey
ALTER TABLE "epc_cost_realization_detail" DROP CONSTRAINT "epc_cost_realization_detail_epc_cost_realization_id_fkey";

-- DropForeignKey
ALTER TABLE "epc_cost_realization_detail" DROP CONSTRAINT "epc_cost_realization_detail_project_id_fkey";

-- DropForeignKey
ALTER TABLE "esg_community_empowerment" DROP CONSTRAINT "esg_community_empowerment_project_id_fkey";

-- DropForeignKey
ALTER TABLE "esg_employee" DROP CONSTRAINT "esg_employee_project_id_fkey";

-- DropForeignKey
ALTER TABLE "esg_energy_consumption" DROP CONSTRAINT "esg_energy_consumption_project_id_fkey";

-- DropForeignKey
ALTER TABLE "esg_energy_reduction" DROP CONSTRAINT "esg_energy_reduction_project_id_fkey";

-- DropForeignKey
ALTER TABLE "esg_energy_total" DROP CONSTRAINT "esg_energy_total_project_id_fkey";

-- DropForeignKey
ALTER TABLE "esg_environment" DROP CONSTRAINT "esg_environment_project_id_fkey";

-- DropForeignKey
ALTER TABLE "esg_governance" DROP CONSTRAINT "esg_governance_project_id_fkey";

-- DropForeignKey
ALTER TABLE "esg_governance_risk_compliance" DROP CONSTRAINT "esg_governance_risk_compliance_project_id_fkey";

-- DropForeignKey
ALTER TABLE "esg_human_rights_report" DROP CONSTRAINT "esg_human_rights_report_project_id_fkey";

-- DropForeignKey
ALTER TABLE "esg_human_rights_report_attachment" DROP CONSTRAINT "esg_human_rights_report_attachment_project_id_fkey";

-- DropForeignKey
ALTER TABLE "esg_k_three_violation_report" DROP CONSTRAINT "esg_k_three_violation_report_project_id_fkey";

-- DropForeignKey
ALTER TABLE "esg_k_three_violation_report_attachment" DROP CONSTRAINT "esg_k_three_violation_report_attachment_project_id_fkey";

-- DropForeignKey
ALTER TABLE "esg_money_laundering_report" DROP CONSTRAINT "esg_money_laundering_report_project_id_fkey";

-- DropForeignKey
ALTER TABLE "esg_performance_targets" DROP CONSTRAINT "esg_performance_targets_project_id_fkey";

-- DropForeignKey
ALTER TABLE "esg_performance_targets_pact" DROP CONSTRAINT "esg_performance_targets_pact_project_id_fkey";

-- DropForeignKey
ALTER TABLE "esg_satisfaction" DROP CONSTRAINT "esg_satisfaction_project_id_fkey";

-- DropForeignKey
ALTER TABLE "esg_score" DROP CONSTRAINT "esg_score_project_id_fkey";

-- DropForeignKey
ALTER TABLE "esg_social" DROP CONSTRAINT "esg_social_project_id_fkey";

-- DropForeignKey
ALTER TABLE "esg_trees_planted" DROP CONSTRAINT "esg_trees_planted_project_id_fkey";

-- DropForeignKey
ALTER TABLE "esg_waste_generated_b_three" DROP CONSTRAINT "esg_waste_generated_b_three_project_id_fkey";

-- DropForeignKey
ALTER TABLE "esg_waste_generated_managed" DROP CONSTRAINT "esg_waste_generated_managed_project_id_fkey";

-- DropForeignKey
ALTER TABLE "esg_waste_generated_produced" DROP CONSTRAINT "esg_waste_generated_produced_project_id_fkey";

-- DropForeignKey
ALTER TABLE "esg_water_consumption" DROP CONSTRAINT "esg_water_consumption_project_id_fkey";

-- DropForeignKey
ALTER TABLE "esg_water_total" DROP CONSTRAINT "esg_water_total_project_id_fkey";

-- DropForeignKey
ALTER TABLE "file" DROP CONSTRAINT "file_folder_id_fkey";

-- DropForeignKey
ALTER TABLE "file" DROP CONSTRAINT "file_uploaded_by_fkey";

-- DropForeignKey
ALTER TABLE "financial_close" DROP CONSTRAINT "financial_close_project_id_fkey";

-- DropForeignKey
ALTER TABLE "financial_statement_balance_sheet" DROP CONSTRAINT "financial_statement_balance_sheet_project_id_fkey";

-- DropForeignKey
ALTER TABLE "financial_statement_cashflow_statement" DROP CONSTRAINT "financial_statement_cashflow_statement_project_id_fkey";

-- DropForeignKey
ALTER TABLE "financial_statement_profit_loss" DROP CONSTRAINT "financial_statement_profit_loss_project_id_fkey";

-- DropForeignKey
ALTER TABLE "folder" DROP CONSTRAINT "folder_parentId_fkey";

-- DropForeignKey
ALTER TABLE "folder" DROP CONSTRAINT "folder_projectId_fkey";

-- DropForeignKey
ALTER TABLE "general_info" DROP CONSTRAINT "general_info_project_id_fkey";

-- DropForeignKey
ALTER TABLE "governance" DROP CONSTRAINT "governance_project_id_fkey";

-- DropForeignKey
ALTER TABLE "governance_risk_compliance" DROP CONSTRAINT "governance_risk_compliance_project_id_fkey";

-- DropForeignKey
ALTER TABLE "green_energy_production" DROP CONSTRAINT "green_energy_production_project_id_fkey";

-- DropForeignKey
ALTER TABLE "human_capital" DROP CONSTRAINT "human_capital_project_id_fkey";

-- DropForeignKey
ALTER TABLE "human_rights_attachment" DROP CONSTRAINT "human_rights_attachment_project_id_fkey";

-- DropForeignKey
ALTER TABLE "human_rights_case" DROP CONSTRAINT "human_rights_case_project_id_fkey";

-- DropForeignKey
ALTER TABLE "human_rights_overview" DROP CONSTRAINT "human_rights_overview_project_id_fkey";

-- DropForeignKey
ALTER TABLE "indicative_timeline_commercial_operation_date" DROP CONSTRAINT "indicative_timeline_commercial_operation_date_project_id_fkey";

-- DropForeignKey
ALTER TABLE "indicative_timeline_energy_primer" DROP CONSTRAINT "indicative_timeline_energy_primer_project_id_fkey";

-- DropForeignKey
ALTER TABLE "indicative_timeline_financial_close" DROP CONSTRAINT "indicative_timeline_financial_close_project_id_fkey";

-- DropForeignKey
ALTER TABLE "indicative_timeline_jasa_operation_dan_maintenance" DROP CONSTRAINT "indicative_timeline_jasa_operation_dan_maintenance_project_fkey";

-- DropForeignKey
ALTER TABLE "installed_capacity" DROP CONSTRAINT "installed_capacity_project_id_fkey";

-- DropForeignKey
ALTER TABLE "issue" DROP CONSTRAINT "issue_assignee_fkey";

-- DropForeignKey
ALTER TABLE "issue" DROP CONSTRAINT "issue_project_id_fkey";

-- DropForeignKey
ALTER TABLE "issue_colaborators" DROP CONSTRAINT "issue_colaborators_user_id_fkey";

-- DropForeignKey
ALTER TABLE "legal_files" DROP CONSTRAINT "legal_files_folder_id_fkey";

-- DropForeignKey
ALTER TABLE "legal_files" DROP CONSTRAINT "legal_files_user_id_fkey";

-- DropForeignKey
ALTER TABLE "legal_folders" DROP CONSTRAINT "legal_folders_parent_folder_id_fkey";

-- DropForeignKey
ALTER TABLE "legal_folders" DROP CONSTRAINT "legal_folders_user_id_fkey";

-- DropForeignKey
ALTER TABLE "media_project_milestone" DROP CONSTRAINT "media_project_milestone_project_milestone_id_fkey";

-- DropForeignKey
ALTER TABLE "meeting_attachments" DROP CONSTRAINT "meeting_attachments_meeting_id_fkey";

-- DropForeignKey
ALTER TABLE "meetings" DROP CONSTRAINT "meetings_project_id_fkey";

-- DropForeignKey
ALTER TABLE "model_has_permissions" DROP CONSTRAINT "model_has_permissions_permission_id_foreign";

-- DropForeignKey
ALTER TABLE "model_has_roles" DROP CONSTRAINT "model_has_roles_role_id_foreign";

-- DropForeignKey
ALTER TABLE "money_laundering_policy" DROP CONSTRAINT "money_laundering_policy_project_id_fkey";

-- DropForeignKey
ALTER TABLE "money_laundering_policy_attachment" DROP CONSTRAINT "money_laundering_policy_attachment_project_id_fkey";

-- DropForeignKey
ALTER TABLE "occupational_health_and_safety" DROP CONSTRAINT "occupational_health_and_safety_project_id_fkey";

-- DropForeignKey
ALTER TABLE "occupational_health_and_safety_attachment" DROP CONSTRAINT "occupational_health_and_safety_attachment_project_id_fkey";

-- DropForeignKey
ALTER TABLE "penyedia_jasa_operation_dan_maintenance" DROP CONSTRAINT "penyedia_jasa_operation_dan_maintenance_project_id_fkey";

-- DropForeignKey
ALTER TABLE "penyediaan_energy_primer" DROP CONSTRAINT "penyediaan_energy_primer_project_id_fkey";

-- DropForeignKey
ALTER TABLE "periodic_report_free_cashflow_to_equity" DROP CONSTRAINT "periodic_report_free_cashflow_to_equity_project_id_fkey";

-- DropForeignKey
ALTER TABLE "periodic_report_macroeconomic" DROP CONSTRAINT "periodic_report_macroeconomic_project_id_fkey";

-- DropForeignKey
ALTER TABLE "periodic_report_technical_operation_plts" DROP CONSTRAINT "periodic_report_technical_operation_plts_project_id_fkey";

-- DropForeignKey
ALTER TABLE "periodic_report_technical_operation_pltu" DROP CONSTRAINT "periodic_report_technical_operation_pltu_project_id_fkey";

-- DropForeignKey
ALTER TABLE "power_plants" DROP CONSTRAINT "power_plants_project_id_fkey";

-- DropForeignKey
ALTER TABLE "procurement" DROP CONSTRAINT "procurement_project_id_fkey";

-- DropForeignKey
ALTER TABLE "project_attachment" DROP CONSTRAINT "project_attachment_metrics_history_id_fkey";

-- DropForeignKey
ALTER TABLE "project_attachment" DROP CONSTRAINT "project_attachment_project_id_fkey";

-- DropForeignKey
ALTER TABLE "project_costs" DROP CONSTRAINT "project_costs_project_id_fkey";

-- DropForeignKey
ALTER TABLE "project_irr" DROP CONSTRAINT "project_irr_project_id_fkey";

-- DropForeignKey
ALTER TABLE "project_irr" DROP CONSTRAINT "project_irr_updated_by_fkey";

-- DropForeignKey
ALTER TABLE "project_issues" DROP CONSTRAINT "project_issues_project_id_fkey";

-- DropForeignKey
ALTER TABLE "project_metrics_history" DROP CONSTRAINT "project_metrics_history_project_id_fkey";

-- DropForeignKey
ALTER TABLE "project_milestone" DROP CONSTRAINT "project_milestone_project_id_fkey";

-- DropForeignKey
ALTER TABLE "project_plan_timeline" DROP CONSTRAINT "project_plan_timeline_project_id_fkey";

-- DropForeignKey
ALTER TABLE "project_shareholders" DROP CONSTRAINT "project_shareholders_project_id_fkey";

-- DropForeignKey
ALTER TABLE "project_shareholders" DROP CONSTRAINT "project_shareholders_shareholder_id_fkey";

-- DropForeignKey
ALTER TABLE "project_timeline" DROP CONSTRAINT "project_timeline_project_id_fkey";

-- DropForeignKey
ALTER TABLE "project_tkdn" DROP CONSTRAINT "project_tkdn_project_id_fkey";

-- DropForeignKey
ALTER TABLE "project_tkdn" DROP CONSTRAINT "project_tkdn_updated_by_fkey";

-- DropForeignKey
ALTER TABLE "realization" DROP CONSTRAINT "realization_project_id_fkey";

-- DropForeignKey
ALTER TABLE "realization_history" DROP CONSTRAINT "realization_history_project_id_fkey";

-- DropForeignKey
ALTER TABLE "role_has_permissions" DROP CONSTRAINT "role_has_permissions_permission_id_foreign";

-- DropForeignKey
ALTER TABLE "role_has_permissions" DROP CONSTRAINT "role_has_permissions_role_id_foreign";

-- DropForeignKey
ALTER TABLE "role_permissions" DROP CONSTRAINT "role_permissions_permission_id_fkey";

-- DropForeignKey
ALTER TABLE "role_permissions" DROP CONSTRAINT "role_permissions_role_id_fkey";

-- DropForeignKey
ALTER TABLE "shadow_rating" DROP CONSTRAINT "shadow_rating_project_id_fkey";

-- DropForeignKey
ALTER TABLE "shared_permissions" DROP CONSTRAINT "shared_permissions_file_id_fkey";

-- DropForeignKey
ALTER TABLE "shared_permissions" DROP CONSTRAINT "shared_permissions_folder_id_fkey";

-- DropForeignKey
ALTER TABLE "shared_permissions" DROP CONSTRAINT "shared_permissions_shared_with_user_id_fkey";

-- DropForeignKey
ALTER TABLE "social_responsibility" DROP CONSTRAINT "social_responsibility_project_id_fkey";

-- DropForeignKey
ALTER TABLE "tree_planting" DROP CONSTRAINT "tree_planting_project_id_fkey";

-- DropForeignKey
ALTER TABLE "user_groups" DROP CONSTRAINT "user_groups_user_id_fkey";

-- DropForeignKey
ALTER TABLE "user_roles" DROP CONSTRAINT "user_roles_role_id_fkey";

-- DropForeignKey
ALTER TABLE "user_roles" DROP CONSTRAINT "user_roles_user_id_fkey";

-- DropForeignKey
ALTER TABLE "waste_B3" DROP CONSTRAINT "waste_B3_project_id_fkey";

-- DropForeignKey
ALTER TABLE "waste_managed" DROP CONSTRAINT "waste_managed_project_id_fkey";

-- DropForeignKey
ALTER TABLE "waste_management" DROP CONSTRAINT "waste_management_project_id_fkey";

-- DropForeignKey
ALTER TABLE "waste_produced" DROP CONSTRAINT "waste_produced_project_id_fkey";

-- DropForeignKey
ALTER TABLE "whistleblowing_system" DROP CONSTRAINT "whistleblowing_system_project_id_fkey";

-- DropForeignKey
ALTER TABLE "whistleblowing_system_attachment" DROP CONSTRAINT "whistleblowing_system_attachment_project_id_fkey";

-- DropIndex
DROP INDEX "users_username_unique";

-- AlterTable
ALTER TABLE "users" DROP COLUMN "email_verified_at",
DROP COLUMN "full_name",
DROP COLUMN "remember_token",
DROP COLUMN "updated_at",
DROP COLUMN "username",
ADD COLUMN     "avatar_link" TEXT,
ADD COLUMN     "jabatan" TEXT,
ADD COLUMN     "nama" TEXT,
ADD COLUMN     "nik" TEXT,
ADD COLUMN     "role" TEXT,
ADD COLUMN     "supervisor" TEXT,
ALTER COLUMN "email" SET DATA TYPE TEXT,
ALTER COLUMN "password" DROP NOT NULL,
ALTER COLUMN "password" SET DATA TYPE TEXT,
ALTER COLUMN "created_at" SET NOT NULL,
ALTER COLUMN "created_at" SET DEFAULT CURRENT_TIMESTAMP,
ALTER COLUMN "created_at" SET DATA TYPE TIMESTAMP(3);

-- DropTable
DROP TABLE "actual_plan";

-- DropTable
DROP TABLE "actual_plan_date_plan";

-- DropTable
DROP TABLE "actual_plan_info_actual";

-- DropTable
DROP TABLE "actual_plan_info_plan";

-- DropTable
DROP TABLE "actual_plan_procurement";

-- DropTable
DROP TABLE "audit_logs";

-- DropTable
DROP TABLE "cache";

-- DropTable
DROP TABLE "cache_locks";

-- DropTable
DROP TABLE "commercial_operation_date";

-- DropTable
DROP TABLE "community_empowerment";

-- DropTable
DROP TABLE "construction_info";

-- DropTable
DROP TABLE "critical_path";

-- DropTable
DROP TABLE "customer_satisfaction_survey_index";

-- DropTable
DROP TABLE "cyber_security";

-- DropTable
DROP TABLE "cyber_security_attachment";

-- DropTable
DROP TABLE "cyber_security_regen";

-- DropTable
DROP TABLE "development_timeline";

-- DropTable
DROP TABLE "employee";

-- DropTable
DROP TABLE "employee_training";

-- DropTable
DROP TABLE "energy_consumption";

-- DropTable
DROP TABLE "energy_usage";

-- DropTable
DROP TABLE "energy_usage_air";

-- DropTable
DROP TABLE "epc_cost_realization";

-- DropTable
DROP TABLE "epc_cost_realization_detail";

-- DropTable
DROP TABLE "esg_community_empowerment";

-- DropTable
DROP TABLE "esg_employee";

-- DropTable
DROP TABLE "esg_energy_consumption";

-- DropTable
DROP TABLE "esg_energy_reduction";

-- DropTable
DROP TABLE "esg_energy_total";

-- DropTable
DROP TABLE "esg_environment";

-- DropTable
DROP TABLE "esg_governance";

-- DropTable
DROP TABLE "esg_governance_risk_compliance";

-- DropTable
DROP TABLE "esg_human_rights_report";

-- DropTable
DROP TABLE "esg_human_rights_report_attachment";

-- DropTable
DROP TABLE "esg_k_three_violation_report";

-- DropTable
DROP TABLE "esg_k_three_violation_report_attachment";

-- DropTable
DROP TABLE "esg_money_laundering_report";

-- DropTable
DROP TABLE "esg_performance_targets";

-- DropTable
DROP TABLE "esg_performance_targets_pact";

-- DropTable
DROP TABLE "esg_satisfaction";

-- DropTable
DROP TABLE "esg_score";

-- DropTable
DROP TABLE "esg_social";

-- DropTable
DROP TABLE "esg_trees_planted";

-- DropTable
DROP TABLE "esg_waste_generated_b_three";

-- DropTable
DROP TABLE "esg_waste_generated_managed";

-- DropTable
DROP TABLE "esg_waste_generated_produced";

-- DropTable
DROP TABLE "esg_water_consumption";

-- DropTable
DROP TABLE "esg_water_total";

-- DropTable
DROP TABLE "failed_jobs";

-- DropTable
DROP TABLE "file";

-- DropTable
DROP TABLE "financial_close";

-- DropTable
DROP TABLE "financial_statement_balance_sheet";

-- DropTable
DROP TABLE "financial_statement_cashflow_statement";

-- DropTable
DROP TABLE "financial_statement_profit_loss";

-- DropTable
DROP TABLE "folder";

-- DropTable
DROP TABLE "general_info";

-- DropTable
DROP TABLE "governance";

-- DropTable
DROP TABLE "governance_risk_compliance";

-- DropTable
DROP TABLE "green_energy_production";

-- DropTable
DROP TABLE "groups";

-- DropTable
DROP TABLE "human_capital";

-- DropTable
DROP TABLE "human_rights_attachment";

-- DropTable
DROP TABLE "human_rights_case";

-- DropTable
DROP TABLE "human_rights_overview";

-- DropTable
DROP TABLE "indicative_timeline_commercial_operation_date";

-- DropTable
DROP TABLE "indicative_timeline_energy_primer";

-- DropTable
DROP TABLE "indicative_timeline_financial_close";

-- DropTable
DROP TABLE "indicative_timeline_jasa_operation_dan_maintenance";

-- DropTable
DROP TABLE "installed_capacity";

-- DropTable
DROP TABLE "issue";

-- DropTable
DROP TABLE "issue_colaborators";

-- DropTable
DROP TABLE "job_batches";

-- DropTable
DROP TABLE "jobs";

-- DropTable
DROP TABLE "legal_files";

-- DropTable
DROP TABLE "legal_folders";

-- DropTable
DROP TABLE "media_project_milestone";

-- DropTable
DROP TABLE "meeting_attachments";

-- DropTable
DROP TABLE "meetings";

-- DropTable
DROP TABLE "migrations";

-- DropTable
DROP TABLE "model_has_permissions";

-- DropTable
DROP TABLE "model_has_roles";

-- DropTable
DROP TABLE "money_laundering_policy";

-- DropTable
DROP TABLE "money_laundering_policy_attachment";

-- DropTable
DROP TABLE "occupational_health_and_safety";

-- DropTable
DROP TABLE "occupational_health_and_safety_attachment";

-- DropTable
DROP TABLE "password_reset_tokens";

-- DropTable
DROP TABLE "penyedia_jasa_operation_dan_maintenance";

-- DropTable
DROP TABLE "penyediaan_energy_primer";

-- DropTable
DROP TABLE "periodic_report_free_cashflow_to_equity";

-- DropTable
DROP TABLE "periodic_report_macroeconomic";

-- DropTable
DROP TABLE "periodic_report_technical_operation_plts";

-- DropTable
DROP TABLE "periodic_report_technical_operation_pltu";

-- DropTable
DROP TABLE "permissions";

-- DropTable
DROP TABLE "personal_access_tokens";

-- DropTable
DROP TABLE "power_plants";

-- DropTable
DROP TABLE "procurement";

-- DropTable
DROP TABLE "project_attachment";

-- DropTable
DROP TABLE "project_costs";

-- DropTable
DROP TABLE "project_irr";

-- DropTable
DROP TABLE "project_issue";

-- DropTable
DROP TABLE "project_issues";

-- DropTable
DROP TABLE "project_metrics_history";

-- DropTable
DROP TABLE "project_milestone";

-- DropTable
DROP TABLE "project_milestone_detail";

-- DropTable
DROP TABLE "project_plan_timeline";

-- DropTable
DROP TABLE "project_plan_timeline_details";

-- DropTable
DROP TABLE "project_shareholders";

-- DropTable
DROP TABLE "project_timeline";

-- DropTable
DROP TABLE "project_tkdn";

-- DropTable
DROP TABLE "projects";

-- DropTable
DROP TABLE "realization";

-- DropTable
DROP TABLE "realization_history";

-- DropTable
DROP TABLE "role_has_permissions";

-- DropTable
DROP TABLE "role_permissions";

-- DropTable
DROP TABLE "roles";

-- DropTable
DROP TABLE "sessions";

-- DropTable
DROP TABLE "shadow_rating";

-- DropTable
DROP TABLE "shared_permissions";

-- DropTable
DROP TABLE "shareholders";

-- DropTable
DROP TABLE "social_responsibility";

-- DropTable
DROP TABLE "training";

-- DropTable
DROP TABLE "tree_planting";

-- DropTable
DROP TABLE "user_groups";

-- DropTable
DROP TABLE "user_roles";

-- DropTable
DROP TABLE "waste_B3";

-- DropTable
DROP TABLE "waste_managed";

-- DropTable
DROP TABLE "waste_management";

-- DropTable
DROP TABLE "waste_produced";

-- DropTable
DROP TABLE "whistleblowing_system";

-- DropTable
DROP TABLE "whistleblowing_system_attachment";

-- DropEnum
DROP TYPE "Construction_Info_Type";

-- DropEnum
DROP TYPE "FinancialReportType";

-- DropEnum
DROP TYPE "IssuePriority";

-- DropEnum
DROP TYPE "IssueStatus";

-- DropEnum
DROP TYPE "IssueType";

-- DropEnum
DROP TYPE "IssueTypes";

-- DropEnum
DROP TYPE "Metric_Balance_Sheet";

-- DropEnum
DROP TYPE "Metric_Cashflow_Statement";

-- DropEnum
DROP TYPE "Metric_Free_Cashflow_to_Equity";

-- DropEnum
DROP TYPE "Metric_Installed_Capacity";

-- DropEnum
DROP TYPE "Metric_Macroeconomic";

-- DropEnum
DROP TYPE "Metric_Profit_Loss";

-- DropEnum
DROP TYPE "Metric_Technical_Operational_Plts";

-- DropEnum
DROP TYPE "Metric_Technical_Operational_Pltu";

-- DropEnum
DROP TYPE "PeriodicReportType";

-- DropEnum
DROP TYPE "PowerPlantType";

-- DropEnum
DROP TYPE "ProjectPhase";

-- DropEnum
DROP TYPE "TahapanCommissioning";

-- DropEnum
DROP TYPE "TahapanFinancialClose";

-- DropEnum
DROP TYPE "TahapanProsesEnergiPrimer";

-- DropEnum
DROP TYPE "TahapanProsesOandM";

-- DropEnum
DROP TYPE "Unit_Installed_Capacity";

-- DropEnum
DROP TYPE "Unit_Macroeconomic";

-- DropEnum
DROP TYPE "Unit_Technical_Operational_Plts";

-- DropEnum
DROP TYPE "Unit_Technical_Operational_Pltu";

-- DropEnum
DROP TYPE "energy_usage_source";

-- DropEnum
DROP TYPE "esg_type_gender";

-- DropEnum
DROP TYPE "typeActualPlan";

-- DropEnum
DROP TYPE "type_community_empowerment";

-- DropEnum
DROP TYPE "type_gender";

-- DropEnum
DROP TYPE "type_realization";

-- DropEnum
DROP TYPE "type_waste_b3";

-- CreateTable
CREATE TABLE "insentive" (
    "id" TEXT NOT NULL,
    "nik" TEXT,
    "nama" TEXT,
    "jabatan" TEXT,
    "periode_awal" TIMESTAMP(3),
    "periode_akhir" TIMESTAMP(3),
    "customer" TEXT,
    "t_do_dms" TIMESTAMP(3),
    "t_lunas_ar" TIMESTAMP(3),
    "nama_unit" TEXT,
    "poin" INTEGER,
    "nilai_per_poin" DOUBLE PRECISION,
    "jumlah_insentif" DOUBLE PRECISION,
    "contest_insentif" DOUBLE PRECISION,
    "sbi_insentif" DOUBLE PRECISION,
    "status" TEXT,
    "user_profile_id" INTEGER,

    CONSTRAINT "insentive_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "insentive" ADD CONSTRAINT "insentive_user_profile_id_fkey" FOREIGN KEY ("user_profile_id") REFERENCES "users"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- RenameIndex
ALTER INDEX "users_email_unique" RENAME TO "users_email_key";
