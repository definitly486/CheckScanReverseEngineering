package com.google.android.gms.common.internal;

/* JADX INFO: loaded from: classes4.dex */
public final class RootTelemetryConfigManager {
    public static RootTelemetryConfigManager b;
    public static final RootTelemetryConfiguration c = new RootTelemetryConfiguration(0, false, false, 0, 0);
    public RootTelemetryConfiguration a;

    public static synchronized RootTelemetryConfigManager getInstance() {
        RootTelemetryConfigManager rootTelemetryConfigManager;
        rootTelemetryConfigManager = b;
        if (rootTelemetryConfigManager == null) {
            rootTelemetryConfigManager = new RootTelemetryConfigManager();
            b = rootTelemetryConfigManager;
        }
        return rootTelemetryConfigManager;
    }

    public RootTelemetryConfiguration getConfig() {
        return this.a;
    }

    public final synchronized void zza(RootTelemetryConfiguration rootTelemetryConfiguration) {
        try {
            if (rootTelemetryConfiguration == null) {
                this.a = c;
                return;
            }
            RootTelemetryConfiguration rootTelemetryConfiguration2 = this.a;
            if (rootTelemetryConfiguration2 == null || rootTelemetryConfiguration2.getVersion() < rootTelemetryConfiguration.getVersion()) {
                this.a = rootTelemetryConfiguration;
            }
        } catch (Throwable th) {
            throw th;
        }
    }
}
