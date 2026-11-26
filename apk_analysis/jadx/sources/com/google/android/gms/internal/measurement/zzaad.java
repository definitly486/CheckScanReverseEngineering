package com.google.android.gms.internal.measurement;

import defpackage.xoa;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzaad {
    public static final String[] a = {"com.google.android.gms.internal.measurement.zzaaj", "com.google.common.flogger.backend.google.GooglePlatform", "com.google.common.flogger.backend.system.DefaultPlatform"};

    public static int zza() {
        return zzabt.zza();
    }

    public static zzaac zzb() {
        return xoa.a.a();
    }

    public static zzzf zzd(String str) {
        return xoa.a.b(str);
    }

    public static zzaat zzf() {
        return xoa.a.c();
    }

    public static boolean zzh(String str, Level level, boolean z) {
        zzf().zzb(str, level, z);
        return false;
    }

    public static zzabe zzi() {
        return zzf().zzc();
    }

    public static zzzj zzj() {
        return zzf().zzd();
    }

    public static long zzk() {
        xoa.a.getClass();
        return TimeUnit.MILLISECONDS.toNanos(System.currentTimeMillis());
    }

    public static String zzm() {
        xoa.a.getClass();
        return "platform: Android";
    }

    public abstract zzaaj.a a();

    public abstract zzzf b(String str);

    public zzaat c() {
        return zzaat.zze();
    }
}
