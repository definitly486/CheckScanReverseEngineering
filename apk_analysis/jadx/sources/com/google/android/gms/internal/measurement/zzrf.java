package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.os.StrictMode;
import android.util.Log;
import androidx.compose.material3.internal.CalendarModelKt;
import com.google.android.gms.internal.measurement.zzmj;
import com.google.android.gms.internal.measurement.zzmk;
import com.google.android.gms.internal.measurement.zzno;
import com.google.android.gms.internal.measurement.zzrf;
import com.google.android.gms.internal.measurement.zzru;
import com.google.android.gms.internal.measurement.zzse;
import com.google.android.gms.internal.measurement.zzsv;
import com.google.common.util.concurrent.ListenableFuture;
import defpackage.en3;
import defpackage.fj3;
import defpackage.kd8;
import defpackage.ks;
import defpackage.ld8;
import defpackage.u24;
import defpackage.x1;
import defpackage.xh3;
import defpackage.xr4;
import java.io.IOException;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes4.dex */
public final class zzrf {
    public static final Object j = new Object();
    public static final Object k = new Object();
    public final Context a;
    public final kd8 b;
    public final kd8 c;
    public final kd8 d;
    public final kd8 e;
    public final kd8 f;
    public final Uri g;
    public volatile zzni h;
    public final Uri i;

