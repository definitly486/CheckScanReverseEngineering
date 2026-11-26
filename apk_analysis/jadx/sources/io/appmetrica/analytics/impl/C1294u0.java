package io.appmetrica.analytics.impl;

import android.content.Context;
import io.appmetrica.analytics.coreutils.internal.AndroidUtils;
import io.appmetrica.analytics.logger.appmetrica.internal.ImportantLogger;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.u0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1294u0 {
    public final C1033jo a;
    public volatile Boolean b;
    public Pa c;
    public Qa d;

    public C1294u0() {
        this(new C1033jo());
    }

    public final boolean a(Context context) {
        Boolean boolValueOf = this.b;
        if (boolValueOf == null) {
            synchronized (this) {
                try {
                    boolValueOf = this.b;
                    if (boolValueOf == null) {
                        this.a.getClass();
                        boolean z = AndroidUtils.isApiAchieved(24) && !C1033jo.a(context);
                        boolValueOf = Boolean.valueOf(z);
                        this.b = boolValueOf;
                        if (z) {
                            ImportantLogger.INSTANCE.info("AppMetrica", "User is locked. So use stubs. Events will not be sent.", new Object[0]);
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return boolValueOf.booleanValue();
    }

    public C1294u0(C1033jo c1033jo) {
        this.a = c1033jo;
    }

    public final synchronized Pa a(Context context, C0910f4 c0910f4) {
        Pa c1268t0;
        try {
            c1268t0 = this.c;
            if (c1268t0 == null) {
                if (a(context)) {
                    c1268t0 = new C1394y0();
                    this.c = c1268t0;
                } else {
                    c1268t0 = new C1268t0(context, c0910f4);
                    this.c = c1268t0;
                }
            }
        } catch (Throwable th) {
            throw th;
        }
        return c1268t0;
    }
}
