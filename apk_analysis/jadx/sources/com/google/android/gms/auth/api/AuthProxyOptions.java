package com.google.android.gms.auth.api;

import android.os.Bundle;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.internal.Objects;

/* JADX INFO: loaded from: classes4.dex */
public final class AuthProxyOptions implements Api.ApiOptions.Optional {
    public static final AuthProxyOptions zza = new AuthProxyOptions(new Bundle());
    public final Bundle b;

    public /* synthetic */ AuthProxyOptions(Bundle bundle) {
        this.b = bundle;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof AuthProxyOptions) {
            return Objects.checkBundlesEquality(this.b, ((AuthProxyOptions) obj).b);
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hashCode(this.b);
    }

    public final Bundle zza() {
        return new Bundle(this.b);
    }
}
