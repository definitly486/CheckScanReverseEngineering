package com.google.android.gms.internal.measurement;

import defpackage.kd8;
import defpackage.ld8;
import org.checkerframework.dataflow.qual.SideEffectFree;

/* JADX INFO: loaded from: classes4.dex */
public final class zzahk implements kd8 {
    public static final zzahk c = new zzahk();
    public final ld8.c b = new ld8.c(new zzahm());

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

    @Override // defpackage.kd8
    /* JADX INFO: renamed from: zzd, reason: merged with bridge method [inline-methods] */
    public final zzahl get() {
        return (zzahl) this.b.b;
    }
}
