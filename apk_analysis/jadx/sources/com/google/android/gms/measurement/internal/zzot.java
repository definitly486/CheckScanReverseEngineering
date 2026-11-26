package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.zzis;
import java.util.Collections;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class zzot {
    public final String a;
    public final Map b;
    public final zzls c;
    public final zzis d;

    public zzot(String str, Map map, zzls zzlsVar, zzis zzisVar) {
        this.a = str;
        this.b = map;
        this.c = zzlsVar;
        this.d = zzisVar;
    }

    public final String zza() {
        return this.a;
    }

    public final Map zzb() {
        Map map = this.b;
        return map == null ? Collections.EMPTY_MAP : map;
    }

    public final zzls zzc() {
        return this.c;
    }

    public final zzis zzd() {
        return this.d;
    }
}
