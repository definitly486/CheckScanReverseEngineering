package io.appmetrica.analytics.impl;

import android.os.Bundle;
import android.os.Handler;
import androidx.core.view.InputDeviceCompat;
import io.appmetrica.analytics.DeferredDeeplinkListener;
import io.appmetrica.analytics.DeferredDeeplinkParametersListener;
import io.appmetrica.analytics.logger.appmetrica.internal.PublicLogger;
import java.util.Map;
import java.util.Set;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.mg, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1103mg {
    public final boolean a;
    public final Ei b;
    public final Cif c;
    public final X7 d;
    public final C1284tg e;
    public final Handler f;

    public C1103mg(Ei ei, Cif cif, Handler handler, boolean z) {
        this(ei, cif, handler, z, new X7(z), new C1284tg());
    }

    public final void a() {
        if (this.a) {
            return;
        }
        Ei ei = this.b;
        ResultReceiverC1435zg resultReceiverC1435zg = new ResultReceiverC1435zg(this.f, this);
        ei.getClass();
        Bundle bundle = new Bundle();
        bundle.putParcelable("io.appmetrica.analytics.impl.referrer.common.ReferrerResultReceiver", resultReceiverC1435zg);
        PublicLogger anonymousInstance = PublicLogger.getAnonymousInstance();
        Set set = I9.a;
        EnumC1176pb enumC1176pb = EnumC1176pb.EVENT_TYPE_UNDEFINED;
        C0781a4 c0781a4 = new C0781a4("", "", InputDeviceCompat.SOURCE_TOUCHSCREEN, 0, anonymousInstance);
        c0781a4.m = bundle;
        Q4 q4 = ei.a;
        ei.a(Ei.a(c0781a4, q4), q4, 1, (Map) null);
    }

    public C1103mg(Ei ei, Cif cif, Handler handler) {
        this(ei, cif, handler, cif.s());
    }

    public C1103mg(Ei ei, Cif cif, Handler handler, boolean z, X7 x7, C1284tg c1284tg) {
        this.b = ei;
        this.c = cif;
        this.a = z;
        this.d = x7;
        this.e = c1284tg;
        this.f = handler;
    }

    public final void a(C1155og c1155og) {
        String str = c1155og == null ? null : c1155og.a;
        if (this.a) {
            return;
        }
        synchronized (this) {
            X7 x7 = this.d;
            this.e.getClass();
            x7.d = C1284tg.a(str);
            x7.a();
        }
    }

    public final synchronized void a(DeferredDeeplinkParametersListener deferredDeeplinkParametersListener) {
        try {
            X7 x7 = this.d;
            x7.c = deferredDeeplinkParametersListener;
            if (x7.a) {
                x7.a(1);
            } else {
                x7.a();
            }
            this.c.u();
        } catch (Throwable th) {
            this.c.u();
            throw th;
        }
    }

    public final synchronized void a(DeferredDeeplinkListener deferredDeeplinkListener) {
        try {
            X7 x7 = this.d;
            x7.b = deferredDeeplinkListener;
            if (x7.a) {
                x7.a(1);
            } else {
                x7.a();
            }
            this.c.u();
        } catch (Throwable th) {
            this.c.u();
            throw th;
        }
    }
}
