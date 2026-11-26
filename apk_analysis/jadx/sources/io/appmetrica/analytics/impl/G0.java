package io.appmetrica.analytics.impl;

import android.content.Context;
import android.os.Handler;
import io.appmetrica.analytics.coreapi.internal.executors.ICommonExecutor;
import io.appmetrica.analytics.coreutils.internal.time.SystemTimeProvider;

/* JADX INFO: loaded from: classes5.dex */
public abstract class G0 {
    public static Ei a(Pf pf, Context context, ICommonExecutor iCommonExecutor) {
        C1242s0 c1242s0 = new C1242s0(context, iCommonExecutor);
        return new Ei(c1242s0, new C0904eo(new C1430zb()), new Q4(pf), new C1159ok(context, c1242s0));
    }

    public static Pf a(Context context, P6 p6) {
        return new Pf(context, p6);
    }

    public static P6 a(Handler handler, F0 f0) {
        return new P6(handler, f0);
    }

    public static C0902em a(Context context, Ei ei, Handler handler) {
        return new C0902em(ei, C1169p4.l().d(context), handler);
    }

    public static C1103mg a(Ei ei, Cif cif, Handler handler) {
        return new C1103mg(ei, cif, handler, cif.s());
    }

    public static C1234ri a(Context context, Pf pf, Ei ei, Handler handler, C0902em c0902em) {
        return new C1234ri(context, pf, ei, handler, c0902em);
    }

    public static C1152od a(Context context) {
        return new C1152od(C1169p4.l().c.a(), C1169p4.l().b(context), "client_modules", new SystemTimeProvider());
    }
}
