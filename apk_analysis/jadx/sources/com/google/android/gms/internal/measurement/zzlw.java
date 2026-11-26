package com.google.android.gms.internal.measurement;

import android.content.Context;
import com.google.android.gms.internal.measurement.zzlf;
import com.google.android.gms.internal.measurement.zzlw;
import defpackage.kd8;
import defpackage.ld8;
import defpackage.w1c;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes4.dex */
public final class zzlw {
    public static final Object a = new Object();
    public static volatile w1c b;
    public static final AtomicInteger c;
    public static final /* synthetic */ int zza = 0;

    static {
        new AtomicReference();
        c = new AtomicInteger();
    }

    public static void zza(final Context context) {
        if (b != null || context == null) {
            return;
        }
        Object obj = a;
        synchronized (obj) {
            try {
                if (b == null) {
                    synchronized (obj) {
                        try {
                            w1c w1cVar = b;
                            Context applicationContext = context.getApplicationContext();
                            if (applicationContext != null) {
                                context = applicationContext;
                            }
                            if (w1cVar == null || w1cVar.a != context) {
                                if (w1cVar != null) {
                                    Iterator it = zzld.a.values().iterator();
                                    if (it.hasNext()) {
                                        throw null;
                                    }
                                    zzma.a();
                                }
                                b = new w1c(context, ld8.a(new kd8() { // from class: j3c
                                    @Override // defpackage.kd8
                                    public final /* synthetic */ Object get() {
                                        Object obj2 = zzlw.a;
                                        return zzlf.zza(context);
                                    }
                                }));
                                c.incrementAndGet();
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
