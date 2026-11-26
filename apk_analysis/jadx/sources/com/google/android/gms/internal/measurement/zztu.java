package com.google.android.gms.internal.measurement;

import defpackage.o8;
import java.util.HashMap;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes4.dex */
public final class zztu {
    public Executor a;
    public zzru b;
    public final zzvc d = zzvc.zza;
    public final HashMap c = new HashMap();

    public final zztu zza(Executor executor) {
        this.a = executor;
        return this;
    }

    public final zztu zzb(zzru zzruVar) {
        this.b = zzruVar;
        return this;
    }

    public final zztu zzc(zzuw zzuwVar) {
        zzti.zza.getClass();
        HashMap map = this.c;
        o8.h(!map.containsKey("singleproc"), "There is already a factory registered for the ID %s", "singleproc");
        map.put("singleproc", zzuwVar);
        return this;
    }

    public final zztt zzd() {
        return new zztt(this.a, this.b, this.d, this.c);
    }
}
