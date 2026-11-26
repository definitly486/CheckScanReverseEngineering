package com.google.android.gms.internal.measurement;

import defpackage.kd8;
import defpackage.ld8;
import org.checkerframework.dataflow.qual.SideEffectFree;

/* JADX INFO: loaded from: classes4.dex */
public final class zzaix implements kd8 {
    public static final zzaix c = new zzaix();
    public final ld8.c b = new ld8.c(new zzaiz());

    @SideEffectFree
    public static boolean zza() {
        return c.get().zza();
    }

    @Override // defpackage.kd8
    /* JADX INFO: renamed from: zzb, reason: merged with bridge method [inline-methods] */
    public final zzaiy get() {
        return (zzaiy) this.b.b;
    }
}
