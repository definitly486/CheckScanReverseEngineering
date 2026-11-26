package androidx.camera.core.processing.concurrent;

import androidx.camera.core.processing.util.OutConfig;
import defpackage.o2;

/* JADX INFO: loaded from: classes.dex */
final class AutoValue_DualOutConfig extends DualOutConfig {
    private final OutConfig primaryOutConfig;
    private final OutConfig secondaryOutConfig;

    public AutoValue_DualOutConfig(OutConfig outConfig, OutConfig outConfig2) {
        if (outConfig == null) {
            o2.d("Null primaryOutConfig");
            throw null;
        }
        this.primaryOutConfig = outConfig;
        if (outConfig2 != null) {
            this.secondaryOutConfig = outConfig2;
        } else {
            o2.d("Null secondaryOutConfig");
            throw null;
        }
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof DualOutConfig) {
            DualOutConfig dualOutConfig = (DualOutConfig) obj;
            if (this.primaryOutConfig.equals(dualOutConfig.getPrimaryOutConfig()) && this.secondaryOutConfig.equals(dualOutConfig.getSecondaryOutConfig())) {
                return true;
            }
        }
        return false;
    }

    @Override // androidx.camera.core.processing.concurrent.DualOutConfig
    public OutConfig getPrimaryOutConfig() {
        return this.primaryOutConfig;
    }

    @Override // androidx.camera.core.processing.concurrent.DualOutConfig
    public OutConfig getSecondaryOutConfig() {
        return this.secondaryOutConfig;
    }

    public int hashCode() {
        return this.secondaryOutConfig.hashCode() ^ ((this.primaryOutConfig.hashCode() ^ 1000003) * 1000003);
    }

    public String toString() {
        return "DualOutConfig{primaryOutConfig=" + this.primaryOutConfig + ", secondaryOutConfig=" + this.secondaryOutConfig + "}";
    }
}
