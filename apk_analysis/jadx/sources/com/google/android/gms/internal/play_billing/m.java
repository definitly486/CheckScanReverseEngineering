package com.google.android.gms.internal.play_billing;

import com.tapjoy.TJAdUnitConstants;
import defpackage.z4b;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes4.dex */
public abstract class m<V> extends zzdq implements zzdk<V> {
    public static final Object e = new Object();
    public static final z4b f = new z4b(zzcu.class);
    public static final boolean g;
    public static final h h;
    public volatile Object b;
    public volatile f c;
    public volatile l d;

    static {
        boolean z;
        h jVar;
        Throwable th;
        Throwable th2;
        try {
            z = Boolean.parseBoolean(System.getProperty("guava.concurrent.generate_cancellation_cause", TJAdUnitConstants.String.FALSE));
        } catch (SecurityException unused) {
            z = false;
        }
        g = z;
        String property = System.getProperty("java.runtime.name", "");
        Throwable th3 = null;
        if (property == null || property.contains("Android")) {
            try {
                jVar = new k();
            } catch (Error | Exception e2) {
                try {
                    jVar = new i();
                } catch (Error | Exception e3) {
                    th3 = e3;
                    jVar = new j();
                }
                th = th3;
                th2 = e2;
            }
        } else {
            try {
                jVar = new i();
            } catch (NoClassDefFoundError unused2) {
                jVar = new j();
            }
        }
        th = null;
        th2 = null;
        h = jVar;
        if (th != null) {
            z4b z4bVar = f;
            Logger loggerA = z4bVar.a();
            Level level = Level.SEVERE;
            loggerA.logp(level, "com.google.common.util.concurrent.AbstractFutureState", "<clinit>", "UnsafeAtomicHelper is broken!", th2);
            z4bVar.a().logp(level, "com.google.common.util.concurrent.AbstractFutureState", "<clinit>", "AtomicReferenceFieldUpdaterAtomicHelper is broken!", th);
        }
    }

    public final void b(l lVar) {
        lVar.a = null;
        while (true) {
            l lVar2 = this.d;
            if (lVar2 != l.c) {
                l lVar3 = null;
                while (lVar2 != null) {
                    l lVar4 = lVar2.b;
                    if (lVar2.a != null) {
                        lVar3 = lVar2;
                    } else if (lVar3 != null) {
                        lVar3.b = lVar4;
                        if (lVar3.a == null) {
                        }
                    } else if (!h.g(this, lVar2, lVar4)) {
                    }
                    lVar2 = lVar4;
                }
                return;
            }
            return;
        }
    }
}
