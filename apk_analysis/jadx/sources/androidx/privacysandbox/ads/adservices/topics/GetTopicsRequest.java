package androidx.privacysandbox.ads.adservices.topics;

import defpackage.aa4;
import defpackage.ah;
import defpackage.jh2;

/* JADX INFO: loaded from: classes3.dex */
public final class GetTopicsRequest {
    private final String adsSdkName;
    private final boolean shouldRecordObservation;

    public static final class Builder {
        private String adsSdkName = "";
        private boolean shouldRecordObservation = true;

        public final GetTopicsRequest build() {
            return new GetTopicsRequest(this.adsSdkName, this.shouldRecordObservation);
        }

        public final Builder setAdsSdkName(String str) {
            str.getClass();
            if (str.length() > 0) {
                this.adsSdkName = str;
                return this;
            }
            ah.f("adsSdkName must be set");
            return null;
        }

        public final Builder setShouldRecordObservation(boolean z) {
            this.shouldRecordObservation = z;
            return this;
        }
    }

    public /* synthetic */ GetTopicsRequest(String str, boolean z, int i, jh2 jh2Var) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? false : z);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof GetTopicsRequest)) {
            return false;
        }
        GetTopicsRequest getTopicsRequest = (GetTopicsRequest) obj;
        return aa4.e(this.adsSdkName, getTopicsRequest.adsSdkName) && this.shouldRecordObservation == getTopicsRequest.shouldRecordObservation;
    }

    public final String getAdsSdkName() {
        return this.adsSdkName;
    }

    public int hashCode() {
        return Boolean.hashCode(this.shouldRecordObservation) + (this.adsSdkName.hashCode() * 31);
    }

    public final boolean shouldRecordObservation() {
        return this.shouldRecordObservation;
    }

    public String toString() {
        return "GetTopicsRequest: adsSdkName=" + this.adsSdkName + ", shouldRecordObservation=" + this.shouldRecordObservation;
    }

    public GetTopicsRequest(String str, boolean z) {
        str.getClass();
        this.adsSdkName = str;
        this.shouldRecordObservation = z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public GetTopicsRequest() {
        this(null, false, 3, 0 == true ? 1 : 0);
    }
}
