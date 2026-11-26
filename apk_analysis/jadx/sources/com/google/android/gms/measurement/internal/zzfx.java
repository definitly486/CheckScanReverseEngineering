package com.google.android.gms.measurement.internal;

import defpackage.rxa;
import defpackage.vp3;

/* JADX INFO: loaded from: classes4.dex */
public final class zzfx {
    public static final Object f = new Object();
    public final String a;
    public final rxa b;
    public final Object c;
    public final Object d = new Object();
    public volatile Object e = null;

    public /* synthetic */ zzfx(String str, Object obj, rxa rxaVar) {
        this.a = str;
        this.c = obj;
        this.b = rxaVar;
    }

    public final String zza() {
        return this.a;
    }

    public final Object zzb(Object obj) {
        synchronized (this.d) {
        }
        if (obj != null) {
            return obj;
        }
        if (vp3.b == null) {
            return this.c;
        }
        synchronized (f) {
            try {
                if (zzae.zza()) {
                    return this.e == null ? this.c : this.e;
                }
                try {
                    for (zzfx zzfxVar : zzfy.a) {
                        if (zzae.zza()) {
                            throw new IllegalStateException("Refreshing flag cache must be done on a worker thread.");
                        }
                        Object objZza = null;
                        try {
                            rxa rxaVar = zzfxVar.b;
                            if (rxaVar != null) {
                                objZza = rxaVar.zza();
                            }
                        } catch (IllegalStateException unused) {
                        }
                        synchronized (f) {
                            zzfxVar.e = objZza;
                        }
                    }
                } catch (SecurityException unused2) {
                }
                rxa rxaVar2 = this.b;
                if (rxaVar2 != null) {
                    try {
                        return rxaVar2.zza();
                    } catch (IllegalStateException | SecurityException unused3) {
                    }
                }
                return this.c;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
