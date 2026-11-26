package com.google.android.gms.internal.mlkit_vision_barcode;

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
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Objects;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes4.dex */
public final class zzwp {
    public static zzcs k;
    public static final zzcu l = zzcu.zzc("optional-module-barcode", "com.google.android.gms.vision.barcode");
    public final String a;
    public final String b;
    public final zzwf c;
    public final xt7 d;
    public final Task e;
    public final Task f;
    public final String g;
    public final int h;
    public final HashMap i = new HashMap();
    public final HashMap j = new HashMap();

    public zzwp(Context context, final xt7 xt7Var, zzwf zzwfVar, String str) {
        this.a = context.getPackageName();
        this.b = ep1.a(context);
        this.d = xt7Var;
        this.c = zzwfVar;
        zzxb.zza();
        this.g = str;
        ly4.a();
        this.e = ly4.b(new Callable() { // from class: com.google.android.gms.internal.mlkit_vision_barcode.zzwl
            @Override // java.util.concurrent.Callable
            public final Object call() {
                zzwp zzwpVar = this.zza;
                zzwpVar.getClass();
                return LibraryVersion.getInstance().getVersion(zzwpVar.g);
            }
        });
        ly4.a();
        Objects.requireNonNull(xt7Var);
        this.f = ly4.b(new Callable() { // from class: com.google.android.gms.internal.mlkit_vision_barcode.zzwm
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return xt7Var.a();
            }
        });
        zzcu zzcuVar = l;
        this.h = zzcuVar.containsKey(str) ? DynamiteModule.getRemoteVersion(context, (String) zzcuVar.get(str)) : -1;
    }

    public static long a(ArrayList arrayList, double d) {
        return ((Long) arrayList.get(Math.max(((int) Math.ceil((d / 100.0d) * ((double) arrayList.size()))) - 1, 0))).longValue();
    }

    public final String b() {
        Task task = this.e;
        if (task.isSuccessful()) {
            return (String) task.getResult();
        }
        return LibraryVersion.getInstance().getVersion(this.g);
    }

    public final boolean c(zzrc zzrcVar, long j) {
        HashMap map = this.i;
        return map.get(zzrcVar) == null || j - ((Long) map.get(zzrcVar)).longValue() > WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS;
    }

    public final void zzd(zzwe zzweVar, zzrc zzrcVar) {
        zze(zzweVar, zzrcVar, b());
    }

    public final void zze(final zzwe zzweVar, final zzrc zzrcVar, final String str) {
        xlb.zza.execute(new Runnable() { // from class: com.google.android.gms.internal.mlkit_vision_barcode.zzwj
            @Override // java.lang.Runnable
            public final void run() {
                zzcs zzcsVarZzf;
                zzwp zzwpVar = this.zza;
                zzwe zzweVar2 = zzweVar;
                zzrc zzrcVar2 = zzrcVar;
                String str2 = str;
                zzwpVar.getClass();
                zzweVar2.zzb(zzrcVar2);
                String strZzd = zzweVar2.zzd();
                zzvb zzvbVar = new zzvb();
                zzvbVar.zzb(zzwpVar.a);
                zzvbVar.zzc(zzwpVar.b);
                synchronized (zzwp.class) {
                    try {
                        zzcsVarZzf = zzwp.k;
                        if (zzcsVarZzf == null) {
                            LocaleListCompat locales = ConfigurationCompat.getLocales(Resources.getSystem().getConfiguration());
                            zzcp zzcpVar = new zzcp();
                            for (int i = 0; i < locales.size(); i++) {
                                zzcpVar.zzd(ep1.b(locales.get(i)));
                            }
                            zzcsVarZzf = zzcpVar.zzf();
                            zzwp.k = zzcsVarZzf;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                zzvbVar.zzh(zzcsVarZzf);
                zzvbVar.zzg(Boolean.TRUE);
                zzvbVar.zzl(strZzd);
                zzvbVar.zzj(str2);
                zzvbVar.zzi(zzwpVar.f.isSuccessful() ? (String) zzwpVar.f.getResult() : zzwpVar.d.a());
                zzvbVar.zzd(10);
                zzvbVar.zzk(Integer.valueOf(zzwpVar.h));
                zzweVar2.zzc(zzvbVar);
                zzwpVar.c.zza(zzweVar2);
            }
        });
    }

    public final void zzf(zzwo zzwoVar, zzrc zzrcVar) {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        if (c(zzrcVar, jElapsedRealtime)) {
            this.i.put(zzrcVar, Long.valueOf(jElapsedRealtime));
            zze(zzwoVar.zza(), zzrcVar, b());
        }
    }
}
