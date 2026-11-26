package com.google.android.gms.internal.measurement;

import defpackage.kd8;
import defpackage.ld8;
import org.checkerframework.dataflow.qual.SideEffectFree;

/* JADX INFO: loaded from: classes4.dex */
public final class zzahe implements kd8 {
    public static final zzahe c = new zzahe();
    public final ld8.c b = new ld8.c(new zzahg());

    @SideEffectFree
    public static String zza() {
        return c.get().zza();
    }

    @SideEffectFree
    public static String zzb() {
        return c.get().zzb();
    }

    @SideEffectFree
    public static String zzc() {
        return c.get().zzc();
    }

    @Override // defpackage.kd8
    /* JADX INFO: renamed from: zzd, reason: merged with bridge method [inline-methods] */
    public final zzahf get() {
        return (zzahf) this.b.b;
    }
}
