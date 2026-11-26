package com.google.firebase.perf.config;

import com.google.firebase.perf.BuildConfig;
import com.google.firebase.perf.util.Constants;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
final class ConfigurationConstants {

    public static final class FragmentSamplingRate extends ConfigurationFlag<Double> {
        private static FragmentSamplingRate instance;

        private FragmentSamplingRate() {
        }

        public static synchronized FragmentSamplingRate getInstance() {
            FragmentSamplingRate fragmentSamplingRate;
            fragmentSamplingRate = instance;
            if (fragmentSamplingRate == null) {
                fragmentSamplingRate = new FragmentSamplingRate();
                instance = fragmentSamplingRate;
            }
            return fragmentSamplingRate;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.firebase.perf.config.ConfigurationFlag
        public Double getDefault() {
            return Double.valueOf(0.0d);
        }

        @Override // com.google.firebase.perf.config.ConfigurationFlag
        public String getDeviceCacheFlag() {
            return "com.google.firebase.perf.FragmentSamplingRate";
        }

        @Override // com.google.firebase.perf.config.ConfigurationFlag
        public String getMetadataFlag() {
            return "fragment_sampling_percentage";
        }

        @Override // com.google.firebase.perf.config.ConfigurationFlag
        public String getRemoteConfigFlag() {
            return "fpr_vc_fragment_sampling_rate";
        }
    }

    public static final class NetworkEventCountBackground extends ConfigurationFlag<Long> {
        private static NetworkEventCountBackground instance;

        private NetworkEventCountBackground() {
        }

        public static synchronized NetworkEventCountBackground getInstance() {
            NetworkEventCountBackground networkEventCountBackground;
            networkEventCountBackground = instance;
            if (networkEventCountBackground == null) {
                networkEventCountBackground = new NetworkEventCountBackground();
                instance = networkEventCountBackground;
            }
            return networkEventCountBackground;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.firebase.perf.config.ConfigurationFlag
        public Long getDefault() {
            return 70L;
        }

        @Override // com.google.firebase.perf.config.ConfigurationFlag
        public String getDeviceCacheFlag() {
            return "com.google.firebase.perf.NetworkEventCountBackground";
        }

        @Override // com.google.firebase.perf.config.ConfigurationFlag
        public String getRemoteConfigFlag() {
            return "fpr_rl_network_event_count_bg";
        }
    }

    public static final class NetworkEventCountForeground extends ConfigurationFlag<Long> {
        private static NetworkEventCountForeground instance;

        private NetworkEventCountForeground() {
        }

        public static synchronized NetworkEventCountForeground getInstance() {
            NetworkEventCountForeground networkEventCountForeground;
            networkEventCountForeground = instance;
            if (networkEventCountForeground == null) {
                networkEventCountForeground = new NetworkEventCountForeground();
                instance = networkEventCountForeground;
            }
            return networkEventCountForeground;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.firebase.perf.config.ConfigurationFlag
        public Long getDefault() {
            return 700L;
        }

        @Override // com.google.firebase.perf.config.ConfigurationFlag
        public String getDeviceCacheFlag() {
            return "com.google.firebase.perf.NetworkEventCountForeground";
        }

        @Override // com.google.firebase.perf.config.ConfigurationFlag
        public String getRemoteConfigFlag() {
            return "fpr_rl_network_event_count_fg";
        }
    }

    public static final class NetworkRequestSamplingRate extends ConfigurationFlag<Double> {
        private static NetworkRequestSamplingRate instance;

        private NetworkRequestSamplingRate() {
        }

