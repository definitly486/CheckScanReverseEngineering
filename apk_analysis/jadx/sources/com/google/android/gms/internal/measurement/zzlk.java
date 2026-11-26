package com.google.android.gms.internal.measurement;

import android.content.Context;
import com.google.android.gms.internal.measurement.zzlk;
import com.google.android.gms.internal.measurement.zzqm;
import defpackage.ah;
import defpackage.c3c;
import defpackage.f2c;
import defpackage.i2c;
import defpackage.kd8;
import defpackage.ld8;
import defpackage.m57;
import defpackage.n2c;
import defpackage.rz5;
import defpackage.xr4;
import defpackage.y2c;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;
import java.util.logging.Level;

/* JADX INFO: loaded from: classes4.dex */
public final class zzlk {
    public static final Object j = new Object();
    public static final AtomicReference k = new AtomicReference();
    public static volatile zzlk l = null;
    public static final kd8 m = ld8.a(y2c.b);
    public static final /* synthetic */ int zza = 0;
    public final zzol a = new zzol();
    public final Context b;
    public final kd8 c;
    public final kd8 d;
    public final kd8 e;
    public final kd8 f;
    public final zzrf g;
    public final kd8 h;
    public final zzqe i;

    public interface zza {
        rz5 zza();
    }

    public zzlk(Context context, kd8 kd8Var, kd8 kd8Var2, final i2c i2cVar, kd8 kd8Var3, f2c f2cVar) {
        Context applicationContext = context.getApplicationContext();
        applicationContext.getClass();
        kd8Var.getClass();
        kd8Var2.getClass();
        i2cVar.getClass();
        kd8Var3.getClass();
        f2cVar.getClass();
        kd8 kd8VarA = ld8.a(kd8Var);
        kd8 kd8VarA2 = ld8.a(kd8Var2);
        kd8 kd8VarA3 = ld8.a(new kd8() { // from class: a3c
            @Override // defpackage.kd8
            /* JADX INFO: renamed from: get */
            public final /* synthetic */ Object get2() {
                Object obj = zzlk.j;
                return (zzqm) ((rz5) i2cVar.get2()).e();
            }
        });
        kd8 kd8VarA4 = ld8.a(kd8Var3);
        kd8 kd8VarA5 = ld8.a(f2cVar);
        this.b = applicationContext;
        this.c = kd8VarA;
        this.d = kd8VarA2;
        this.e = kd8VarA3;
        this.f = kd8VarA4;
        this.g = new zzrf(applicationContext, kd8VarA, kd8VarA4, kd8VarA2);
        this.h = kd8VarA5;
        this.i = new zzqe(applicationContext, kd8VarA, kd8VarA3, kd8VarA2);
    }

    public static void zza(Context context) {
        Context applicationContext;
        AtomicReference atomicReference = k;
        if (atomicReference.get() != null) {
            return;
        }
        try {
            applicationContext = context.getApplicationContext();
        } catch (NullPointerException unused) {
            zzl();
            zzlz.zza(Level.WARNING, (Executor) m.get2(), "context.getApplicationContext() yielded NullPointerException", new Object[0]);
            applicationContext = null;
        }
        if (applicationContext != null) {
            while (!atomicReference.compareAndSet(null, applicationContext) && atomicReference.get() == null) {
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static zzlk zzb() {
        boolean z;
        zzlk zzlkVar;
        if (m57.d == null) {
            m57.d = new c3c();
        }
        Context context = (Context) k.get();
        if (context == null) {
            synchronized (m57.b) {
            }
            ah.f("Must call PhenotypeContext.setContext() first");
            return null;
        }
        zzlk zzlkVar2 = l;
        if (zzlkVar2 != null) {
            return zzlkVar2;
        }
        Context applicationContext = context.getApplicationContext();
        try {
            applicationContext.getClass();
            Object applicationContext2 = applicationContext.getApplicationContext();
            applicationContext2.getClass();
            if (!(applicationContext2 instanceof zzagp)) {
                Class<?> cls = applicationContext2.getClass();
                new StringBuilder(String.valueOf(cls).length() + 72);
                cls.toString();
                throw new IllegalStateException("Given application context does not implement GeneratedComponentManager: ".concat(String.valueOf(cls)));
            }
            try {
                Object objCast = zza.class.cast(((zzagp) applicationContext2).zza());
                objCast.getClass();
                rz5 rz5VarZza = ((zza) objCast).zza();
                z = true;
                try {
                    if (rz5VarZza.b()) {
                        return (zzlk) rz5VarZza.a();
                    }
                } catch (IllegalStateException unused) {
                }
            } catch (ClassCastException e) {
                throw new IllegalStateException("Failed to get an entry point. Did you mark your interface with @SingletonEntryPoint?", e);
            }
        } catch (IllegalStateException unused2) {
            z = false;
        }
        synchronized (j) {
            try {
                if (l != null) {
                    zzlkVar = l;
                } else {
                    rz5 rz5VarZza2 = defpackage.l.b;
                    boolean z2 = applicationContext instanceof zza;
                    if (z2) {
                        rz5VarZza2 = ((zza) applicationContext).zza();
                    }
                    zzlkVar = (zzlk) rz5VarZza2.d(new n2c(applicationContext));
                    l = zzlkVar;
                    if (!z && !z2) {
                        zzlz.zza(Level.CONFIG, zzlkVar.zzg(), "Application doesn't implement PhenotypeApplication interface, falling back to globally set context. See go/phenotype-flag#process-stable-init for more info.", new Object[0]);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzlkVar;
    }

    public static boolean zzl() {
        synchronized (m57.b) {
        }
        if (k.get() == null && m57.c == null) {
            m57.c = new c3c();
        }
        return false;
    }

    public final Context zzc() {
        return this.b;
    }

    public final zzrf zzd() {
        return this.g;
    }

    public final rz5 zze() {
        return (rz5) this.h.get2();
    }

    public final zzqe zzf() {
        return this.i;
    }

    public final xr4 zzg() {
        return (xr4) this.c.get2();
    }

    public final zzmj zzh() {
        return (zzmj) this.d.get2();
    }

    public final zzru zzi() {
        return (zzru) this.f.get2();
    }

    public final zzqm zzj() {
        return (zzqm) this.e.get2();
    }

    public final zzoh zzk() {
        return this.a;
    }
}
