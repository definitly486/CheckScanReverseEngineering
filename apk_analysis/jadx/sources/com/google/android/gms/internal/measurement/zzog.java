package com.google.android.gms.internal.measurement;

import defpackage.g9c;
import defpackage.j9c;
import defpackage.n8c;
import defpackage.r8c;

/* JADX INFO: loaded from: classes4.dex */
public final class zzog {
    public final zzph a;

    public zzog(String str, zzph zzphVar) {
        this.a = zzphVar;
    }

    public final zzom zza(String str, boolean z) {
        return new n8c(str, this.a, z);
    }

    public final zzom zzb(String str, long j) {
        return new g9c(str, this.a, j);
    }

    public final zzom zzc(String str, double d) {
        return new r8c("measurement.test.double_flag", this.a);
    }

    public final zzom zzd(String str, String str2) {
        return new j9c(str, this.a, str2);
    }
}
