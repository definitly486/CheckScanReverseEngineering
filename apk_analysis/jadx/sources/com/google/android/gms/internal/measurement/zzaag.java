package com.google.android.gms.internal.measurement;

import android.util.Log;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzaag extends zzzf {
    public final String a;

    public zzaag(String str) {
        this.a = str;
    }

    @Override // com.google.android.gms.internal.measurement.zzzf
    public String zza() {
        return this.a;
    }

    @Override // com.google.android.gms.internal.measurement.zzzf
    public void zzd(RuntimeException runtimeException, zzzd zzzdVar) {
        Log.e("AbstractAndroidBackend", "Internal logging error", runtimeException);
    }
}
