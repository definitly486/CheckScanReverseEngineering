package com.google.android.gms.internal.measurement;

import defpackage.kd8;
import defpackage.ld8;
import org.checkerframework.dataflow.qual.SideEffectFree;

/* JADX INFO: loaded from: classes4.dex */
public final class zzagy implements kd8 {
    public static final zzagy c = new zzagy();
    public final ld8.c b = new ld8.c(new zzaha());

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
    public final zzagz get() {
        return (zzagz) this.b.b;
    }
}
