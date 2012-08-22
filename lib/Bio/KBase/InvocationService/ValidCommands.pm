#
# This module is automatically generated by the gen-valid-commands.pl script
#


package Bio::KBase::InvocationService::ValidCommands;

use strict;

require Exporter;

our @ISA = qw(Exporter);
our @EXPORT_OK = qw(valid_commands command_groups);

our @command_groups = (
   { name => 'modeling_scripts', title => 'Modeling scripts', items => [
	{ cmd => 'exchangeFormat_to_gapfillingFormulation', link => '' },
	{ cmd => 'exchangeformat_to_fbamodel', link => '' },
	{ cmd => 'fbamodel_to_exchangeformat', link => '' },
	{ cmd => 'fbamodel_to_html', link => '' },
	{ cmd => 'fbamodel_to_sbml', link => '' },
	{ cmd => 'gapfill_fbamodel', link => '' },
	{ cmd => 'gapfillingFormulation_to_exchangeFormat', link => '' },
	{ cmd => 'genome_to_fbamodel', link => '' },
	{ cmd => 'get_gapfilling_formulation', link => '' },
	{ cmd => 'runfba', link => '' },
   ]},
   { name => 'scripts', title => 'CDMI Scripts', items => [
	{ cmd => 'all_roles_used_in_models', link => '' },
	{ cmd => 'all_roles_used_in_models_and_subsystems', link => '' },
	{ cmd => 'alleles_to_bp_locs', link => '' },
	{ cmd => 'alleles_to_traits', link => '' },
	{ cmd => 'atomic_regulons_to_fids', link => '' },
	{ cmd => 'close_genomes', link => '' },
	{ cmd => 'co_occurrence_evidence', link => '' },
	{ cmd => 'complexes_to_complex_data', link => '' },
	{ cmd => 'complexes_to_roles', link => '' },
	{ cmd => 'contigs_to_lengths', link => '' },
	{ cmd => 'contigs_to_md5s', link => '' },
	{ cmd => 'contigs_to_sequences', link => '' },
	{ cmd => 'corresponds', link => '' },
	{ cmd => 'dump_relationship', link => '' },
	{ cmd => 'equiv_sequence_assertions', link => '' },
	{ cmd => 'ermodel_to_text', link => '' },
	{ cmd => 'fids_to_annotations', link => '' },
	{ cmd => 'fids_to_atomic_regulons', link => '' },
	{ cmd => 'fids_to_co_occurring_fids', link => '' },
	{ cmd => 'fids_to_coexpressed_fids', link => '' },
	{ cmd => 'fids_to_dna_sequences', link => '' },
	{ cmd => 'fids_to_feature_data', link => '' },
	{ cmd => 'fids_to_functions', link => '' },
	{ cmd => 'fids_to_genomes', link => '' },
	{ cmd => 'fids_to_literature', link => '' },
	{ cmd => 'fids_to_locations', link => '' },
	{ cmd => 'fids_to_protein_families', link => '' },
	{ cmd => 'fids_to_protein_sequences', link => '' },
	{ cmd => 'fids_to_proteins', link => '' },
	{ cmd => 'fids_to_regulon_data', link => '' },
	{ cmd => 'fids_to_roles', link => '' },
	{ cmd => 'fids_to_subsystem_data', link => '' },
	{ cmd => 'fids_to_subsystems', link => '' },
	{ cmd => 'genomes_to_contigs', link => '' },
	{ cmd => 'genomes_to_fids', link => '' },
	{ cmd => 'genomes_to_genome_data', link => '' },
	{ cmd => 'genomes_to_md5s', link => '' },
	{ cmd => 'genomes_to_subsystems', link => '' },
	{ cmd => 'genomes_to_taxonomies', link => '' },
	{ cmd => 'get_abundance_profile', link => '' },
	{ cmd => 'locations_to_dna_sequences', link => '' },
	{ cmd => 'locations_to_fids', link => '' },
	{ cmd => 'md5s_to_genomes', link => '' },
	{ cmd => 'otu_members', link => '' },
	{ cmd => 'ous_with_trait', link => '' },
	{ cmd => 'protein_families_to_co_occurring_families', link => '' },
	{ cmd => 'protein_families_to_fids', link => '' },
	{ cmd => 'protein_families_to_functions', link => '' },
	{ cmd => 'protein_families_to_proteins', link => '' },
	{ cmd => 'proteins_to_fids', link => '' },
	{ cmd => 'proteins_to_functions', link => '' },
	{ cmd => 'proteins_to_literature', link => '' },
	{ cmd => 'proteins_to_protein_families', link => '' },
	{ cmd => 'proteins_to_roles', link => '' },
	{ cmd => 'proteins_to_sequences', link => '' },
	{ cmd => 'reaction_strings', link => '' },
	{ cmd => 'reactions_to_complexes', link => '' },
	{ cmd => 'region_to_alleles', link => '' },
	{ cmd => 'region_to_fids', link => '' },
	{ cmd => 'regulons_to_fids', link => '' },
	{ cmd => 'representative', link => '' },
	{ cmd => 'representative_sequences', link => '' },
	{ cmd => 'roles_to_complexes', link => '' },
	{ cmd => 'roles_to_fids', link => '' },
	{ cmd => 'roles_to_protein_families', link => '' },
	{ cmd => 'roles_to_proteins', link => '' },
	{ cmd => 'roles_to_subsystems', link => '' },
	{ cmd => 'subsystems_to_fids', link => '' },
	{ cmd => 'subsystems_to_genomes', link => '' },
	{ cmd => 'subsystems_to_roles', link => '' },
	{ cmd => 'subsystems_to_spreadsheets', link => '' },
	{ cmd => 'text_search', link => '' },
	{ cmd => 'traits_to_alleles', link => '' },
   ]},
   { name => 'anno_scripts', title => 'Annotation service scripts', items => [
	{ cmd => 'a_and_b', link => '' },
	{ cmd => 'a_not_b', link => '' },
	{ cmd => 'annotate_genome', link => '' },
	{ cmd => 'assign_functions_to_CDSs', link => '' },
	{ cmd => 'call_CDSs', link => '' },
	{ cmd => 'call_CDSs_by_glimmer', link => '' },
	{ cmd => 'call_CDSs_by_projection', link => '' },
	{ cmd => 'call_RNAs', link => '' },
	{ cmd => 'call_pyrrolysoproteins', link => '' },
	{ cmd => 'call_selenoproteins', link => '' },
	{ cmd => 'cluster_objects', link => '' },
	{ cmd => 'cs_to_genome', link => '' },
	{ cmd => 'fasta_to_genome', link => '' },
	{ cmd => 'file_to_spreadsheet', link => '' },
	{ cmd => 'genomeTO_strep_pneumo_repeats', link => '' },
	{ cmd => 'genomeTO_strep_suis_repeats', link => '' },
	{ cmd => 'genomeTO_to_coding_regions', link => '' },
	{ cmd => 'genomeTO_to_feature_data', link => '' },
	{ cmd => 'genomeTO_to_html', link => '' },
	{ cmd => 'genomeTO_to_reconstructionTO', link => '' },
	{ cmd => 'merge_features', link => '' },
	{ cmd => 'reconstructionTO_to_roles', link => '' },
	{ cmd => 'reconstructionTO_to_subsystems', link => '' },
	{ cmd => 'regions_around', link => '' },
	{ cmd => 'rel2tabs', link => '' },
	{ cmd => 'sort_by_id', link => '' },
	{ cmd => 'sort_by_loc', link => '' },
	{ cmd => 'tabs2rel', link => '' },
	{ cmd => 'pneumococcal_repeat_annotation.pl', link => '' },
	{ cmd => 'suis_repeat_annotation.pl', link => '' },
   ]},
   { name => 'er_scripts', title => 'Entity Relationship Scripts', items => [
	{ cmd => 'all_entities_AlignmentTree', link => '' },
	{ cmd => 'all_entities_AlleleFrequency', link => '' },
	{ cmd => 'all_entities_Annotation', link => '' },
	{ cmd => 'all_entities_Assay', link => '' },
	{ cmd => 'all_entities_AtomicRegulon', link => '' },
	{ cmd => 'all_entities_Attribute', link => '' },
	{ cmd => 'all_entities_Biomass', link => '' },
	{ cmd => 'all_entities_BiomassCompound', link => '' },
	{ cmd => 'all_entities_Compartment', link => '' },
	{ cmd => 'all_entities_Complex', link => '' },
	{ cmd => 'all_entities_Compound', link => '' },
	{ cmd => 'all_entities_Contig', link => '' },
	{ cmd => 'all_entities_ContigChunk', link => '' },
	{ cmd => 'all_entities_ContigSequence', link => '' },
	{ cmd => 'all_entities_CoregulatedSet', link => '' },
	{ cmd => 'all_entities_Diagram', link => '' },
	{ cmd => 'all_entities_EcNumber', link => '' },
	{ cmd => 'all_entities_Experiment', link => '' },
	{ cmd => 'all_entities_Family', link => '' },
	{ cmd => 'all_entities_Feature', link => '' },
	{ cmd => 'all_entities_Genome', link => '' },
	{ cmd => 'all_entities_Identifier', link => '' },
	{ cmd => 'all_entities_Locality', link => '' },
	{ cmd => 'all_entities_Media', link => '' },
	{ cmd => 'all_entities_Model', link => '' },
	{ cmd => 'all_entities_ModelCompartment', link => '' },
	{ cmd => 'all_entities_OTU', link => '' },
	{ cmd => 'all_entities_ObservationalUnit', link => '' },
	{ cmd => 'all_entities_PairSet', link => '' },
	{ cmd => 'all_entities_Pairing', link => '' },
	{ cmd => 'all_entities_ProbeSet', link => '' },
	{ cmd => 'all_entities_ProteinSequence', link => '' },
	{ cmd => 'all_entities_Publication', link => '' },
	{ cmd => 'all_entities_Reaction', link => '' },
	{ cmd => 'all_entities_ReactionRule', link => '' },
	{ cmd => 'all_entities_Reagent', link => '' },
	{ cmd => 'all_entities_Requirement', link => '' },
	{ cmd => 'all_entities_Role', link => '' },
	{ cmd => 'all_entities_SSCell', link => '' },
	{ cmd => 'all_entities_SSRow', link => '' },
	{ cmd => 'all_entities_Scenario', link => '' },
	{ cmd => 'all_entities_Source', link => '' },
	{ cmd => 'all_entities_StudyExperiment', link => '' },
	{ cmd => 'all_entities_Subsystem', link => '' },
	{ cmd => 'all_entities_SubsystemClass', link => '' },
	{ cmd => 'all_entities_TaxonomicGrouping', link => '' },
	{ cmd => 'all_entities_Trait', link => '' },
	{ cmd => 'all_entities_Variant', link => '' },
	{ cmd => 'all_entities_Variation', link => '' },
	{ cmd => 'get_entity_AlignmentTree', link => '' },
	{ cmd => 'get_entity_AlleleFrequency', link => '' },
	{ cmd => 'get_entity_Annotation', link => '' },
	{ cmd => 'get_entity_Assay', link => '' },
	{ cmd => 'get_entity_AtomicRegulon', link => '' },
	{ cmd => 'get_entity_Attribute', link => '' },
	{ cmd => 'get_entity_Biomass', link => '' },
	{ cmd => 'get_entity_BiomassCompound', link => '' },
	{ cmd => 'get_entity_Compartment', link => '' },
	{ cmd => 'get_entity_Complex', link => '' },
	{ cmd => 'get_entity_Compound', link => '' },
	{ cmd => 'get_entity_Contig', link => '' },
	{ cmd => 'get_entity_ContigChunk', link => '' },
	{ cmd => 'get_entity_ContigSequence', link => '' },
	{ cmd => 'get_entity_CoregulatedSet', link => '' },
	{ cmd => 'get_entity_Diagram', link => '' },
	{ cmd => 'get_entity_EcNumber', link => '' },
	{ cmd => 'get_entity_Experiment', link => '' },
	{ cmd => 'get_entity_Family', link => '' },
	{ cmd => 'get_entity_Feature', link => '' },
	{ cmd => 'get_entity_Genome', link => '' },
	{ cmd => 'get_entity_Identifier', link => '' },
	{ cmd => 'get_entity_Locality', link => '' },
	{ cmd => 'get_entity_Media', link => '' },
	{ cmd => 'get_entity_Model', link => '' },
	{ cmd => 'get_entity_ModelCompartment', link => '' },
	{ cmd => 'get_entity_OTU', link => '' },
	{ cmd => 'get_entity_ObservationalUnit', link => '' },
	{ cmd => 'get_entity_PairSet', link => '' },
	{ cmd => 'get_entity_Pairing', link => '' },
	{ cmd => 'get_entity_ProbeSet', link => '' },
	{ cmd => 'get_entity_ProteinSequence', link => '' },
	{ cmd => 'get_entity_Publication', link => '' },
	{ cmd => 'get_entity_Reaction', link => '' },
	{ cmd => 'get_entity_ReactionRule', link => '' },
	{ cmd => 'get_entity_Reagent', link => '' },
	{ cmd => 'get_entity_Requirement', link => '' },
	{ cmd => 'get_entity_Role', link => '' },
	{ cmd => 'get_entity_SSCell', link => '' },
	{ cmd => 'get_entity_SSRow', link => '' },
	{ cmd => 'get_entity_Scenario', link => '' },
	{ cmd => 'get_entity_Source', link => '' },
	{ cmd => 'get_entity_StudyExperiment', link => '' },
	{ cmd => 'get_entity_Subsystem', link => '' },
	{ cmd => 'get_entity_SubsystemClass', link => '' },
	{ cmd => 'get_entity_TaxonomicGrouping', link => '' },
	{ cmd => 'get_entity_Trait', link => '' },
	{ cmd => 'get_entity_Variant', link => '' },
	{ cmd => 'get_entity_Variation', link => '' },
	{ cmd => 'get_relationship_AffectsLevelOf', link => '' },
	{ cmd => 'get_relationship_Aligns', link => '' },
	{ cmd => 'get_relationship_Annotates', link => '' },
	{ cmd => 'get_relationship_Asserts', link => '' },
	{ cmd => 'get_relationship_AssertsFunctionFor', link => '' },
	{ cmd => 'get_relationship_Comprises', link => '' },
	{ cmd => 'get_relationship_Concerns', link => '' },
	{ cmd => 'get_relationship_Contains', link => '' },
	{ cmd => 'get_relationship_Controls', link => '' },
	{ cmd => 'get_relationship_DefinedBy', link => '' },
	{ cmd => 'get_relationship_Describes', link => '' },
	{ cmd => 'get_relationship_Determines', link => '' },
	{ cmd => 'get_relationship_DeterminesFunctionOf', link => '' },
	{ cmd => 'get_relationship_Displays', link => '' },
	{ cmd => 'get_relationship_Encompasses', link => '' },
	{ cmd => 'get_relationship_Formulated', link => '' },
	{ cmd => 'get_relationship_GeneratedLevelsFor', link => '' },
	{ cmd => 'get_relationship_HadResultsProducedBy', link => '' },
	{ cmd => 'get_relationship_HasAsExemplar', link => '' },
	{ cmd => 'get_relationship_HasAsSequence', link => '' },
	{ cmd => 'get_relationship_HasAsTerminus', link => '' },
	{ cmd => 'get_relationship_HasAssertedFunctionFrom', link => '' },
	{ cmd => 'get_relationship_HasAssertionFrom', link => '' },
	{ cmd => 'get_relationship_HasCompoundAliasFrom', link => '' },
	{ cmd => 'get_relationship_HasCoregulationWith', link => '' },
	{ cmd => 'get_relationship_HasDefaultLocation', link => '' },
	{ cmd => 'get_relationship_HasFunctional', link => '' },
	{ cmd => 'get_relationship_HasIndicatedSignalFrom', link => '' },
	{ cmd => 'get_relationship_HasLevelsFrom', link => '' },
	{ cmd => 'get_relationship_HasMember', link => '' },
	{ cmd => 'get_relationship_HasParticipant', link => '' },
	{ cmd => 'get_relationship_HasPresenceOf', link => '' },
	{ cmd => 'get_relationship_HasProposedLocationIn', link => '' },
	{ cmd => 'get_relationship_HasProteinMember', link => '' },
	{ cmd => 'get_relationship_HasReactionAliasFrom', link => '' },
	{ cmd => 'get_relationship_HasRealLocationIn', link => '' },
	{ cmd => 'get_relationship_HasRepresentativeOf', link => '' },
	{ cmd => 'get_relationship_HasResultsFor', link => '' },
	{ cmd => 'get_relationship_HasResultsIn', link => '' },
	{ cmd => 'get_relationship_HasRole', link => '' },
	{ cmd => 'get_relationship_HasSection', link => '' },
	{ cmd => 'get_relationship_HasStep', link => '' },
	{ cmd => 'get_relationship_HasTrait', link => '' },
	{ cmd => 'get_relationship_HasUnits', link => '' },
	{ cmd => 'get_relationship_HasUsage', link => '' },
	{ cmd => 'get_relationship_HasValueFor', link => '' },
	{ cmd => 'get_relationship_HasValueIn', link => '' },
	{ cmd => 'get_relationship_HasVariant', link => '' },
	{ cmd => 'get_relationship_HasVariation', link => '' },
	{ cmd => 'get_relationship_HasVariationIn', link => '' },
	{ cmd => 'get_relationship_Impacts', link => '' },
	{ cmd => 'get_relationship_Implements', link => '' },
	{ cmd => 'get_relationship_Imported', link => '' },
	{ cmd => 'get_relationship_Includes', link => '' },
	{ cmd => 'get_relationship_IncludesPart', link => '' },
	{ cmd => 'get_relationship_IncludesPartOf', link => '' },
	{ cmd => 'get_relationship_IndicatedLevelsFor', link => '' },
	{ cmd => 'get_relationship_IndicatesSignalFor', link => '' },
	{ cmd => 'get_relationship_Involves', link => '' },
	{ cmd => 'get_relationship_IsARequirementIn', link => '' },
	{ cmd => 'get_relationship_IsARequirementOf', link => '' },
	{ cmd => 'get_relationship_IsATopicOf', link => '' },
	{ cmd => 'get_relationship_IsAffectedIn', link => '' },
	{ cmd => 'get_relationship_IsAlignedBy', link => '' },
	{ cmd => 'get_relationship_IsAlignedIn', link => '' },
	{ cmd => 'get_relationship_IsAlignmentFor', link => '' },
	{ cmd => 'get_relationship_IsAnnotatedBy', link => '' },
	{ cmd => 'get_relationship_IsAssayOf', link => '' },
	{ cmd => 'get_relationship_IsAssayedBy', link => '' },
	{ cmd => 'get_relationship_IsBindingSiteFor', link => '' },
	{ cmd => 'get_relationship_IsBoundBy', link => '' },
	{ cmd => 'get_relationship_IsClassFor', link => '' },
	{ cmd => 'get_relationship_IsCollectedInto', link => '' },
	{ cmd => 'get_relationship_IsCollectionOf', link => '' },
	{ cmd => 'get_relationship_IsComponentOf', link => '' },
	{ cmd => 'get_relationship_IsComposedOf', link => '' },
	{ cmd => 'get_relationship_IsComprisedOf', link => '' },
	{ cmd => 'get_relationship_IsConfiguredBy', link => '' },
	{ cmd => 'get_relationship_IsConsistentTo', link => '' },
	{ cmd => 'get_relationship_IsConsistentWith', link => '' },
	{ cmd => 'get_relationship_IsContainedIn', link => '' },
	{ cmd => 'get_relationship_IsControlledUsing', link => '' },
	{ cmd => 'get_relationship_IsCoregulatedWith', link => '' },
	{ cmd => 'get_relationship_IsCoupledTo', link => '' },
	{ cmd => 'get_relationship_IsCoupledWith', link => '' },
	{ cmd => 'get_relationship_IsDefaultFor', link => '' },
	{ cmd => 'get_relationship_IsDefaultLocationOf', link => '' },
	{ cmd => 'get_relationship_IsDescribedBy', link => '' },
	{ cmd => 'get_relationship_IsDeterminedBy', link => '' },
	{ cmd => 'get_relationship_IsDisplayedOn', link => '' },
	{ cmd => 'get_relationship_IsDividedInto', link => '' },
	{ cmd => 'get_relationship_IsDivisionOf', link => '' },
	{ cmd => 'get_relationship_IsEncompassedIn', link => '' },
	{ cmd => 'get_relationship_IsExemplarOf', link => '' },
	{ cmd => 'get_relationship_IsFamilyFor', link => '' },
	{ cmd => 'get_relationship_IsFormedInto', link => '' },
	{ cmd => 'get_relationship_IsFormedOf', link => '' },
	{ cmd => 'get_relationship_IsFunctionalIn', link => '' },
	{ cmd => 'get_relationship_IsGroupFor', link => '' },
	{ cmd => 'get_relationship_IsImpactedBy', link => '' },
	{ cmd => 'get_relationship_IsImplementedBy', link => '' },
	{ cmd => 'get_relationship_IsInClass', link => '' },
	{ cmd => 'get_relationship_IsInGroup', link => '' },
	{ cmd => 'get_relationship_IsInPair', link => '' },
	{ cmd => 'get_relationship_IsInTaxa', link => '' },
	{ cmd => 'get_relationship_IsIncludedIn', link => '' },
	{ cmd => 'get_relationship_IsInstanceOf', link => '' },
	{ cmd => 'get_relationship_IsInstantiatedBy', link => '' },
	{ cmd => 'get_relationship_IsInvolvedIn', link => '' },
	{ cmd => 'get_relationship_IsLocated', link => '' },
	{ cmd => 'get_relationship_IsLocatedIn', link => '' },
	{ cmd => 'get_relationship_IsLocatedOn', link => '' },
	{ cmd => 'get_relationship_IsLocusFor', link => '' },
	{ cmd => 'get_relationship_IsManagedBy', link => '' },
	{ cmd => 'get_relationship_IsMemberOf', link => '' },
	{ cmd => 'get_relationship_IsModeledBy', link => '' },
	{ cmd => 'get_relationship_IsNamedBy', link => '' },
	{ cmd => 'get_relationship_IsOwnedBy', link => '' },
	{ cmd => 'get_relationship_IsOwnerOf', link => '' },
	{ cmd => 'get_relationship_IsPairOf', link => '' },
	{ cmd => 'get_relationship_IsPartOf', link => '' },
	{ cmd => 'get_relationship_IsParticipationOf', link => '' },
	{ cmd => 'get_relationship_IsPresentIn', link => '' },
	{ cmd => 'get_relationship_IsProjectedOnto', link => '' },
	{ cmd => 'get_relationship_IsProposedLocationOf', link => '' },
	{ cmd => 'get_relationship_IsProteinFor', link => '' },
	{ cmd => 'get_relationship_IsProteinMemberOf', link => '' },
	{ cmd => 'get_relationship_IsRealLocationOf', link => '' },
	{ cmd => 'get_relationship_IsReferencedBy', link => '' },
	{ cmd => 'get_relationship_IsRegulatedIn', link => '' },
	{ cmd => 'get_relationship_IsRegulatedSetOf', link => '' },
	{ cmd => 'get_relationship_IsRelevantFor', link => '' },
	{ cmd => 'get_relationship_IsRelevantTo', link => '' },
	{ cmd => 'get_relationship_IsRepresentedBy', link => '' },
	{ cmd => 'get_relationship_IsRepresentedIn', link => '' },
	{ cmd => 'get_relationship_IsRequiredBy', link => '' },
	{ cmd => 'get_relationship_IsRoleFor', link => '' },
	{ cmd => 'get_relationship_IsRoleOf', link => '' },
	{ cmd => 'get_relationship_IsRowOf', link => '' },
	{ cmd => 'get_relationship_IsSectionOf', link => '' },
	{ cmd => 'get_relationship_IsSequenceOf', link => '' },
	{ cmd => 'get_relationship_IsShownOn', link => '' },
	{ cmd => 'get_relationship_IsStepOf', link => '' },
	{ cmd => 'get_relationship_IsSubInstanceOf', link => '' },
	{ cmd => 'get_relationship_IsSubclassOf', link => '' },
	{ cmd => 'get_relationship_IsSummarizedBy', link => '' },
	{ cmd => 'get_relationship_IsSuperclassOf', link => '' },
	{ cmd => 'get_relationship_IsTargetOf', link => '' },
	{ cmd => 'get_relationship_IsTaxonomyOf', link => '' },
	{ cmd => 'get_relationship_IsTerminusFor', link => '' },
	{ cmd => 'get_relationship_IsTriggeredBy', link => '' },
	{ cmd => 'get_relationship_IsUsageOf', link => '' },
	{ cmd => 'get_relationship_IsUseOf', link => '' },
	{ cmd => 'get_relationship_IsUsedAs', link => '' },
	{ cmd => 'get_relationship_IsUsedBy', link => '' },
	{ cmd => 'get_relationship_IsUtilizedIn', link => '' },
	{ cmd => 'get_relationship_IsVariantOf', link => '' },
	{ cmd => 'get_relationship_IsVariedIn', link => '' },
	{ cmd => 'get_relationship_Manages', link => '' },
	{ cmd => 'get_relationship_Measures', link => '' },
	{ cmd => 'get_relationship_Models', link => '' },
	{ cmd => 'get_relationship_Names', link => '' },
	{ cmd => 'get_relationship_OperatesIn', link => '' },
	{ cmd => 'get_relationship_Overlaps', link => '' },
	{ cmd => 'get_relationship_ParticipatesAs', link => '' },
	{ cmd => 'get_relationship_ParticipatesIn', link => '' },
	{ cmd => 'get_relationship_ProducedResultsFor', link => '' },
	{ cmd => 'get_relationship_Produces', link => '' },
	{ cmd => 'get_relationship_ProjectsOnto', link => '' },
	{ cmd => 'get_relationship_Provided', link => '' },
	{ cmd => 'get_relationship_ReflectsStateOf', link => '' },
	{ cmd => 'get_relationship_Requires', link => '' },
	{ cmd => 'get_relationship_ResultsIn', link => '' },
	{ cmd => 'get_relationship_RunsByDefaultIn', link => '' },
	{ cmd => 'get_relationship_Shows', link => '' },
	{ cmd => 'get_relationship_Submitted', link => '' },
	{ cmd => 'get_relationship_SummarizedBy', link => '' },
	{ cmd => 'get_relationship_Summarizes', link => '' },
	{ cmd => 'get_relationship_Targets', link => '' },
	{ cmd => 'get_relationship_Triggers', link => '' },
	{ cmd => 'get_relationship_Uses', link => '' },
	{ cmd => 'get_relationship_UsesAliasForCompound', link => '' },
	{ cmd => 'get_relationship_UsesAliasForReaction', link => '' },
	{ cmd => 'get_relationship_UsesReference', link => '' },
	{ cmd => 'get_relationship_Validates', link => '' },
	{ cmd => 'get_relationship_WasDetermiedBy', link => '' },
	{ cmd => 'get_relationship_WasFormulatedBy', link => '' },
	{ cmd => 'get_relationship_WasGeneratedFrom', link => '' },
	{ cmd => 'get_relationship_WasImportedFrom', link => '' },
	{ cmd => 'get_relationship_WasProvidedBy', link => '' },
	{ cmd => 'get_relationship_WasSubmittedBy', link => '' },
	{ cmd => 'query_entity_AlignmentTree', link => '' },
	{ cmd => 'query_entity_AlleleFrequency', link => '' },
	{ cmd => 'query_entity_Annotation', link => '' },
	{ cmd => 'query_entity_Assay', link => '' },
	{ cmd => 'query_entity_AtomicRegulon', link => '' },
	{ cmd => 'query_entity_Attribute', link => '' },
	{ cmd => 'query_entity_Biomass', link => '' },
	{ cmd => 'query_entity_BiomassCompound', link => '' },
	{ cmd => 'query_entity_Compartment', link => '' },
	{ cmd => 'query_entity_Complex', link => '' },
	{ cmd => 'query_entity_Compound', link => '' },
	{ cmd => 'query_entity_Contig', link => '' },
	{ cmd => 'query_entity_ContigChunk', link => '' },
	{ cmd => 'query_entity_ContigSequence', link => '' },
	{ cmd => 'query_entity_CoregulatedSet', link => '' },
	{ cmd => 'query_entity_Diagram', link => '' },
	{ cmd => 'query_entity_EcNumber', link => '' },
	{ cmd => 'query_entity_Experiment', link => '' },
	{ cmd => 'query_entity_Family', link => '' },
	{ cmd => 'query_entity_Feature', link => '' },
	{ cmd => 'query_entity_Genome', link => '' },
	{ cmd => 'query_entity_Identifier', link => '' },
	{ cmd => 'query_entity_Locality', link => '' },
	{ cmd => 'query_entity_Media', link => '' },
	{ cmd => 'query_entity_Model', link => '' },
	{ cmd => 'query_entity_ModelCompartment', link => '' },
	{ cmd => 'query_entity_OTU', link => '' },
	{ cmd => 'query_entity_ObservationalUnit', link => '' },
	{ cmd => 'query_entity_PairSet', link => '' },
	{ cmd => 'query_entity_Pairing', link => '' },
	{ cmd => 'query_entity_ProbeSet', link => '' },
	{ cmd => 'query_entity_ProteinSequence', link => '' },
	{ cmd => 'query_entity_Publication', link => '' },
	{ cmd => 'query_entity_Reaction', link => '' },
	{ cmd => 'query_entity_ReactionRule', link => '' },
	{ cmd => 'query_entity_Reagent', link => '' },
	{ cmd => 'query_entity_Requirement', link => '' },
	{ cmd => 'query_entity_Role', link => '' },
	{ cmd => 'query_entity_SSCell', link => '' },
	{ cmd => 'query_entity_SSRow', link => '' },
	{ cmd => 'query_entity_Scenario', link => '' },
	{ cmd => 'query_entity_Source', link => '' },
	{ cmd => 'query_entity_StudyExperiment', link => '' },
	{ cmd => 'query_entity_Subsystem', link => '' },
	{ cmd => 'query_entity_SubsystemClass', link => '' },
	{ cmd => 'query_entity_TaxonomicGrouping', link => '' },
	{ cmd => 'query_entity_Trait', link => '' },
	{ cmd => 'query_entity_Variant', link => '' },
	{ cmd => 'query_entity_Variation', link => '' },
   ]},
);

sub command_groups
{
    return \@command_groups;
}

sub valid_commands
{
    my %v;
    for my $g (@command_groups)
    {
	$v{$_} = 1 foreach map { $_->{cmd} } @{$g->{items}};
    }
    return \%v;
}

1;




