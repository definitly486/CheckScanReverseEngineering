package com.google.android.gms.internal.auth;

import android.net.Uri;
import defpackage.ah;
import defpackage.e2b;
import defpackage.j2b;
import defpackage.m2b;
import defpackage.p2b;

/* JADX INFO: loaded from: classes4.dex */
public final class zzcz {
    public final Uri a;
    public final String b;
    public final String c;
    public final boolean d;
    public final boolean e;

    public zzcz(Uri uri, boolean z, boolean z2) {
        this.a = uri;
        this.b = "";
        this.c = "";
        this.d = z;
        this.e = z2;
    }

    public final zzcz zza() {
        return new zzcz(this.a, this.d, true);
    }

    public final zzcz zzb() {
        if (this.b.isEmpty()) {
            return new zzcz(this.a, true, this.e);
        }
        ah.f("Cannot set GServices prefix and skip GServices");
        return null;
    }

    public final zzdc zzc(String str, double d) {
        return new m2b(this, str, Double.valueOf(0.0d));
    }

    public final zzdc zzd(String str, long j) {
        return new e2b(this, str, Long.valueOf(j));
    }

    public final zzdc zze(String str, boolean z) {
        return new j2b(this, str, Boolean.valueOf(z));
    }

    public final zzdc zzf(String str, Object obj, zzhy zzhyVar) {
        return new p2b(this, "getTokenRefactor__blocked_packages", obj);
    }

    public zzcz(Uri uri) {
        this(uri, false, false);
    }
}
