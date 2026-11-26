package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import androidx.collection.ArrayMap;
import defpackage.aoa;
import defpackage.hwa;
import defpackage.mdb;
import defpackage.u4;
import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
public final class zzd extends mdb {
    public final ArrayMap b;
    public final ArrayMap c;
    public long d;

    public zzd(zzic zzicVar) {
        super(zzicVar);
        this.c = new ArrayMap();
        this.b = new ArrayMap();
    }

    public final void a(long j, zzlu zzluVar) {
        zzic zzicVar = this.a;
        if (zzluVar == null) {
            zzicVar.zzaW().zzk().zza("Not logging ad exposure. No active activity");
            return;
        }
        if (j < 1000) {
            zzicVar.zzaW().zzk().zzb("Not logging ad exposure. Less than 1000 ms. exposure", Long.valueOf(j));
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putLong("_xt", j);
        zzpp.zzay(zzluVar, bundle, true);
        zzicVar.zzj().b("am", "_xa", bundle);
    }

    public final void b(String str, long j, zzlu zzluVar) {
        zzic zzicVar = this.a;
        if (zzluVar == null) {
            zzicVar.zzaW().zzk().zza("Not logging ad unit exposure. No active activity");
            return;
        }
        if (j < 1000) {
            zzicVar.zzaW().zzk().zzb("Not logging ad unit exposure. Less than 1000 ms. exposure", Long.valueOf(j));
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putString("_ai", str);
        bundle.putLong("_xt", j);
        zzpp.zzay(zzluVar, bundle, true);
        zzicVar.zzj().b("am", "_xu", bundle);
    }

    public final void c(long j) {
        ArrayMap arrayMap = this.b;
        Iterator it = arrayMap.keySet().iterator();
        while (it.hasNext()) {
            arrayMap.put((String) it.next(), Long.valueOf(j));
        }
        if (arrayMap.isEmpty()) {
            return;
        }
        this.d = j;
    }

    public final void zza(String str, long j) {
        zzic zzicVar = this.a;
        if (str == null || str.length() == 0) {
            u4.e(zzicVar, "Ad unit id must be a non-empty string");
        } else {
            zzicVar.zzaX().zzj(new aoa(this, str, j));
        }
    }

    public final void zzb(String str, long j) {
        zzic zzicVar = this.a;
        if (str == null || str.length() == 0) {
            u4.e(zzicVar, "Ad unit id must be a non-empty string");
        } else {
            zzicVar.zzaX().zzj(new hwa(this, str, j));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void zzc(long j) {
        zzlu zzluVarZzh = this.a.zzs().zzh(false);
        ArrayMap arrayMap = this.b;
        for (K k : arrayMap.keySet()) {
            b(k, j - ((Long) arrayMap.get(k)).longValue(), zzluVarZzh);
        }
        if (!arrayMap.isEmpty()) {
            a(j - this.d, zzluVarZzh);
        }
        c(j);
    }
}