    public zzrf(Context context, final kd8 kd8Var, kd8 kd8Var2, kd8 kd8Var3) {
        this.a = context;
        this.c = kd8Var;
        this.b = kd8Var3;
        this.d = kd8Var2;
        zzrz zzrzVarZza = zzsa.zza(context);
        zzrzVarZza.zzb("phenotype_storage_info");
        zzrzVarZza.zzc("storage-info.pb");
        this.g = zzrzVarZza.zzd();
        zzrz zzrzVarZza2 = zzsa.zza(context);
        zzrzVarZza2.zzb("phenotype_storage_info");
        zzrzVarZza2.zzc("device-encrypted-storage-info.pb");
        if (zzky.zza()) {
            zzrzVarZza2.zza();
        }
        this.i = zzrzVarZza2.zzd();
        this.e = ld8.a(new kd8() { // from class: ddc
            @Override // defpackage.kd8
            /* JADX INFO: renamed from: get */
            public final Object get2() {
                final zzrf zzrfVar = this.b;
                xr4 xr4Var = (xr4) zzrfVar.c.get2();
                xr4Var.getClass();
                zzmj zzmjVar = (zzmj) zzrfVar.b.get2();
                zzmjVar.getClass();
                ListenableFuture listenableFutureZzd = zzmjVar.zzd();
                int i = xh3.i;
                xh3 fj3Var = listenableFutureZzd instanceof xh3 ? (xh3) listenableFutureZzd : new fj3(listenableFutureZzd);
                int i2 = p.m;
                p.b bVar = new p.b(fj3Var, zzmk.class, ucc.b);
                fj3Var.addListener(bVar, nd5.a(xr4Var, bVar));
                lm3 lm3Var = new lm3() { // from class: zcc
                    @Override // defpackage.lm3
                    public final /* synthetic */ Object apply(Object obj) {
                        zzrf zzrfVar2 = zzrfVar;
                        zzno zznoVar = (zzno) obj;
                        zzse zzseVar = new zzse();
                        StrictMode.ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
                        StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(threadPolicy).permitDiskWrites().build());
                        try {
                            try {
                                synchronized (zzrf.j) {
                                    zzru zzruVar = (zzru) zzrfVar2.d.get2();
                                    Uri uri = zzrfVar2.g;
                                    zzsv zzsvVarZzb = zzsv.zzb(zznoVar.zza());
                                    zzsvVarZzb.zzc(zzseVar);
                                    zzruVar.zza(uri, zzsvVarZzb);
                                    zzrfVar2.h = zznoVar.zza();
                                }
                                synchronized (zzrf.k) {
                                    zzru zzruVar2 = (zzru) zzrfVar2.d.get2();
                                    Uri uri2 = zzrfVar2.i;
                                    zzsv zzsvVarZzb2 = zzsv.zzb(zznoVar.zzb());
                                    zzsvVarZzb2.zzc(zzseVar);
                                    zzruVar2.zza(uri2, zzsvVarZzb2);
                                    zznoVar.zzb();
                                }
                                StrictMode.setThreadPolicy(threadPolicy);
                                return null;
                            } catch (IOException e) {
                                throw new RuntimeException(e);
                            }
                        } catch (Throwable th) {
                            StrictMode.setThreadPolicy(threadPolicy);
                            throw th;
                        }
                    }
                };
                int i3 = x1.l;
                final x1.b bVar2 = new x1.b(bVar, lm3Var);
                bVar.addListener(bVar2, nd5.a(xr4Var, bVar2));
                bVar2.addListener(new Runnable() { // from class: adc
                    @Override // java.lang.Runnable
                    public final /* synthetic */ void run() {
                        try {
                            en3.V(bVar2);
                        } catch (Exception e) {
                            if (Log.isLoggable("StorageInfoHandler", 3)) {
                                Log.d("StorageInfoHandler", "Failed to get storage info from GMS", e);
                            }
                        }
                    }
                }, xr4Var);
                return bVar2;
            }
        });
        this.f = ld8.a(new kd8() { // from class: tcc
            @Override // defpackage.kd8
            /* JADX INFO: renamed from: get */
            public final Object get2() {
                xr4 xr4Var = (xr4) kd8Var.get2();
                xr4Var.getClass();
                return xr4Var.schedule((Callable) cdc.b, 10000L, TimeUnit.MILLISECONDS);
            }
        });
    }

    public final zzni a() {
        zzni zzniVarZzp;
        zzni zzniVar = this.h;
        if (zzniVar != null) {
            return zzniVar;
        }
        synchronized (j) {
            try {
                zzniVarZzp = this.h;
                if (zzniVarZzp == null) {
                    zzniVarZzp = zzni.zzp();
                    if (zzky.zzc(this.a)) {
                        zzss zzssVarZzb = zzss.zzb(zzniVarZzp);
                        StrictMode.ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
                        StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(threadPolicy).permitDiskReads().build());
                        try {
                            try {
                                zzni zzniVar2 = (zzni) ((zzru) this.d.get2()).zza(this.g, zzssVarZzb);
                                StrictMode.setThreadPolicy(threadPolicy);
                                zzniVarZzp = zzniVar2;
                            } catch (Throwable th) {
                                StrictMode.setThreadPolicy(threadPolicy);
                                throw th;
                            }
                        } catch (IOException unused) {
                            StrictMode.setThreadPolicy(threadPolicy);
                        }
                        this.h = zzniVarZzp;
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return zzniVarZzp;
    }

    public final ListenableFuture zza() {
        if (zzky.zzb(this.a) || a().zze() + CalendarModelKt.MillisecondsIn24Hours >= System.currentTimeMillis()) {
            return u24.c;
        }
        xr4 xr4Var = (xr4) this.c.get2();
        xr4Var.getClass();
        ListenableFuture listenableFutureY = en3.Y((ListenableFuture) this.f.get2());
        int i = xh3.i;
        return x1.p(listenableFutureY instanceof xh3 ? (xh3) listenableFutureY : new fj3(listenableFutureY), new ks() { // from class: bdc
            @Override // defpackage.ks
            public final /* synthetic */ ListenableFuture apply(Object obj) {
                return en3.Y((ListenableFuture) this.a.e.get2());
            }
        }, xr4Var);
    }

    public final boolean zzb(boolean z, zzabz zzabzVar) {
        zzni zzniVarA = a();
        return zzniVarA.zzc() && zzniVarA.zzi().contains(zzabzVar);
    }

    public final zzqn zzc(boolean z) {
        zzni zzniVarA = a();
        return new zzqn(zzniVarA.zzc(), com.google.common.collect.j.o(zzniVarA.zzi()), zzniVarA.zzb(), zzniVarA.zzd(), (zzniVarA.zzj() && zzniVarA.zzk().zzb() == ((long) Build.VERSION.SDK_INT)) ? zzniVarA.zzk().zza() : "", com.google.common.collect.j.o(zzniVarA.zzf()), com.google.common.collect.j.o(zzniVarA.zzh()), zzniVarA.zza(), zzniVarA.zzm(), zzniVarA.zzl(), zzniVarA.zzn());
    }
}
