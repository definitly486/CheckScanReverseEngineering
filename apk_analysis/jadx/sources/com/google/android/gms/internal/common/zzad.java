package com.google.android.gms.internal.common;

import defpackage.soa;
import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
public final class zzad extends soa {
    public final zzad zzb(Object obj) {
        zza(obj);
        return this;
    }

    public final zzad zzc(Iterator it) {
        while (it.hasNext()) {
            zza(it.next());
        }
        return this;
    }

    public final zzah zzd() {
        this.c = true;
        return zzah.i(this.b, this.a);
    }
}
