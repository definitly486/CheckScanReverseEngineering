package com.google.android.gms.internal.measurement;

import com.google.common.collect.n;
import com.google.common.collect.z;
import defpackage.cac;
import defpackage.lm3;
import defpackage.se9;

/* JADX INFO: loaded from: classes4.dex */
public final class zzpj {
    public final lm3 a;
    public final z b;
    public boolean c;

    public zzpj(lm3 lm3Var) {
        int i = n.d;
        this.b = z.k;
        this.c = false;
        this.a = lm3Var;
    }

    public final zzpj zza() {
        this.c = true;
        return this;
    }

    public final zzph zzb() {
        cac cacVar = new cac(this.a, this.c, this.b);
        se9 se9Var = new se9();
        se9Var.b = cacVar;
        return se9Var;
    }
}
