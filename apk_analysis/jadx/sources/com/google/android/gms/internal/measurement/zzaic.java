package com.google.android.gms.internal.measurement;

import defpackage.kd8;
import defpackage.ld8;
import org.checkerframework.dataflow.qual.SideEffectFree;

/* JADX INFO: loaded from: classes4.dex */
public final class zzaic implements kd8 {
    public static final zzaic c = new zzaic();
    public final ld8.c b = new ld8.c(new zzaie());

    @SideEffectFree
    public static boolean zza() {
        return c.get().zza();
    }

    @SideEffectFree
    public static long zzb() {
        return c.get().zzb();
    }

    @SideEffectFree
    public static double zzc() {
        return c.get().zzc();
    }

    @SideEffectFree
    public static long zzd() {
        return c.get().zzd();
    }

    @SideEffectFree
    public static long zze() {
        return c.get().zze();
    }

    @SideEffectFree
    public static String zzf() {
        return c.get().zzf();
    }

    @Override // defpackage.kd8
    /* JADX INFO: renamed from: zzg, reason: merged with bridge method [inline-methods] */
    public final zzaid get() {
        return (zzaid) this.b.b;
    }
}
