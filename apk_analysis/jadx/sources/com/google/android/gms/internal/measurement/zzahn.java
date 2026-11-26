package com.google.android.gms.internal.measurement;

import defpackage.kd8;
import defpackage.ld8;
import org.checkerframework.dataflow.qual.SideEffectFree;

/* JADX INFO: loaded from: classes4.dex */
public final class zzahn implements kd8 {
    public static final zzahn c = new zzahn();
    public final ld8.c b = new ld8.c(new zzahp());

    @SideEffectFree
    public static boolean zza() {
        c.get().zza();
        return true;
    }

    @SideEffectFree
    public static boolean zzb() {
        return c.get().zzb();
    }

    @SideEffectFree
    public static boolean zzc() {
        return c.get().zzc();
    }

    @SideEffectFree
    public static boolean zzd() {
        return c.get().zzd();
    }

    @Override // defpackage.kd8
    /* JADX INFO: renamed from: zze, reason: merged with bridge method [inline-methods] */
    public final zzaho get() {
        return (zzaho) this.b.b;
    }
}
