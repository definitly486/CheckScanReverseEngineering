package com.google.android.gms.measurement.internal;

import android.os.Looper;
import com.google.android.gms.internal.measurement.zzcl;
import defpackage.bm2;
import defpackage.c9c;
import defpackage.f9c;
import defpackage.qhb;

/* JADX INFO: loaded from: classes4.dex */
public final class zzoc extends qhb {
    public zzcl c;
    public boolean d;
    public final f9c e;
    public final c9c f;
    public final bm2 g;

    public zzoc(zzic zzicVar) {
        super(zzicVar);
        this.d = true;
        this.e = new f9c(this);
        this.f = new c9c(this);
        bm2 bm2Var = new bm2();
        bm2Var.b = this;
        this.g = bm2Var;
    }

    public final void b() {
        zzg();
        if (this.c == null) {
            this.c = new zzcl(Looper.getMainLooper());
        }
    }

    @Override // defpackage.qhb
    public final boolean zze() {
        return false;
    }
}
