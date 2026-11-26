package androidx.privacysandbox.ads.adservices.adid;

import defpackage.aa4;
import defpackage.jh2;

/* JADX INFO: loaded from: classes3.dex */
public final class AdId {
    private final String adId;
    private final boolean isLimitAdTrackingEnabled;

    public AdId(String str, boolean z) {
        str.getClass();
        this.adId = str;
        this.isLimitAdTrackingEnabled = z;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AdId)) {
            return false;
        }
        AdId adId = (AdId) obj;
        return aa4.e(this.adId, adId.adId) && this.isLimitAdTrackingEnabled == adId.isLimitAdTrackingEnabled;
    }

    public final String getAdId() {
        return this.adId;
    }

    public int hashCode() {
        return Boolean.hashCode(this.isLimitAdTrackingEnabled) + (this.adId.hashCode() * 31);
    }

    public final boolean isLimitAdTrackingEnabled() {
        return this.isLimitAdTrackingEnabled;
    }

    public String toString() {
        return "AdId: adId=" + this.adId + ", isLimitAdTrackingEnabled=" + this.isLimitAdTrackingEnabled;
    }

    public /* synthetic */ AdId(String str, boolean z, int i, jh2 jh2Var) {
        this(str, (i & 2) != 0 ? false : z);
    }
}
