/*sql server OMOP CDM Indices
  There are no unique indices created because it is assumed that the primary key constraints have been run prior to
  implementing indices.
*/

/************************
Standardized clinical data
************************/
CREATE CLUSTERED INDEX idx_person_id ON $(CDM_DATABASE).$(CDM_SCHEMA).person (person_id ASC);
CREATE INDEX idx_gender ON $(CDM_DATABASE).$(CDM_SCHEMA).person (gender_concept_id ASC);
CREATE CLUSTERED INDEX idx_observation_period_id_1 ON $(CDM_DATABASE).$(CDM_SCHEMA).observation_period (person_id ASC);
CREATE CLUSTERED INDEX idx_visit_person_id_1 ON $(CDM_DATABASE).$(CDM_SCHEMA).visit_occurrence (person_id ASC);
CREATE INDEX idx_visit_concept_id_1 ON $(CDM_DATABASE).$(CDM_SCHEMA).visit_occurrence (visit_concept_id ASC);
CREATE CLUSTERED INDEX idx_visit_det_person_id_1 ON $(CDM_DATABASE).$(CDM_SCHEMA).visit_detail (person_id ASC);
CREATE INDEX idx_visit_det_concept_id_1 ON $(CDM_DATABASE).$(CDM_SCHEMA).visit_detail (visit_detail_concept_id ASC);
CREATE INDEX idx_visit_det_occ_id ON $(CDM_DATABASE).$(CDM_SCHEMA).visit_detail (visit_occurrence_id ASC);
CREATE CLUSTERED INDEX idx_condition_person_id_1 ON $(CDM_DATABASE).$(CDM_SCHEMA).condition_occurrence (person_id ASC);
CREATE INDEX idx_condition_concept_id_1 ON $(CDM_DATABASE).$(CDM_SCHEMA).condition_occurrence (condition_concept_id ASC);
CREATE INDEX idx_condition_visit_id_1 ON $(CDM_DATABASE).$(CDM_SCHEMA).condition_occurrence (visit_occurrence_id ASC);
CREATE CLUSTERED INDEX idx_drug_person_id_1 ON $(CDM_DATABASE).$(CDM_SCHEMA).drug_exposure (person_id ASC);
CREATE INDEX idx_drug_concept_id_1 ON $(CDM_DATABASE).$(CDM_SCHEMA).drug_exposure (drug_concept_id ASC);
CREATE INDEX idx_drug_visit_id_1 ON $(CDM_DATABASE).$(CDM_SCHEMA).drug_exposure (visit_occurrence_id ASC);
CREATE CLUSTERED INDEX idx_procedure_person_id_1 ON $(CDM_DATABASE).$(CDM_SCHEMA).procedure_occurrence (person_id ASC);
CREATE INDEX idx_procedure_concept_id_1 ON $(CDM_DATABASE).$(CDM_SCHEMA).procedure_occurrence (procedure_concept_id ASC);
CREATE INDEX idx_procedure_visit_id_1 ON $(CDM_DATABASE).$(CDM_SCHEMA).procedure_occurrence (visit_occurrence_id ASC);
CREATE CLUSTERED INDEX idx_device_person_id_1 ON $(CDM_DATABASE).$(CDM_SCHEMA).device_exposure (person_id ASC);
CREATE INDEX idx_device_concept_id_1 ON $(CDM_DATABASE).$(CDM_SCHEMA).device_exposure (device_concept_id ASC);
CREATE INDEX idx_device_visit_id_1 ON $(CDM_DATABASE).$(CDM_SCHEMA).device_exposure (visit_occurrence_id ASC);
CREATE CLUSTERED INDEX idx_measurement_person_id_1 ON $(CDM_DATABASE).$(CDM_SCHEMA).measurement (person_id ASC);
CREATE INDEX idx_measurement_concept_id_1 ON $(CDM_DATABASE).$(CDM_SCHEMA).measurement (measurement_concept_id ASC);
CREATE INDEX idx_measurement_visit_id_1 ON $(CDM_DATABASE).$(CDM_SCHEMA).measurement (visit_occurrence_id ASC);
CREATE CLUSTERED INDEX idx_observation_person_id_1 ON $(CDM_DATABASE).$(CDM_SCHEMA).observation (person_id ASC);
CREATE INDEX idx_observation_concept_id_1 ON $(CDM_DATABASE).$(CDM_SCHEMA).observation (observation_concept_id ASC);
CREATE INDEX idx_observation_visit_id_1 ON $(CDM_DATABASE).$(CDM_SCHEMA).observation (visit_occurrence_id ASC);
CREATE CLUSTERED INDEX idx_death_person_id_1 ON $(CDM_DATABASE).$(CDM_SCHEMA).death (person_id ASC);
CREATE CLUSTERED INDEX idx_note_person_id_1 ON $(CDM_DATABASE).$(CDM_SCHEMA).note (person_id ASC);
CREATE INDEX idx_note_concept_id_1 ON $(CDM_DATABASE).$(CDM_SCHEMA).note (note_type_concept_id ASC);
CREATE INDEX idx_note_visit_id_1 ON $(CDM_DATABASE).$(CDM_SCHEMA).note (visit_occurrence_id ASC);
CREATE CLUSTERED INDEX idx_note_nlp_note_id_1 ON $(CDM_DATABASE).$(CDM_SCHEMA).note_nlp (note_id ASC);
CREATE INDEX idx_note_nlp_concept_id_1 ON $(CDM_DATABASE).$(CDM_SCHEMA).note_nlp (note_nlp_concept_id ASC);
CREATE CLUSTERED INDEX idx_specimen_person_id_1 ON $(CDM_DATABASE).$(CDM_SCHEMA).specimen (person_id ASC);
CREATE INDEX idx_specimen_concept_id_1 ON $(CDM_DATABASE).$(CDM_SCHEMA).specimen (specimen_concept_id ASC);
CREATE INDEX idx_fact_relationship_id1 ON $(CDM_DATABASE).$(CDM_SCHEMA).fact_relationship (domain_concept_id_1 ASC);
CREATE INDEX idx_fact_relationship_id2 ON $(CDM_DATABASE).$(CDM_SCHEMA).fact_relationship (domain_concept_id_2 ASC);
CREATE INDEX idx_fact_relationship_id3 ON $(CDM_DATABASE).$(CDM_SCHEMA).fact_relationship (relationship_concept_id ASC);
/************************
Standardized health system data
************************/
CREATE CLUSTERED INDEX idx_location_id_1 ON $(CDM_DATABASE).$(CDM_SCHEMA).location (location_id ASC);
CREATE CLUSTERED INDEX idx_care_site_id_1 ON $(CDM_DATABASE).$(CDM_SCHEMA).care_site (care_site_id ASC);
CREATE CLUSTERED INDEX idx_provider_id_1 ON $(CDM_DATABASE).$(CDM_SCHEMA).provider (provider_id ASC);
/************************
Standardized health economics
************************/
CREATE CLUSTERED INDEX idx_period_person_id_1 ON $(CDM_DATABASE).$(CDM_SCHEMA).payer_plan_period (person_id ASC);
CREATE INDEX idx_cost_event_id  ON $(CDM_DATABASE).$(CDM_SCHEMA).cost (cost_event_id ASC);
/************************
Standardized derived elements
************************/
CREATE CLUSTERED INDEX idx_drug_era_person_id_1 ON $(CDM_DATABASE).$(CDM_SCHEMA).drug_era (person_id ASC);
CREATE INDEX idx_drug_era_concept_id_1 ON $(CDM_DATABASE).$(CDM_SCHEMA).drug_era (drug_concept_id ASC);
CREATE CLUSTERED INDEX idx_dose_era_person_id_1 ON $(CDM_DATABASE).$(CDM_SCHEMA).dose_era (person_id ASC);
CREATE INDEX idx_dose_era_concept_id_1 ON $(CDM_DATABASE).$(CDM_SCHEMA).dose_era (drug_concept_id ASC);
CREATE CLUSTERED INDEX idx_condition_era_person_id_1 ON $(CDM_DATABASE).$(CDM_SCHEMA).condition_era (person_id ASC);
CREATE INDEX idx_condition_era_concept_id_1 ON $(CDM_DATABASE).$(CDM_SCHEMA).condition_era (condition_concept_id ASC);
/**************************
Standardized meta-data
***************************/
CREATE CLUSTERED INDEX idx_metadata_concept_id_1 ON $(CDM_DATABASE).$(CDM_SCHEMA).metadata (metadata_concept_id ASC);

-- Additional vocabulary indexes intentionally omitted because vocabulary tables are managed separately.
-- Additional v6.0 indices
--CREATE CLUSTERED INDEX idx_survey_person_id_1 ON $(CDM_DATABASE).$(CDM_SCHEMA).survey_conduct (person_id ASC);
--CREATE CLUSTERED INDEX idx_episode_person_id_1 ON $(CDM_DATABASE).$(CDM_SCHEMA).episode (person_id ASC);
--CREATE INDEX idx_episode_concept_id_1 ON $(CDM_DATABASE).$(CDM_SCHEMA).episode (episode_concept_id ASC);
--CREATE CLUSTERED INDEX idx_episode_event_id_1 ON $(CDM_DATABASE).$(CDM_SCHEMA).episode_event (episode_id ASC);
--CREATE INDEX idx_ee_field_concept_id_1 ON $(CDM_DATABASE).$(CDM_SCHEMA).episode_event (event_field_concept_id ASC);
