package com.google.android.gms.internal.auth;

import android.content.Context;
import android.net.Uri;
import androidx.core.content.PermissionChecker;
import defpackage.a1b;
import defpackage.fg;
import defpackage.n1b;
import defpackage.yza;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzdc {
    public static final Object f = new Object();
    public static volatile yza g;
    public static final AtomicInteger h;
    public static final /* synthetic */ int zzd = 0;
    public final zzcz a;
    public final String b;
    public final Object c;
    public volatile int d = -1;
    public volatile Object e;

    static {
        new AtomicReference();
        new zzde(zzcu.zza);
        h = new AtomicInteger();
    }

    public /* synthetic */ zzdc(zzcz zzczVar, String str, Object obj) {
        if (zzczVar.a == null) {
            fg.c("Must pass a valid SharedPreferences file name or ContentProvider URI");
            throw null;
        }
        this.a = zzczVar;
        this.b = str;
        this.c = obj;
    }

    public static void zzc() {
        h.incrementAndGet();
    }

    public static void zzd(final Context context) {
        Context context2;
        if (g != null || context == null) {
            return;
        }
        Object obj = f;
        synchronized (obj) {
            try {
                if (g == null) {
                    synchronized (obj) {
                        try {
                            yza yzaVar = g;
                            Context applicationContext = context.getApplicationContext();
                            if (applicationContext != null) {
                                context = applicationContext;
                            }
                            if (yzaVar == null || yzaVar.a != context) {
                                zzcg.a();
                                zzdd.b();
                                synchronized (n1b.class) {
                                    try {
                                        n1b n1bVar = n1b.c;
                                        if (n1bVar != null && (context2 = n1bVar.a) != null && n1bVar.b != null) {
                                            context2.getContentResolver().unregisterContentObserver(n1b.c.b);
                                        }
                                        n1b.c = null;
                                    } catch (Throwable th) {
                                        throw th;
                                    }
                                }
                                g = new yza(context, zzdo.zza(new zzdj() { // from class: com.google.android.gms.internal.auth.zzct
                                    @Override // com.google.android.gms.internal.auth.zzdj
                                    public final Object zza() {
                                        Context context3 = context;
                                        Object obj2 = zzdc.f;
                                        return zzcp.zza(context3);
                                    }
                                }));
                                h.incrementAndGet();
                            }
                        } catch (Throwable th2) {
                            throw th2;
                        }
                    }
                }
            } catch (Throwable th3) {
                throw th3;
            }
        }
    }

    public abstract Object a(Object obj);

    /* JADX WARN: Code duplicated, block: B:14:0x003c A[PHI: r2
      0x003c: PHI (r2v1 com.google.android.gms.internal.auth.zzdh) = (r2v0 com.google.android.gms.internal.auth.zzdh), (r2v5 com.google.android.gms.internal.auth.zzdh) binds: [B:8:0x0016, B:10:0x0024] A[DONT_GENERATE, DONT_INLINE]] */
    public final Object zzb() {
        String strZza;
        a1b a1bVarA;
        n1b n1bVar;
        Object objZzb;
        int i = h.get();
        if (this.d < i) {
            synchronized (this) {
                try {
                    if (this.d < i) {
                        yza yzaVar = g;
                        zzdh zzdhVarZzc = zzdh.zzc();
                        Object objA = null;
                        if (yzaVar != null) {
                            zzdhVarZzc = (zzdh) yzaVar.b.zza();
                            if (zzdhVarZzc.zzb()) {
                                zzci zzciVar = (zzci) zzdhVarZzc.zza();
                                zzcz zzczVar = this.a;
                                strZza = zzciVar.zza(zzczVar.a, null, zzczVar.c, this.b);
                            } else {
                                strZza = null;
                            }
                        } else {
                            strZza = null;
                        }
                        if (yzaVar == null) {
                            throw new IllegalStateException("Must call PhenotypeFlag.init() first");
                        }
                        Uri uri = this.a.a;
                        if (uri != null) {
                            a1bVarA = zzcq.zza(yzaVar.a, uri) ? zzcg.zza(yzaVar.a.getContentResolver(), this.a.a, new Runnable() { // from class: com.google.android.gms.internal.auth.zzcs
                                @Override // java.lang.Runnable
                                public final void run() {
                                    zzdc.zzc();
                                }
                            }) : null;
                        } else {
                            zzcs zzcsVar = new Runnable() { // from class: com.google.android.gms.internal.auth.zzcs
                                @Override // java.lang.Runnable
                                public final void run() {
                                    zzdc.zzc();
                                }
                            };
                            a1bVarA = zzdd.a();
                        }
                        Object objA2 = (a1bVarA == null || (objZzb = a1bVarA.zzb(this.b)) == null) ? null : a(objZzb);
                        if (objA2 == null) {
                            if (!this.a.d) {
                                Context context = yzaVar.a;
                                synchronized (n1b.class) {
                                    try {
                                        n1bVar = n1b.c;
                                        if (n1bVar == null) {
                                            n1bVar = PermissionChecker.checkSelfPermission(context, "com.google.android.providers.gsf.permission.READ_GSERVICES") == 0 ? new n1b(context) : new n1b();
                                            n1b.c = n1bVar;
                                        }
                                    } catch (Throwable th) {
                                        throw th;
                                    }
                                }
                                String strA = n1bVar.zzb(this.a.d ? null : this.b);
                                if (strA != null) {
                                    objA = a(strA);
                                }
                            }
                            objA2 = objA == null ? this.c : objA;
                        }
                        if (zzdhVarZzc.zzb()) {
                            objA2 = strZza == null ? this.c : a(strZza);
                        }
                        this.e = objA2;
                        this.d = i;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return this.e;
    }
}
