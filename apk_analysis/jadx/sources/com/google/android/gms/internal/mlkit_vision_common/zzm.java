package com.google.android.gms.internal.mlkit_vision_common;

import defpackage.qub;
import defpackage.t6c;

/* JADX INFO: loaded from: classes4.dex */
public final class zzm extends qub {
    public zzm() {
        this.a = new Object[4];
        this.b = 0;
    }

    public final zzm zzb(Object obj) {
        zza(obj);
        return this;
    }

    public final zzp zzc() {
        this.c = true;
        Object[] objArr = this.a;
        int i = this.b;
        t6c t6cVar = zzp.c;
        return i == 0 ? b.f : new b(objArr, i);
    }
}
