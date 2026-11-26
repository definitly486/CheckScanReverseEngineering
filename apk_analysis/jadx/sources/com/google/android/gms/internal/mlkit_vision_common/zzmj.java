package com.google.android.gms.internal.mlkit_vision_common;

import android.content.Context;
import android.content.res.Resources;
import android.os.SystemClock;
import androidx.core.os.ConfigurationCompat;
import androidx.core.os.LocaleListCompat;
import androidx.work.WorkRequest;
import com.google.android.gms.common.internal.LibraryVersion;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.tasks.Task;
import defpackage.ep1;
import defpackage.ly4;
import defpackage.xlb;
import defpackage.xt7;
import java.util.HashMap;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes4.dex */
public final class zzmj {
    public static zzp j;
    public static final zzr k = zzr.zzc("optional-module-barcode", "com.google.android.gms.vision.barcode");
    public final String a;
    public final String b;
    public final zzmc c;
    public final xt7 d;
    public final Task e;
    public final Task f;
    public final String g;
    public final int h;
    public final HashMap i = new HashMap();

    public zzmj(Context context, final xt7 xt7Var, zzmc zzmcVar, String str) {
        new HashMap();
        this.a = context.getPackageName();
        this.b = ep1.a(context);
        this.d = xt7Var;
        this.c = zzmcVar;
        zzmw.zza();
        this.g = str;
        ly4.a();
        this.e = ly4.b(new Callable() { // from class: com.google.android.gms.internal.mlkit_vision_common.zzmg
            @Override // java.util.concurrent.Callable
            public final Object call() {
                zzmj zzmjVar = this.zza;
                zzmjVar.getClass();
                return LibraryVersion.getInstance().getVersion(zzmjVar.g);
            }
        });
        ly4.a();
        xt7Var.getClass();
        this.f = ly4.b(new Callable() { // from class: com.google.android.gms.internal.mlkit_vision_common.zzmh
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return xt7Var.a();
            }
        });
        zzr zzrVar = k;
        this.h = zzrVar.containsKey(str) ? DynamiteModule.getRemoteVersion(context, (String) zzrVar.get(str)) : -1;
    }

    public final void zzc(zzmt zzmtVar, final zziv zzivVar) {
        zzii zziiVar;
        zzio zzioVar;
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        HashMap map = this.i;
        if (map.get(zzivVar) != null && jElapsedRealtime - ((Long) map.get(zzivVar)).longValue() <= WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS) {
            return;
        }
        map.put(zzivVar, Long.valueOf(jElapsedRealtime));
        int i = zzmtVar.zza;
        int i2 = zzmtVar.zzb;
        int i3 = zzmtVar.zzc;
        int i4 = zzmtVar.zzd;
        int i5 = zzmtVar.zze;
        long j2 = zzmtVar.zzf;
        int i6 = zzmtVar.zzg;
        zzin zzinVar = new zzin();
        if (i == -1) {
            zziiVar = zzii.BITMAP;
        } else if (i == 35) {
            zziiVar = zzii.YUV_420_888;
        } else if (i == 842094169) {
            zziiVar = zzii.YV12;
        } else if (i != 16) {
            zziiVar = i != 17 ? zzii.UNKNOWN_FORMAT : zzii.NV21;
        } else {
            zziiVar = zzii.NV16;
        }
        zzinVar.zzd(zziiVar);
        if (i2 == 1) {
            zzioVar = zzio.BITMAP;
        } else if (i2 == 2) {
            zzioVar = zzio.BYTEARRAY;
        } else if (i2 != 3) {
            zzioVar = i2 != 4 ? zzio.ANDROID_MEDIA_IMAGE : zzio.FILEPATH;
        } else {
            zzioVar = zzio.BYTEBUFFER;
        }
        zzinVar.zzf(zzioVar);
        zzinVar.zzc(Integer.valueOf(i3));
        zzinVar.zze(Integer.valueOf(i4));
        zzinVar.zzg(Integer.valueOf(i5));
        zzinVar.zzb(Long.valueOf(j2));
        zzinVar.zzh(Integer.valueOf(i6));
        zziq zziqVarZzj = zzinVar.zzj();
        zziw zziwVar = new zziw();
        zziwVar.zzd(zziqVarZzj);
        final zzmb zzmbVarZze = zzmk.zze(zziwVar);
        Task task = this.e;
        final String version = task.isSuccessful() ? (String) task.getResult() : LibraryVersion.getInstance().getVersion(this.g);
        xlb.zza.execute(new Runnable() { // from class: com.google.android.gms.internal.mlkit_vision_common.zzmi
            @Override // java.lang.Runnable
            public final void run() {
                zzp zzpVarZzc;
                zzmj zzmjVar = this.zza;
                zzmb zzmbVar = zzmbVarZze;
                zziv zzivVar2 = zzivVar;
                String str = version;
                zzmjVar.getClass();
                zzmbVar.zza(zzivVar2);
                String strZzc = zzmbVar.zzc();
                zzky zzkyVar = new zzky();
                zzkyVar.zzb(zzmjVar.a);
                zzkyVar.zzc(zzmjVar.b);
                synchronized (zzmj.class) {
                    try {
                        zzpVarZzc = zzmj.j;
                        if (zzpVarZzc == null) {
                            LocaleListCompat locales = ConfigurationCompat.getLocales(Resources.getSystem().getConfiguration());
                            zzm zzmVar = new zzm();
                            for (int i7 = 0; i7 < locales.size(); i7++) {
                                zzmVar.zzb(ep1.b(locales.get(i7)));
                            }
                            zzpVarZzc = zzmVar.zzc();
                            zzmj.j = zzpVarZzc;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                zzkyVar.zzh(zzpVarZzc);
                zzkyVar.zzg(Boolean.TRUE);
                zzkyVar.zzl(strZzc);
                zzkyVar.zzj(str);
                zzkyVar.zzi(zzmjVar.f.isSuccessful() ? (String) zzmjVar.f.getResult() : zzmjVar.d.a());
                zzkyVar.zzd(10);
                zzkyVar.zzk(Integer.valueOf(zzmjVar.h));
                zzmbVar.zzb(zzkyVar);
                zzmjVar.c.zza(zzmbVar);
            }
        });
    }
}
