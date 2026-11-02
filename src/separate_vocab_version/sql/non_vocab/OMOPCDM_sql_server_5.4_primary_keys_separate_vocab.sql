--sql server CDM Primary Key Constraints for OMOP Common Data Model 5.4
-- Vocabulary-table primary keys are intentionally omitted because the vocabulary schema is managed separately.
ALTER TABLE $(CDM_DATABASE).$(CDM_SCHEMA).person ADD CONSTRAINT xpk_person PRIMARY KEY NONCLUSTERED (person_id);
ALTER TABLE $(CDM_DATABASE).$(CDM_SCHEMA).observation_period ADD CONSTRAINT xpk_observation_period PRIMARY KEY NONCLUSTERED (observation_period_id);
ALTER TABLE $(CDM_DATABASE).$(CDM_SCHEMA).visit_occurrence ADD CONSTRAINT xpk_visit_occurrence PRIMARY KEY NONCLUSTERED (visit_occurrence_id);
ALTER TABLE $(CDM_DATABASE).$(CDM_SCHEMA).visit_detail ADD CONSTRAINT xpk_visit_detail PRIMARY KEY NONCLUSTERED (visit_detail_id);
ALTER TABLE $(CDM_DATABASE).$(CDM_SCHEMA).condition_occurrence ADD CONSTRAINT xpk_condition_occurrence PRIMARY KEY NONCLUSTERED (condition_occurrence_id);
ALTER TABLE $(CDM_DATABASE).$(CDM_SCHEMA).drug_exposure ADD CONSTRAINT xpk_drug_exposure PRIMARY KEY NONCLUSTERED (drug_exposure_id);
ALTER TABLE $(CDM_DATABASE).$(CDM_SCHEMA).procedure_occurrence ADD CONSTRAINT xpk_procedure_occurrence PRIMARY KEY NONCLUSTERED (procedure_occurrence_id);
ALTER TABLE $(CDM_DATABASE).$(CDM_SCHEMA).device_exposure ADD CONSTRAINT xpk_device_exposure PRIMARY KEY NONCLUSTERED (device_exposure_id);
ALTER TABLE $(CDM_DATABASE).$(CDM_SCHEMA).measurement ADD CONSTRAINT xpk_measurement PRIMARY KEY NONCLUSTERED (measurement_id);
ALTER TABLE $(CDM_DATABASE).$(CDM_SCHEMA).observation ADD CONSTRAINT xpk_observation PRIMARY KEY NONCLUSTERED (observation_id);
ALTER TABLE $(CDM_DATABASE).$(CDM_SCHEMA).note ADD CONSTRAINT xpk_note PRIMARY KEY NONCLUSTERED (note_id);
ALTER TABLE $(CDM_DATABASE).$(CDM_SCHEMA).note_nlp ADD CONSTRAINT xpk_note_nlp PRIMARY KEY NONCLUSTERED (note_nlp_id);
ALTER TABLE $(CDM_DATABASE).$(CDM_SCHEMA).specimen ADD CONSTRAINT xpk_specimen PRIMARY KEY NONCLUSTERED (specimen_id);
ALTER TABLE $(CDM_DATABASE).$(CDM_SCHEMA).location ADD CONSTRAINT xpk_location PRIMARY KEY NONCLUSTERED (location_id);
ALTER TABLE $(CDM_DATABASE).$(CDM_SCHEMA).care_site ADD CONSTRAINT xpk_care_site PRIMARY KEY NONCLUSTERED (care_site_id);
ALTER TABLE $(CDM_DATABASE).$(CDM_SCHEMA).provider ADD CONSTRAINT xpk_provider PRIMARY KEY NONCLUSTERED (provider_id);
ALTER TABLE $(CDM_DATABASE).$(CDM_SCHEMA).payer_plan_period ADD CONSTRAINT xpk_payer_plan_period PRIMARY KEY NONCLUSTERED (payer_plan_period_id);
ALTER TABLE $(CDM_DATABASE).$(CDM_SCHEMA).cost ADD CONSTRAINT xpk_cost PRIMARY KEY NONCLUSTERED (cost_id);
ALTER TABLE $(CDM_DATABASE).$(CDM_SCHEMA).drug_era ADD CONSTRAINT xpk_drug_era PRIMARY KEY NONCLUSTERED (drug_era_id);
ALTER TABLE $(CDM_DATABASE).$(CDM_SCHEMA).dose_era ADD CONSTRAINT xpk_dose_era PRIMARY KEY NONCLUSTERED (dose_era_id);
ALTER TABLE $(CDM_DATABASE).$(CDM_SCHEMA).condition_era ADD CONSTRAINT xpk_condition_era PRIMARY KEY NONCLUSTERED (condition_era_id);
ALTER TABLE $(CDM_DATABASE).$(CDM_SCHEMA).episode ADD CONSTRAINT xpk_episode PRIMARY KEY NONCLUSTERED (episode_id);
ALTER TABLE $(CDM_DATABASE).$(CDM_SCHEMA).metadata ADD CONSTRAINT xpk_metadata PRIMARY KEY NONCLUSTERED (metadata_id);
