package com.posthog.internal;

import defpackage.aa4;
import defpackage.jh2;
import defpackage.tg;

/* JADX INFO: loaded from: classes4.dex */
public final class FeatureFlag {
    private final boolean enabled;
    private final Boolean failed;
    private final String key;
    private final FeatureFlagMetadata metadata;
    private final EvaluationReason reason;
    private final String variant;

    public FeatureFlag(String str, boolean z, String str2, FeatureFlagMetadata featureFlagMetadata, EvaluationReason evaluationReason, Boolean bool) {
        str.getClass();
        featureFlagMetadata.getClass();
        this.key = str;
        this.enabled = z;
        this.variant = str2;
        this.metadata = featureFlagMetadata;
        this.reason = evaluationReason;
        this.failed = bool;
    }

    public static /* synthetic */ FeatureFlag copy$default(FeatureFlag featureFlag, String str, boolean z, String str2, FeatureFlagMetadata featureFlagMetadata, EvaluationReason evaluationReason, Boolean bool, int i, Object obj) {
        if ((i & 1) != 0) {
            str = featureFlag.key;
        }
        if ((i & 2) != 0) {
            z = featureFlag.enabled;
        }
        if ((i & 4) != 0) {
            str2 = featureFlag.variant;
        }
        if ((i & 8) != 0) {
            featureFlagMetadata = featureFlag.metadata;
        }
        if ((i & 16) != 0) {
            evaluationReason = featureFlag.reason;
        }
        if ((i & 32) != 0) {
            bool = featureFlag.failed;
        }
        EvaluationReason evaluationReason2 = evaluationReason;
        Boolean bool2 = bool;
        return featureFlag.copy(str, z, str2, featureFlagMetadata, evaluationReason2, bool2);
    }

    public final String component1() {
        return this.key;
    }

    public final boolean component2() {
        return this.enabled;
    }

    public final String component3() {
        return this.variant;
    }

    public final FeatureFlagMetadata component4() {
        return this.metadata;
    }

    public final EvaluationReason component5() {
        return this.reason;
    }

    public final Boolean component6() {
        return this.failed;
    }

    public final FeatureFlag copy(String str, boolean z, String str2, FeatureFlagMetadata featureFlagMetadata, EvaluationReason evaluationReason, Boolean bool) {
        str.getClass();
        featureFlagMetadata.getClass();
        return new FeatureFlag(str, z, str2, featureFlagMetadata, evaluationReason, bool);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FeatureFlag)) {
            return false;
        }
        FeatureFlag featureFlag = (FeatureFlag) obj;
        return aa4.e(this.key, featureFlag.key) && this.enabled == featureFlag.enabled && aa4.e(this.variant, featureFlag.variant) && aa4.e(this.metadata, featureFlag.metadata) && aa4.e(this.reason, featureFlag.reason) && aa4.e(this.failed, featureFlag.failed);
    }

    public final boolean getEnabled() {
        return this.enabled;
    }

    public final Boolean getFailed() {
        return this.failed;
    }

    public final String getKey() {
        return this.key;
    }

    public final FeatureFlagMetadata getMetadata() {
        return this.metadata;
    }

    public final EvaluationReason getReason() {
        return this.reason;
    }

    public final String getVariant() {
        return this.variant;
    }

    public int hashCode() {
        int iC = tg.c(this.key.hashCode() * 31, 31, this.enabled);
        String str = this.variant;
        int iHashCode = (this.metadata.hashCode() + ((iC + (str == null ? 0 : str.hashCode())) * 31)) * 31;
        EvaluationReason evaluationReason = this.reason;
        int iHashCode2 = (iHashCode + (evaluationReason == null ? 0 : evaluationReason.hashCode())) * 31;
        Boolean bool = this.failed;
        return iHashCode2 + (bool != null ? bool.hashCode() : 0);
    }

    public String toString() {
        return "FeatureFlag(key=" + this.key + ", enabled=" + this.enabled + ", variant=" + this.variant + ", metadata=" + this.metadata + ", reason=" + this.reason + ", failed=" + this.failed + ')';
    }

    public /* synthetic */ FeatureFlag(String str, boolean z, String str2, FeatureFlagMetadata featureFlagMetadata, EvaluationReason evaluationReason, Boolean bool, int i, jh2 jh2Var) {
        this(str, z, str2, featureFlagMetadata, evaluationReason, (i & 32) != 0 ? null : bool);
    }
}
