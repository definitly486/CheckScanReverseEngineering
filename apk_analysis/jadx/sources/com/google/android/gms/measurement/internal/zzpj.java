package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import com.google.android.gms.internal.measurement.zzib;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class zzpj {
    public final long a;
    public final zzib b;
    public final String c;
    public final HashMap d;
    public final zzls e;
    public final long f;
    public final long g;
    public final long h;
    public final int i;

    public /* synthetic */ zzpj(long j, zzib zzibVar, String str, HashMap map, zzls zzlsVar, long j2, long j3, long j4, int i) {
        this.a = j;
        this.b = zzibVar;
        this.c = str;
        this.d = map;
        this.e = zzlsVar;
        this.f = j2;
        this.g = j3;
        this.h = j4;
        this.i = i;
    }

    public final zzot zza() {
        return new zzot(this.c, this.d, this.e, null);
    }

    public final zzom zzb() {
        Bundle bundle = new Bundle();
        for (Map.Entry entry : this.d.entrySet()) {
            bundle.putString((String) entry.getKey(), (String) entry.getValue());
        }
        return new zzom(this.a, this.b.zzcd(), this.c, bundle, this.e.zza(), this.g, "");
    }

    public final long zzc() {
        return this.a;
    }

    public final zzib zzd() {
        return this.b;
    }

    public final String zze() {
        return this.c;
    }

    public final zzls zzf() {
        return this.e;
    }

    public final long zzg() {
        return this.f;
    }

    public final long zzh() {
        return this.h;
    }

    public final int zzi() {
        return this.i;
    }
}
