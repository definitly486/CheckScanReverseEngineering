package com.posthog.internal;

import defpackage.aa4;
import defpackage.bq7;
import defpackage.ej0;
import defpackage.jh2;

/* JADX INFO: loaded from: classes4.dex */
public final class FeatureFlagMetadata {

    @bq7("has_experiment")
    private final Boolean hasExperiment;
    private final int id;
    private final String payload;
    private final int version;

    public FeatureFlagMetadata(int i, String str, int i2, Boolean bool) {
        this.id = i;
        this.payload = str;
        this.version = i2;
        this.hasExperiment = bool;
    }

    public static /* synthetic */ FeatureFlagMetadata copy$default(FeatureFlagMetadata featureFlagMetadata, int i, String str, int i2, Boolean bool, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = featureFlagMetadata.id;
        }
        if ((i3 & 2) != 0) {
            str = featureFlagMetadata.payload;
        }
        if ((i3 & 4) != 0) {
            i2 = featureFlagMetadata.version;
        }
        if ((i3 & 8) != 0) {
            bool = featureFlagMetadata.hasExperiment;
        }
        return featureFlagMetadata.copy(i, str, i2, bool);
    }

    public final int component1() {
        return this.id;
    }

    public final String component2() {
        return this.payload;
    }

    public final int component3() {
        return this.version;
    }

    public final Boolean component4() {
        return this.hasExperiment;
    }

    public final FeatureFlagMetadata copy(int i, String str, int i2, Boolean bool) {
        return new FeatureFlagMetadata(i, str, i2, bool);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FeatureFlagMetadata)) {
            return false;
        }
        FeatureFlagMetadata featureFlagMetadata = (FeatureFlagMetadata) obj;
        return this.id == featureFlagMetadata.id && aa4.e(this.payload, featureFlagMetadata.payload) && this.version == featureFlagMetadata.version && aa4.e(this.hasExperiment, featureFlagMetadata.hasExperiment);
    }

    public final Boolean getHasExperiment() {
        return this.hasExperiment;
    }

    public final int getId() {
        return this.id;
    }

    public final String getPayload() {
        return this.payload;
    }

    public final int getVersion() {
        return this.version;
    }

    public int hashCode() {
        int iHashCode = Integer.hashCode(this.id) * 31;
        String str = this.payload;
        int iB = ej0.b(this.version, (iHashCode + (str == null ? 0 : str.hashCode())) * 31, 31);
        Boolean bool = this.hasExperiment;
        return iB + (bool != null ? bool.hashCode() : 0);
    }

    public String toString() {
        return "FeatureFlagMetadata(id=" + this.id + ", payload=" + this.payload + ", version=" + this.version + ", hasExperiment=" + this.hasExperiment + ')';
    }

    public /* synthetic */ FeatureFlagMetadata(int i, String str, int i2, Boolean bool, int i3, jh2 jh2Var) {
        this(i, str, i2, (i3 & 8) != 0 ? null : bool);
    }
}
