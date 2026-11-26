package com.google.android.gms.internal.measurement;

import androidx.compose.material3.internal.CalendarModelKt;
import androidx.media3.exoplayer.audio.SilenceSkippingAudioProcessor;
import androidx.webkit.ProxyConfig;
import androidx.work.multiprocess.RemoteWorkManager;

/* JADX INFO: loaded from: classes4.dex */
public final class zzagu implements zzagt {
    public static final zzpo a = new zzpo(zzagr.zzc(), 81);

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final long zzA() {
        return ((Long) a.zzb(27, "measurement.alarm_manager.minimum_interval", 60000L).get()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final long zzB() {
        return ((Long) a.zzb(28, "measurement.upload.minimum_delay", 500L).get()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final long zzC() {
        return ((Long) a.zzb(29, "measurement.monitoring.sample_period_millis", CalendarModelKt.MillisecondsIn24Hours).get()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final long zzD() {
        return ((Long) a.zzb(30, "measurement.rb.attribution.notify_app_delay_millis", 3000L).get()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final boolean zzE() {
        return ((Boolean) a.zza(31, "measurement.config.notify_trigger_uris_on_backgrounded", true).get()).booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final String zzF() {
        return (String) a.zzd(32, "measurement.rb.attribution.app_allowlist", "").get();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final long zzG() {
        return ((Long) a.zzb(33, "measurement.upload.realtime_upload_interval", 10000L).get()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final long zzH() {
        return ((Long) a.zzb(34, "measurement.upload.refresh_blacklisted_config_interval", 604800000L).get()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final long zzI() {
        return ((Long) a.zzb(36, "measurement.service_client.idle_disconnect_millis", 5000L).get()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final long zzJ() {
        return ((Long) a.zzb(38, "measurement.service_client.reconnect_millis", 1000L).get()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final long zzK() {
        return ((Long) a.zzb(40, "measurement.sgtm.batch.long_queuing_threshold", 240000L).get()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final long zzL() {
        return ((Long) a.zzb(41, "measurement.sgtm.batch.retry_interval", 1800000L).get()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final long zzM() {
        return ((Long) a.zzb(42, "measurement.sgtm.batch.retry_max_count", 10L).get()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final long zzN() {
        return ((Long) a.zzb(43, "measurement.sgtm.batch.retry_max_wait", 21600000L).get()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final String zzO() {
        return (String) a.zzd(44, "measurement.sgtm.service_upload_apps_list", "").get();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final String zzP() {
        return (String) a.zzd(45, "measurement.sgtm.upload.backoff_http_codes", "404,429,503,504").get();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final long zzQ() {
        return ((Long) a.zzb(46, "measurement.sgtm.upload.batches_retrieval_limit", 5L).get()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final long zzR() {
        return ((Long) a.zzb(47, "measurement.sgtm.upload.max_queued_batches", 5000L).get()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final long zzS() {
        return ((Long) a.zzb(48, "measurement.sgtm.upload.min_delay_after_background", RemoteWorkManager.DEFAULT_SESSION_TIMEOUT_MILLIS).get()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final long zzT() {
        return ((Long) a.zzb(49, "measurement.sgtm.upload.min_delay_after_broadcast", 1000L).get()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final long zzU() {
        return ((Long) a.zzb(50, "measurement.sgtm.upload.min_delay_after_startup", 5000L).get()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final long zzV() {
        return ((Long) a.zzb(51, "measurement.sgtm.upload.retry_interval", RemoteWorkManager.DEFAULT_SESSION_TIMEOUT_MILLIS).get()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final long zzW() {
        return ((Long) a.zzb(52, "measurement.sgtm.upload.retry_max_wait", 21600000L).get()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final long zzX() {
        return ((Long) a.zzb(53, "measurement.upload.stale_data_deletion_interval", CalendarModelKt.MillisecondsIn24Hours).get()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final long zzY() {
        return ((Long) a.zzb(54, "measurement.rb.attribution.max_retry_delay_seconds", 16L).get()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final long zzZ() {
        return ((Long) a.zzb(55, "measurement.rb.attribution.client.min_time_after_boot_seconds", 90L).get()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final long zza() {
        return ((Long) a.zzb(0, "measurement.ad_id_cache_time", 10000L).get()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final String zzaa() {
        return (String) a.zzd(56, "measurement.rb.attribution.uri_authority", "google-analytics.com").get();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final long zzab() {
        return ((Long) a.zzb(57, "measurement.rb.attribution.max_queue_time", 864000000L).get()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final String zzac() {
        return (String) a.zzd(58, "measurement.rb.attribution.uri_path", "privacy-sandbox/register-app-conversion").get();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final String zzad() {
        return (String) a.zzd(59, "measurement.rb.attribution.query_parameters_to_remove", "").get();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final String zzae() {
        return (String) a.zzd(60, "measurement.rb.attribution.uri_scheme", ProxyConfig.MATCH_HTTPS).get();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final long zzaf() {
        return ((Long) a.zzb(61, "measurement.sdk.attribution.cache.ttl", 604800000L).get()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final long zzag() {
        return ((Long) a.zzb(62, "measurement.redaction.app_instance_id.ttl", 7200000L).get()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final long zzah() {
        return ((Long) a.zzb(63, "measurement.upload.backoff_period", 43200000L).get()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final long zzai() {
        return ((Long) a.zzb(64, "measurement.upload.initial_upload_delay_time", 15000L).get()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final long zzaj() {
        return ((Long) a.zzb(65, "measurement.upload.interval", 3600000L).get()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final long zzak() {
        return ((Long) a.zzb(66, "measurement.upload.max_bundle_size", 65536L).get()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final long zzal() {
        return ((Long) a.zzb(67, "measurement.upload.max_bundles", 100L).get()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final long zzam() {
        return ((Long) a.zzb(68, "measurement.upload.max_conversions_per_day", 10000L).get()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final long zzan() {
        return ((Long) a.zzb(69, "measurement.upload.max_error_events_per_day", 1000L).get()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final long zzao() {
        return ((Long) a.zzb(70, "measurement.upload.max_events_per_bundle", 1000L).get()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final long zzap() {
        return ((Long) a.zzb(71, "measurement.upload.max_events_per_day", SilenceSkippingAudioProcessor.DEFAULT_MINIMUM_SILENCE_DURATION_US).get()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final long zzaq() {
        return ((Long) a.zzb(72, "measurement.upload.max_public_events_per_day", 50000L).get()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final long zzar() {
        return ((Long) a.zzb(73, "measurement.upload.max_queue_time", 518400000L).get()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final long zzas() {
        return ((Long) a.zzb(74, "measurement.upload.max_realtime_events_per_day", 10L).get()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final long zzat() {
        return ((Long) a.zzb(75, "measurement.upload.max_batch_size", 65536L).get()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final long zzau() {
        return ((Long) a.zzb(76, "measurement.upload.retry_count", 6L).get()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final long zzav() {
        return ((Long) a.zzb(77, "measurement.upload.retry_time", 1800000L).get()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final String zzaw() {
        return (String) a.zzd(78, "measurement.upload.url", "https://app-measurement.com/a").get();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final long zzax() {
        return ((Long) a.zzb(79, "measurement.upload.window_interval", 3600000L).get()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final String zzay() {
        return (String) a.zzd(80, "measurement.rb.attribution.user_properties", "_npa,npa|_fot,fot").get();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final long zzb() {
        return ((Long) a.zzb(1, "measurement.app_uninstalled_additional_ad_id_cache_time", 3600000L).get()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final boolean zzc() {
        return ((Boolean) a.zza(2, "measurement.config.bundle_for_all_apps_on_backgrounded", true).get()).booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final long zzd() {
        return ((Long) a.zzb(3, "measurement.max_bundles_per_iteration", 100L).get()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final String zze() {
        return (String) a.zzd(4, "measurement.gbraid_campaign.campaign_params_triggering_info_update", "gclid,gbraid,gad_campaignid").get();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final long zzf() {
        return ((Long) a.zzb(5, "measurement.config.cache_time", CalendarModelKt.MillisecondsIn24Hours).get()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final String zzg() {
        return (String) a.zzd(7, "measurement.config.url_authority", "app-measurement.com").get();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final String zzh() {
        return (String) a.zzd(8, "measurement.config.url_scheme", ProxyConfig.MATCH_HTTPS).get();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final long zzi() {
        return ((Long) a.zzb(9, "measurement.upload.debug_upload_interval", 1000L).get()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final boolean zzj() {
        return ((Boolean) a.zza(10, "measurement.config.default_flag_values", true).get()).booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final long zzk() {
        return ((Long) a.zzb(11, "45769094", 3600000L).get()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final long zzl() {
        return ((Long) a.zzb(12, "measurement.session.engagement_interval", 3600000L).get()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final String zzm() {
        return (String) a.zzd(13, "measurement.rb.attribution.event_params", "value|currency").get();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final String zzn() {
        return (String) a.zzd(14, "measurement.edpb.events_cached_in_no_data_mode", "_f,_v,_cmp").get();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final long zzo() {
        return ((Long) a.zzb(15, "measurement.upload.google_signal_max_queue_time", 605000L).get()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final String zzp() {
        return (String) a.zzd(16, "measurement.sgtm.google_signal.url", "https://app-measurement.com/s/d").get();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final long zzq() {
        return ((Long) a.zzb(17, "measurement.lifetimevalue.max_currency_tracked", 4L).get()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final long zzr() {
        return ((Long) a.zzb(18, "measurement.dma_consent.max_daily_dcu_realtime_events", 1L).get()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final long zzs() {
        return ((Long) a.zzb(19, "measurement.upload.max_event_parameter_value_length", 500L).get()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final long zzt() {
        return ((Long) a.zzb(20, "measurement.store.max_stored_events_per_app", SilenceSkippingAudioProcessor.DEFAULT_MINIMUM_SILENCE_DURATION_US).get()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final long zzu() {
        return ((Long) a.zzb(21, "measurement.experiment.max_ids", 50L).get()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final long zzv() {
        return ((Long) a.zzb(22, "measurement.audience.filter_result_max_count", 200L).get()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final long zzw() {
        return ((Long) a.zzb(23, "measurement.upload.max_item_scoped_custom_parameters", 27L).get()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final long zzx() {
        return ((Long) a.zzb(24, "measurement.rb.max_trigger_registrations_per_day", 1000L).get()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final long zzy() {
        return ((Long) a.zzb(25, "measurement.rb.attribution.max_trigger_uris_queried_at_once", 0L).get()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final long zzz() {
        return ((Long) a.zzb(26, "measurement.rb.attribution.client.min_ad_services_version", 7L).get()).longValue();
    }
}
