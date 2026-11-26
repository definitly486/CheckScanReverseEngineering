package com.google.android.gms.internal.measurement;

import android.content.Context;

/* JADX INFO: loaded from: classes4.dex */
public final class zzrw {
    public final Context a;
    public final zzsh b = new zzsh();

    public /* synthetic */ zzrw(Context context) {
        zzsq.zza(context != null, "Context cannot be null", new Object[0]);
        this.a = context.getApplicationContext();
    }

    public final zzrx zza() {
        return new zzrx(this);
    }
}