        public static synchronized NetworkRequestSamplingRate getInstance() {
            NetworkRequestSamplingRate networkRequestSamplingRate;
            networkRequestSamplingRate = instance;
            if (networkRequestSamplingRate == null) {
                networkRequestSamplingRate = new NetworkRequestSamplingRate();
                instance = networkRequestSamplingRate;
            }
            return networkRequestSamplingRate;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.firebase.perf.config.ConfigurationFlag
        public Double getDefault() {
            return Double.valueOf(1.0d);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.firebase.perf.config.ConfigurationFlag
        public Double getDefaultOnRcFetchFail() {
            return Double.valueOf(getDefault().doubleValue() / 1000.0d);
        }

        @Override // com.google.firebase.perf.config.ConfigurationFlag
        public String getDeviceCacheFlag() {
            return "com.google.firebase.perf.NetworkRequestSamplingRate";
        }

        @Override // com.google.firebase.perf.config.ConfigurationFlag
        public String getRemoteConfigFlag() {
            return "fpr_vc_network_request_sampling_rate";
        }
    }

    public static final class RateLimitSec extends ConfigurationFlag<Long> {
        private static RateLimitSec instance;

        private RateLimitSec() {
        }

        public static synchronized RateLimitSec getInstance() {
            RateLimitSec rateLimitSec;
            rateLimitSec = instance;
            if (rateLimitSec == null) {
                rateLimitSec = new RateLimitSec();
                instance = rateLimitSec;
            }
            return rateLimitSec;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.firebase.perf.config.ConfigurationFlag
        public Long getDefault() {
            return 600L;
        }

        @Override // com.google.firebase.perf.config.ConfigurationFlag
        public String getDeviceCacheFlag() {
            return "com.google.firebase.perf.TimeLimitSec";
        }

        @Override // com.google.firebase.perf.config.ConfigurationFlag
        public String getRemoteConfigFlag() {
            return "fpr_rl_time_limit_sec";
        }
    }

    public static final class SessionsCpuCaptureFrequencyBackgroundMs extends ConfigurationFlag<Long> {
        private static SessionsCpuCaptureFrequencyBackgroundMs instance;

        private SessionsCpuCaptureFrequencyBackgroundMs() {
        }

        public static synchronized SessionsCpuCaptureFrequencyBackgroundMs getInstance() {
            SessionsCpuCaptureFrequencyBackgroundMs sessionsCpuCaptureFrequencyBackgroundMs;
            sessionsCpuCaptureFrequencyBackgroundMs = instance;
            if (sessionsCpuCaptureFrequencyBackgroundMs == null) {
                sessionsCpuCaptureFrequencyBackgroundMs = new SessionsCpuCaptureFrequencyBackgroundMs();
                instance = sessionsCpuCaptureFrequencyBackgroundMs;
            }
            return sessionsCpuCaptureFrequencyBackgroundMs;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.firebase.perf.config.ConfigurationFlag
        public Long getDefault() {
            return 0L;
        }

        @Override // com.google.firebase.perf.config.ConfigurationFlag
        public String getDeviceCacheFlag() {
            return "com.google.firebase.perf.SessionsCpuCaptureFrequencyBackgroundMs";
        }

        @Override // com.google.firebase.perf.config.ConfigurationFlag
        public String getMetadataFlag() {
            return "sessions_cpu_capture_frequency_bg_ms";
        }

        @Override // com.google.firebase.perf.config.ConfigurationFlag
        public String getRemoteConfigFlag() {
            return "fpr_session_gauge_cpu_capture_frequency_bg_ms";
        }
    }

    public static final class SessionsCpuCaptureFrequencyForegroundMs extends ConfigurationFlag<Long> {
        private static SessionsCpuCaptureFrequencyForegroundMs instance;

        private SessionsCpuCaptureFrequencyForegroundMs() {
        }

        public static synchronized SessionsCpuCaptureFrequencyForegroundMs getInstance() {
            SessionsCpuCaptureFrequencyForegroundMs sessionsCpuCaptureFrequencyForegroundMs;
            sessionsCpuCaptureFrequencyForegroundMs = instance;
            if (sessionsCpuCaptureFrequencyForegroundMs == null) {
                sessionsCpuCaptureFrequencyForegroundMs = new SessionsCpuCaptureFrequencyForegroundMs();
                instance = sessionsCpuCaptureFrequencyForegroundMs;
            }
            return sessionsCpuCaptureFrequencyForegroundMs;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.firebase.perf.config.ConfigurationFlag
        public Long getDefault() {
            return 100L;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.firebase.perf.config.ConfigurationFlag
        public Long getDefaultOnRcFetchFail() {
            return Long.valueOf(getDefault().longValue() * 3);
        }

        @Override // com.google.firebase.perf.config.ConfigurationFlag
        public String getDeviceCacheFlag() {
            return "com.google.firebase.perf.SessionsCpuCaptureFrequencyForegroundMs";
        }

        @Override // com.google.firebase.perf.config.ConfigurationFlag
        public String getMetadataFlag() {
            return "sessions_cpu_capture_frequency_fg_ms";
        }

        @Override // com.google.firebase.perf.config.ConfigurationFlag
        public String getRemoteConfigFlag() {
            return "fpr_session_gauge_cpu_capture_frequency_fg_ms";
        }
    }

    public static final class SessionsMaxDurationMinutes extends ConfigurationFlag<Long> {
        private static SessionsMaxDurationMinutes instance;

        private SessionsMaxDurationMinutes() {
        }

        public static synchronized SessionsMaxDurationMinutes getInstance() {
            SessionsMaxDurationMinutes sessionsMaxDurationMinutes;
            sessionsMaxDurationMinutes = instance;
            if (sessionsMaxDurationMinutes == null) {
                sessionsMaxDurationMinutes = new SessionsMaxDurationMinutes();
                instance = sessionsMaxDurationMinutes;
            }
            return sessionsMaxDurationMinutes;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.firebase.perf.config.ConfigurationFlag
        public Long getDefault() {
            return 240L;
        }

        @Override // com.google.firebase.perf.config.ConfigurationFlag
        public String getDeviceCacheFlag() {
            return "com.google.firebase.perf.SessionsMaxDurationMinutes";
        }

        @Override // com.google.firebase.perf.config.ConfigurationFlag
        public String getMetadataFlag() {
            return "sessions_max_length_minutes";
        }

        @Override // com.google.firebase.perf.config.ConfigurationFlag
        public String getRemoteConfigFlag() {
            return "fpr_session_max_duration_min";
        }
    }

    public static final class SessionsMemoryCaptureFrequencyBackgroundMs extends ConfigurationFlag<Long> {
        private static SessionsMemoryCaptureFrequencyBackgroundMs instance;

        private SessionsMemoryCaptureFrequencyBackgroundMs() {
        }

        public static synchronized SessionsMemoryCaptureFrequencyBackgroundMs getInstance() {
            SessionsMemoryCaptureFrequencyBackgroundMs sessionsMemoryCaptureFrequencyBackgroundMs;
            sessionsMemoryCaptureFrequencyBackgroundMs = instance;
            if (sessionsMemoryCaptureFrequencyBackgroundMs == null) {
                sessionsMemoryCaptureFrequencyBackgroundMs = new SessionsMemoryCaptureFrequencyBackgroundMs();
                instance = sessionsMemoryCaptureFrequencyBackgroundMs;
            }
            return sessionsMemoryCaptureFrequencyBackgroundMs;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.firebase.perf.config.ConfigurationFlag
        public Long getDefault() {
            return 0L;
        }

        @Override // com.google.firebase.perf.config.ConfigurationFlag
        public String getDeviceCacheFlag() {
            return "com.google.firebase.perf.SessionsMemoryCaptureFrequencyBackgroundMs";
        }

        @Override // com.google.firebase.perf.config.ConfigurationFlag
        public String getMetadataFlag() {
            return "sessions_memory_capture_frequency_bg_ms";
        }

        @Override // com.google.firebase.perf.config.ConfigurationFlag
        public String getRemoteConfigFlag() {
            return "fpr_session_gauge_memory_capture_frequency_bg_ms";
        }
    }

    public static final class SessionsMemoryCaptureFrequencyForegroundMs extends ConfigurationFlag<Long> {
        private static SessionsMemoryCaptureFrequencyForegroundMs instance;

        private SessionsMemoryCaptureFrequencyForegroundMs() {
        }

        public static synchronized SessionsMemoryCaptureFrequencyForegroundMs getInstance() {
            SessionsMemoryCaptureFrequencyForegroundMs sessionsMemoryCaptureFrequencyForegroundMs;
            sessionsMemoryCaptureFrequencyForegroundMs = instance;
            if (sessionsMemoryCaptureFrequencyForegroundMs == null) {
                sessionsMemoryCaptureFrequencyForegroundMs = new SessionsMemoryCaptureFrequencyForegroundMs();
                instance = sessionsMemoryCaptureFrequencyForegroundMs;
            }
            return sessionsMemoryCaptureFrequencyForegroundMs;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.firebase.perf.config.ConfigurationFlag
        public Long getDefault() {
            return 100L;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.firebase.perf.config.ConfigurationFlag
        public Long getDefaultOnRcFetchFail() {
            return Long.valueOf(getDefault().longValue() * 3);
        }

        @Override // com.google.firebase.perf.config.ConfigurationFlag
        public String getDeviceCacheFlag() {
            return "com.google.firebase.perf.SessionsMemoryCaptureFrequencyForegroundMs";
        }

        @Override // com.google.firebase.perf.config.ConfigurationFlag
        public String getMetadataFlag() {
            return "sessions_memory_capture_frequency_fg_ms";
        }

        @Override // com.google.firebase.perf.config.ConfigurationFlag
        public String getRemoteConfigFlag() {
            return "fpr_session_gauge_memory_capture_frequency_fg_ms";
        }
    }

    public static final class SessionsSamplingRate extends ConfigurationFlag<Double> {
        private static SessionsSamplingRate instance;

        private SessionsSamplingRate() {
        }

        public static synchronized SessionsSamplingRate getInstance() {
            SessionsSamplingRate sessionsSamplingRate;
            sessionsSamplingRate = instance;
            if (sessionsSamplingRate == null) {
                sessionsSamplingRate = new SessionsSamplingRate();
                instance = sessionsSamplingRate;
            }
            return sessionsSamplingRate;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.firebase.perf.config.ConfigurationFlag
        public Double getDefault() {
            return Double.valueOf(0.01d);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.firebase.perf.config.ConfigurationFlag
        public Double getDefaultOnRcFetchFail() {
            return Double.valueOf(getDefault().doubleValue() / 1000.0d);
        }

        @Override // com.google.firebase.perf.config.ConfigurationFlag
        public String getDeviceCacheFlag() {
            return "com.google.firebase.perf.SessionSamplingRate";
        }

        @Override // com.google.firebase.perf.config.ConfigurationFlag
        public String getMetadataFlag() {
            return "sessions_sampling_percentage";
        }

        @Override // com.google.firebase.perf.config.ConfigurationFlag
        public String getRemoteConfigFlag() {
            return "fpr_vc_session_sampling_rate";
        }
    }

    public static final class TraceEventCountBackground extends ConfigurationFlag<Long> {
        private static TraceEventCountBackground instance;

        private TraceEventCountBackground() {
        }

        public static synchronized TraceEventCountBackground getInstance() {
            TraceEventCountBackground traceEventCountBackground;
            traceEventCountBackground = instance;
            if (traceEventCountBackground == null) {
                traceEventCountBackground = new TraceEventCountBackground();
                instance = traceEventCountBackground;
            }
            return traceEventCountBackground;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.firebase.perf.config.ConfigurationFlag
        public Long getDefault() {
            return 30L;
        }

        @Override // com.google.firebase.perf.config.ConfigurationFlag
        public String getDeviceCacheFlag() {
            return "com.google.firebase.perf.TraceEventCountBackground";
        }

        @Override // com.google.firebase.perf.config.ConfigurationFlag
        public String getRemoteConfigFlag() {
            return "fpr_rl_trace_event_count_bg";
        }
    }

    public static final class TraceEventCountForeground extends ConfigurationFlag<Long> {
        private static TraceEventCountForeground instance;

        private TraceEventCountForeground() {
        }

        public static synchronized TraceEventCountForeground getInstance() {
            TraceEventCountForeground traceEventCountForeground;
            traceEventCountForeground = instance;
            if (traceEventCountForeground == null) {
                traceEventCountForeground = new TraceEventCountForeground();
                instance = traceEventCountForeground;
            }
            return traceEventCountForeground;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.firebase.perf.config.ConfigurationFlag
        public Long getDefault() {
            return 300L;
        }

        @Override // com.google.firebase.perf.config.ConfigurationFlag
        public String getDeviceCacheFlag() {
            return "com.google.firebase.perf.TraceEventCountForeground";
        }

        @Override // com.google.firebase.perf.config.ConfigurationFlag
        public String getRemoteConfigFlag() {
            return "fpr_rl_trace_event_count_fg";
        }
    }

    public static final class TraceSamplingRate extends ConfigurationFlag<Double> {
        private static TraceSamplingRate instance;

        private TraceSamplingRate() {
        }

        public static synchronized TraceSamplingRate getInstance() {
            TraceSamplingRate traceSamplingRate;
            traceSamplingRate = instance;
            if (traceSamplingRate == null) {
                traceSamplingRate = new TraceSamplingRate();
                instance = traceSamplingRate;
            }
            return traceSamplingRate;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.firebase.perf.config.ConfigurationFlag
        public Double getDefault() {
            return Double.valueOf(1.0d);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.firebase.perf.config.ConfigurationFlag
        public Double getDefaultOnRcFetchFail() {
            return Double.valueOf(getDefault().doubleValue() / 1000.0d);
        }

        @Override // com.google.firebase.perf.config.ConfigurationFlag
        public String getDeviceCacheFlag() {
            return "com.google.firebase.perf.TraceSamplingRate";
        }

        @Override // com.google.firebase.perf.config.ConfigurationFlag
        public String getRemoteConfigFlag() {
            return "fpr_vc_trace_sampling_rate";
        }
    }

    public static final class CollectionDeactivated extends ConfigurationFlag<Boolean> {
        private static CollectionDeactivated instance;

        private CollectionDeactivated() {
        }

        public static synchronized CollectionDeactivated getInstance() {
            CollectionDeactivated collectionDeactivated;
            collectionDeactivated = instance;
            if (collectionDeactivated == null) {
                collectionDeactivated = new CollectionDeactivated();
                instance = collectionDeactivated;
            }
            return collectionDeactivated;
        }

        @Override // com.google.firebase.perf.config.ConfigurationFlag
        public String getMetadataFlag() {
            return "firebase_performance_collection_deactivated";
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.firebase.perf.config.ConfigurationFlag
        public Boolean getDefault() {
            return Boolean.FALSE;
        }
    }

    public static final class CollectionEnabled extends ConfigurationFlag<Boolean> {
        private static CollectionEnabled instance;

        private CollectionEnabled() {
        }

        public static synchronized CollectionEnabled getInstance() {
            CollectionEnabled collectionEnabled;
            collectionEnabled = instance;
            if (collectionEnabled == null) {
                collectionEnabled = new CollectionEnabled();
                instance = collectionEnabled;
            }
            return collectionEnabled;
        }

        @Override // com.google.firebase.perf.config.ConfigurationFlag
        public String getDeviceCacheFlag() {
            return Constants.ENABLE_DISABLE;
        }

        @Override // com.google.firebase.perf.config.ConfigurationFlag
        public String getMetadataFlag() {
            return "firebase_performance_collection_enabled";
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.firebase.perf.config.ConfigurationFlag
        public Boolean getDefault() {
            return Boolean.TRUE;
        }
    }

    public static final class ExperimentTTID extends ConfigurationFlag<Boolean> {
        private static ExperimentTTID instance;

        private ExperimentTTID() {
        }

        public static synchronized ExperimentTTID getInstance() {
            ExperimentTTID experimentTTID;
            experimentTTID = instance;
            if (experimentTTID == null) {
                experimentTTID = new ExperimentTTID();
                instance = experimentTTID;
            }
            return experimentTTID;
        }

        @Override // com.google.firebase.perf.config.ConfigurationFlag
        public String getDeviceCacheFlag() {
            return "com.google.firebase.perf.ExperimentTTID";
        }

        @Override // com.google.firebase.perf.config.ConfigurationFlag
        public String getMetadataFlag() {
            return "experiment_app_start_ttid";
        }

        @Override // com.google.firebase.perf.config.ConfigurationFlag
        public String getRemoteConfigFlag() {
            return "fpr_experiment_app_start_ttid";
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.firebase.perf.config.ConfigurationFlag
        public Boolean getDefault() {
            return Boolean.FALSE;
        }
    }

    public static final class LogSourceName extends ConfigurationFlag<String> {
        private static final Map<Long, String> LOG_SOURCE_MAP = Collections.unmodifiableMap(new HashMap<Long, String>() { // from class: com.google.firebase.perf.config.ConfigurationConstants.LogSourceName.1
            {
                put(461L, "FIREPERF_AUTOPUSH");
                put(462L, "FIREPERF");
                put(675L, "FIREPERF_INTERNAL_LOW");
                put(676L, "FIREPERF_INTERNAL_HIGH");
            }
        });
        private static LogSourceName instance;

        private LogSourceName() {
        }

        public static synchronized LogSourceName getInstance() {
            LogSourceName logSourceName;
            logSourceName = instance;
            if (logSourceName == null) {
                logSourceName = new LogSourceName();
                instance = logSourceName;
            }
            return logSourceName;
        }

        public static String getLogSourceName(long j) {
            return LOG_SOURCE_MAP.get(Long.valueOf(j));
        }

        public static boolean isLogSourceKnown(long j) {
            return LOG_SOURCE_MAP.containsKey(Long.valueOf(j));
        }

        @Override // com.google.firebase.perf.config.ConfigurationFlag
        public String getDeviceCacheFlag() {
            return "com.google.firebase.perf.LogSourceName";
        }

        @Override // com.google.firebase.perf.config.ConfigurationFlag
        public String getRemoteConfigFlag() {
            return "fpr_log_source";
        }

        @Override // com.google.firebase.perf.config.ConfigurationFlag
        public String getDefault() {
            return BuildConfig.TRANSPORT_LOG_SRC;
        }
    }

    public static final class SdkDisabledVersions extends ConfigurationFlag<String> {
        private static SdkDisabledVersions instance;

        public static synchronized SdkDisabledVersions getInstance() {
            SdkDisabledVersions sdkDisabledVersions;
            sdkDisabledVersions = instance;
            if (sdkDisabledVersions == null) {
                sdkDisabledVersions = new SdkDisabledVersions();
                instance = sdkDisabledVersions;
            }
            return sdkDisabledVersions;
        }

        @Override // com.google.firebase.perf.config.ConfigurationFlag
        public String getDeviceCacheFlag() {
            return "com.google.firebase.perf.SdkDisabledVersions";
        }

        @Override // com.google.firebase.perf.config.ConfigurationFlag
        public String getRemoteConfigFlag() {
            return "fpr_disabled_android_versions";
        }

        @Override // com.google.firebase.perf.config.ConfigurationFlag
        public String getDefault() {
            return "";
        }
    }

    public static final class SdkEnabled extends ConfigurationFlag<Boolean> {
        private static SdkEnabled instance;

        public static synchronized SdkEnabled getInstance() {
            SdkEnabled sdkEnabled;
            sdkEnabled = instance;
            if (sdkEnabled == null) {
                sdkEnabled = new SdkEnabled();
                instance = sdkEnabled;
            }
            return sdkEnabled;
        }

        @Override // com.google.firebase.perf.config.ConfigurationFlag
        public String getDeviceCacheFlag() {
            return "com.google.firebase.perf.SdkEnabled";
        }

        @Override // com.google.firebase.perf.config.ConfigurationFlag
        public String getRemoteConfigFlag() {
            return "fpr_enabled";
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.firebase.perf.config.ConfigurationFlag
        public Boolean getDefault() {
            return Boolean.TRUE;
        }
    }
}
