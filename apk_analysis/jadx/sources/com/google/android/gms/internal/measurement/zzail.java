package com.google.android.gms.internal.measurement;

import defpackage.kd8;
import defpackage.ld8;
import org.checkerframework.dataflow.qual.SideEffectFree;

/* JADX INFO: loaded from: classes4.dex */
public final class zzail implements kd8 {
    public static final zzail c = new zzail();
    public final ld8.c b = new ld8.c(new zzain());

    @SideEffectFree
    public static boolean zza() {
        return c.get().zza();
    }

    @SideEffectFree
    public static boolean zzb() {
        return c.get().zzb();
    }

    @Override // defpackage.kd8
    /* JADX INFO: renamed from: zzc, reason: merged with bridge method [inline-methods] */
    public final zzaim get() {
        return (zzaim) this.b.b;
    }
}
