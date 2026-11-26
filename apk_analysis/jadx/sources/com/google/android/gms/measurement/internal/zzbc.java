package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import defpackage.kh;
import defpackage.kv2;
import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
public final class zzbc {
    public final String a;
    public final String b;
    public final String c;
    public final long d;
    public final long e;
    public final long f;
    public final zzbf g;

    public zzbc(zzic zzicVar, String str, String str2, String str3, long j, long j2, long j3, Bundle bundle) {
        zzbf zzbfVar;
        Preconditions.checkNotEmpty(str2);
        Preconditions.checkNotEmpty(str3);
        this.a = str2;
        this.b = str3;
        this.c = true == TextUtils.isEmpty(str) ? null : str;
        this.d = j;
        this.e = j2;
        this.f = j3;
        if (j3 != 0 && j3 > j) {
            zzicVar.zzaW().zze().zzb("Event created with reverse previous/current timestamps. appId", zzgu.d(str2));
        }
        if (bundle == null || bundle.isEmpty()) {
            zzbfVar = new zzbf(new Bundle());
        } else {
            Bundle bundle2 = new Bundle(bundle);
            Iterator<String> it = bundle2.keySet().iterator();
            while (it.hasNext()) {
                String next = it.next();
                if (next == null) {
                    zzicVar.zzaW().zzb().zza("Param name can't be null");
                    it.remove();
                } else {
                    Object objG = zzicVar.zzk().g(bundle2.get(next), next);
                    if (objG == null) {
                        zzicVar.zzaW().zze().zzb("Param value can't be null", zzicVar.zzl().b(next));
                        it.remove();
                    } else {
                        zzicVar.zzk().o(bundle2, next, objG);
                    }
                }
            }
            zzbfVar = new zzbf(bundle2);
        }
        this.g = zzbfVar;
    }

    public final zzbc a(zzic zzicVar, long j) {
        return new zzbc(zzicVar, this.c, this.a, this.b, this.d, this.e, j, this.g);
    }

    public final String toString() {
        String string = this.g.toString();
        String str = this.a;
        int length = String.valueOf(str).length();
        String str2 = this.b;
        StringBuilder sb = new StringBuilder(length + 22 + String.valueOf(str2).length() + 10 + string.length() + 1);
        kv2.c(sb, "Event{appId='", str, "', name='", str2);
        return kh.c(sb, "', params=", string, "}");
    }

    public zzbc(zzic zzicVar, String str, String str2, String str3, long j, long j2, long j3, zzbf zzbfVar) {
        Preconditions.checkNotEmpty(str2);
        Preconditions.checkNotEmpty(str3);
        Preconditions.checkNotNull(zzbfVar);
        this.a = str2;
        this.b = str3;
        this.c = true == TextUtils.isEmpty(str) ? null : str;
        this.d = j;
        this.e = j2;
        this.f = j3;
        if (j3 != 0 && j3 > j) {
            zzicVar.zzaW().zze().zzc("Event created with reverse previous/current timestamps. appId, name", zzgu.d(str2), zzgu.d(str3));
        }
        this.g = zzbfVar;
    }
}
