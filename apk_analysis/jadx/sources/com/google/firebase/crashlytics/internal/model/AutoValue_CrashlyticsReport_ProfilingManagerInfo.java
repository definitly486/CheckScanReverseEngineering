package com.google.firebase.crashlytics.internal.model;

import defpackage.ah;
import defpackage.o2;

/* JADX INFO: loaded from: classes4.dex */
final class AutoValue_CrashlyticsReport_ProfilingManagerInfo extends CrashlyticsReport.ProfilingManagerInfo {
    private final CrashlyticsReport.ProfilingManagerInfo.ProfilingTrigger profilingTrigger;

    public static final class Builder extends CrashlyticsReport.ProfilingManagerInfo.Builder {
        private CrashlyticsReport.ProfilingManagerInfo.ProfilingTrigger profilingTrigger;

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.ProfilingManagerInfo.Builder
        public CrashlyticsReport.ProfilingManagerInfo build() {
            CrashlyticsReport.ProfilingManagerInfo.ProfilingTrigger profilingTrigger = this.profilingTrigger;
            if (profilingTrigger != null) {
                return new AutoValue_CrashlyticsReport_ProfilingManagerInfo(profilingTrigger);
            }
            ah.f("Missing required properties: profilingTrigger");
            return null;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.ProfilingManagerInfo.Builder
        public CrashlyticsReport.ProfilingManagerInfo.Builder setProfilingTrigger(CrashlyticsReport.ProfilingManagerInfo.ProfilingTrigger profilingTrigger) {
            if (profilingTrigger != null) {
                this.profilingTrigger = profilingTrigger;
                return this;
            }
            o2.d("Null profilingTrigger");
            return null;
        }
    }

    private AutoValue_CrashlyticsReport_ProfilingManagerInfo(CrashlyticsReport.ProfilingManagerInfo.ProfilingTrigger profilingTrigger) {
        this.profilingTrigger = profilingTrigger;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof CrashlyticsReport.ProfilingManagerInfo) {
            return this.profilingTrigger.equals(((CrashlyticsReport.ProfilingManagerInfo) obj).getProfilingTrigger());
        }
        return false;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.ProfilingManagerInfo
    public CrashlyticsReport.ProfilingManagerInfo.ProfilingTrigger getProfilingTrigger() {
        return this.profilingTrigger;
    }

    public int hashCode() {
        return this.profilingTrigger.hashCode() ^ 1000003;
    }

    public String toString() {
        return "ProfilingManagerInfo{profilingTrigger=" + this.profilingTrigger + "}";
    }
}
