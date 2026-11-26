package io.appmetrica.analytics.identifiers.impl;

import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import defpackage.me0;
import defpackage.nl3;
import io.appmetrica.analytics.coreutils.internal.services.SafePackageManager;

/* JADX INFO: loaded from: classes5.dex */
public final class f {
    public final e a;
    public final nl3 b;
    public final String c;
    public final SafePackageManager d;

    public f(Intent intent, nl3 nl3Var, String str) {
        this(new e(intent, str), nl3Var, str, new SafePackageManager());
    }

    public final Object a(Context context) throws g {
        IBinder iBinder;
        if (this.d.resolveService(context, this.a.a, 0) == null) {
            throw new l(me0.d(new StringBuilder("could not resolve "), this.c, " services"));
        }
        try {
            e eVar = this.a;
            if (context.bindService(eVar.a, eVar, 1)) {
                e eVar2 = this.a;
                if (eVar2.b == null) {
                    synchronized (eVar2.c) {
                        if (eVar2.b == null) {
                            try {
                                eVar2.c.wait(3000L);
                            } catch (InterruptedException unused) {
                            }
                        }
                    }
                }
                iBinder = eVar2.b;
            } else {
                iBinder = null;
            }
        } catch (Throwable unused2) {
        }
        if (iBinder != null) {
            return this.b.invoke(iBinder);
        }
        throw new g(me0.d(new StringBuilder("could not bind to "), this.c, " services"));
    }

    public final void b(Context context) {
        try {
            this.a.a(context);
        } catch (Throwable unused) {
        }
    }

    public f(e eVar, nl3 nl3Var, String str, SafePackageManager safePackageManager) {
        this.a = eVar;
        this.b = nl3Var;
        this.c = str;
        this.d = safePackageManager;
    }
}
