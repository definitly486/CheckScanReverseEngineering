package com.google.android.gms.auth.api;

import android.os.Bundle;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.internal.Objects;

/* JADX INFO: loaded from: classes4.dex */
@Deprecated
public final class zbd implements Api.ApiOptions.Optional {
    public static final zbd zba = new zbd(new zbc());
    public final boolean b;
    public final String c;

    public zbd(zbc zbcVar) {
        this.b = zbcVar.a.booleanValue();
        this.c = zbcVar.b;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zbd)) {
            return false;
        }
        zbd zbdVar = (zbd) obj;
        return Objects.equal(null, null) && this.b == zbdVar.b && Objects.equal(this.c, zbdVar.c);
    }

    public final int hashCode() {
        return Objects.hashCode(null, Boolean.valueOf(this.b), this.c);
    }

    public final Bundle zba() {
        Bundle bundle = new Bundle();
        bundle.putString("consumer_package", null);
        bundle.putBoolean("force_save_dialog", this.b);
        bundle.putString("log_session_id", this.c);
        return bundle;
    }
}
