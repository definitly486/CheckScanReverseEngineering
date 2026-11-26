package com.google.android.gms.common.internal;

import android.os.Bundle;
import com.google.android.gms.common.api.Api;

/* JADX INFO: loaded from: classes4.dex */
public class TelemetryLoggingOptions implements Api.ApiOptions.Optional {
    public static final TelemetryLoggingOptions zaa = builder().build();
    public final String b;

    public static class Builder {
        public String a;

        public Builder() {
            throw null;
        }

        public TelemetryLoggingOptions build() {
            return new TelemetryLoggingOptions(this.a);
        }

        public Builder setApi(String str) {
            this.a = str;
            return this;
        }
    }

    public /* synthetic */ TelemetryLoggingOptions(String str) {
        this.b = str;
    }

    public static Builder builder() {
        return new Builder();
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof TelemetryLoggingOptions) {
            return Objects.equal(this.b, ((TelemetryLoggingOptions) obj).b);
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hashCode(this.b);
    }

    public final Bundle zaa() {
        Bundle bundle = new Bundle();
        String str = this.b;
        if (str != null) {
            bundle.putString("api", str);
        }
        return bundle;
    }
}
