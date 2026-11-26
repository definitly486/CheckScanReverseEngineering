package com.google.android.gms.internal.mlkit_common;

import android.content.Context;
import android.content.res.Resources;
import androidx.core.os.ConfigurationCompat;
import androidx.core.os.LocaleListCompat;
import com.google.android.gms.common.internal.LibraryVersion;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.tasks.Task;
import defpackage.ep1;
import defpackage.ly4;
import defpackage.sc5;
import defpackage.xlb;
import defpackage.xt7;
import defpackage.z17;
import java.util.HashMap;
import java.util.Objects;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes4.dex */
public final class zzsh {
    public static zzaf i;
    public static final zzai j = zzai.zzc("optional-module-barcode", "com.google.android.gms.vision.barcode");
    public final String a;
    public final String b;
    public final zzrz c;
    public final xt7 d;
    public final Task e;
    public final Task f;
    public final String g;
    public final int h;

    public zzsh(Context context, final xt7 xt7Var, zzrz zzrzVar, String str) {
        new HashMap();
        new HashMap();
        this.a = context.getPackageName();
        this.b = ep1.a(context);
        this.d = xt7Var;
        this.c = zzrzVar;
        zzsv.zza();
        this.g = str;
        ly4.a();
        this.e = ly4.b(new Callable() { // from class: com.google.android.gms.internal.mlkit_common.zzse
            @Override // java.util.concurrent.Callable
            public final Object call() {
                zzsh zzshVar = this.zza;
                zzshVar.getClass();
                return LibraryVersion.getInstance().getVersion(zzshVar.g);
            }
        });
        ly4.a();
        Objects.requireNonNull(xt7Var);
        this.f = ly4.b(new Callable() { // from class: com.google.android.gms.internal.mlkit_common.zzsf
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return xt7Var.a();
            }
        });
        zzai zzaiVar = j;
        this.h = zzaiVar.containsKey(str) ? DynamiteModule.getRemoteVersion(context, (String) zzaiVar.get(str)) : -1;
    }

    public final zzqt a(String str, String str2) {
        zzaf zzafVarZzc;
        zzqt zzqtVar = new zzqt();
        zzqtVar.zzb(this.a);
        zzqtVar.zzc(this.b);
        synchronized (zzsh.class) {
            try {
                zzafVarZzc = i;
                if (zzafVarZzc == null) {
                    LocaleListCompat locales = ConfigurationCompat.getLocales(Resources.getSystem().getConfiguration());
                    zzac zzacVar = new zzac();
                    for (int i2 = 0; i2 < locales.size(); i2++) {
                        zzacVar.zzb(ep1.b(locales.get(i2)));
                    }
                    zzafVarZzc = zzacVar.zzc();
                    i = zzafVarZzc;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        zzqtVar.zzh(zzafVarZzc);
        zzqtVar.zzg(Boolean.TRUE);
        zzqtVar.zzl(str);
        zzqtVar.zzj(str2);
        zzqtVar.zzi(this.f.isSuccessful() ? (String) this.f.getResult() : this.d.a());
        zzqtVar.zzd(10);
        zzqtVar.zzk(Integer.valueOf(this.h));
        return zzqtVar;
    }

    public final void zzd(final zzry zzryVar, final zzmv zzmvVar) throws Throwable {
        final String version;
        Task task = this.e;
        if (task.isSuccessful()) {
            version = (String) task.getResult();
        } else {
            version = LibraryVersion.getInstance().getVersion(this.g);
        }
        xlb.zza.execute(new Runnable() { // from class: com.google.android.gms.internal.mlkit_common.zzsd
            @Override // java.lang.Runnable
            public final void run() {
                zzsh zzshVar = this.zza;
                zzry zzryVar2 = zzryVar;
                zzmv zzmvVar2 = zzmvVar;
                String str = version;
                zzshVar.getClass();
                zzryVar2.zza(zzmvVar2);
                zzryVar2.zzc(zzshVar.a(zzryVar2.zzd(), str));
                zzshVar.c.zza(zzryVar2);
            }
        });
    }

    public final void zze(zzry zzryVar, z17 z17Var, boolean z, int i2) {
        zzsi zzsiVarZzh = zzsj.zzh();
        zzsiVarZzh.zzf(false);
        z17Var.getClass();
        zzsiVarZzh.zzd(null);
        zzsiVarZzh.zza(zzna.FAILED);
        zzsiVarZzh.zzb(zzmu.DOWNLOAD_FAILED);
        zzsiVarZzh.zzc(i2);
        zzg(zzryVar, z17Var, zzsiVarZzh.zzh());
    }

    public final void zzf(zzry zzryVar, z17 z17Var, zzmu zzmuVar, boolean z, sc5 sc5Var, zzna zznaVar) {
        zzsi zzsiVarZzh = zzsj.zzh();
        zzsiVarZzh.zzf(z);
        zzsiVarZzh.zzd(sc5Var);
        zzsiVarZzh.zzb(zzmuVar);
        zzsiVarZzh.zza(zznaVar);
        zzg(zzryVar, z17Var, zzsiVarZzh.zzh());
    }

    public final void zzg(final zzry zzryVar, final z17 z17Var, final zzsj zzsjVar) {
        xlb.zza.execute(new Runnable() { // from class: com.google.android.gms.internal.mlkit_common.zzsg
            @Override // java.lang.Runnable
            public final void run() throws Throwable {
                String version;
                zzsh zzshVar = this.zza;
                zzry zzryVar2 = zzryVar;
                zzsj zzsjVar2 = zzsjVar;
                z17 z17Var2 = z17Var;
                zzshVar.getClass();
                zzryVar2.zza(zzmv.MODEL_DOWNLOAD);
                String strZze = zzsjVar2.zze();
                Task task = zzshVar.e;
                if (task.isSuccessful()) {
                    version = (String) task.getResult();
                } else {
                    version = LibraryVersion.getInstance().getVersion(zzshVar.g);
                }
                zzryVar2.zzc(zzshVar.a(strZze, version));
                zzryVar2.zzb(zzst.zza(z17Var2, zzshVar.d, zzsjVar2));
                zzshVar.c.zza(zzryVar2);
            }
        });
    }
}
