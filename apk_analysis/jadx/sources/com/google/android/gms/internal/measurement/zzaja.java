package com.google.android.gms.internal.measurement;

import defpackage.kd8;
import defpackage.ld8;
import org.checkerframework.dataflow.qual.SideEffectFree;

/* JADX INFO: loaded from: classes4.dex */
public final class zzaja implements kd8 {
    public static final zzaja c = new zzaja();
    public final ld8.c b = new ld8.c(new zzajc());

    @SideEffectFree
    public static boolean zza() {
        c.get().zza();
        return true;
    }

    @SideEffectFree
    public static boolean zzb() {
        return c.get().zzb();
    }

    @Override // defpackage.kd8
    /* JADX INFO: renamed from: zzc, reason: merged with bridge method [inline-methods] */
    public final zzajb get() {
        return (zzajb) this.b.b;
    }
}
