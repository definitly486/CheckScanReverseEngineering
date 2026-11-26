package io.appmetrica.analytics.impl;

import android.content.Context;
import androidx.core.app.NotificationCompat;
import defpackage.ad2;
import defpackage.b36;
import defpackage.hj2;
import defpackage.n05;
import defpackage.u96;
import io.appmetrica.analytics.ModuleEvent;
import io.appmetrica.analytics.ModulesFacade;
import io.appmetrica.analytics.coreapi.internal.executors.IHandlerExecutor;
import io.appmetrica.analytics.logger.appmetrica.internal.PublicLogger;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class I0 {
    public final Qb a = new Qb(C1169p4.l().d());
    public final Rb b = new Rb();
    public final Tb c = new Tb();

    public static final void a(I0 i0, String str, String str2, String str3) {
        List list;
        Context contextA;
        Tb tb = i0.c;
        tb.getClass();
        if (str == null) {
            str = "null";
        }
        b36 b36Var = new b36("sender", str);
        if (str2 == null) {
            str2 = "null";
        }
        b36 b36Var2 = new b36(NotificationCompat.CATEGORY_EVENT, str2);
        if (str3 == null) {
            str3 = "null";
        }
        LinkedHashMap linkedHashMapF = n05.f(b36Var, b36Var2, new b36("payload", str3));
        ModuleEvent.Builder builderWithName = ModuleEvent.newBuilder(4).withName("appmetrica_system_event_42");
        synchronized (tb) {
            try {
                if (tb.a == null && (contextA = C1169p4.l().g.a()) != null) {
                    tb.a = u96.i(new C0843ce(), new C1239rn(contextA), new To());
                }
                list = tb.a;
            } catch (Throwable th) {
                throw th;
            }
        }
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                ((InterfaceC1293u) it.next()).a(linkedHashMapF);
            }
        }
        ModulesFacade.reportEvent(builderWithName.withAttributes(linkedHashMapF).build());
    }

    public final void a(String str, String str2, String str3) {
        Qb qb = this.a;
        if (qb.c.validate(null).isValid() && qb.d.validate(str).isValid() && qb.e.validate(str2).isValid() && qb.f.validate(str3).isValid()) {
            this.b.getClass();
            IHandlerExecutor iHandlerExecutorA = C1169p4.l().c.a();
            ((M9) iHandlerExecutorA).b.post(new hj2(this, str, str2, str3, 1));
            return;
        }
        StringBuilder sbD = ad2.d("Failed report event from sender: ", str, " with name = ", str2, " and payload = ");
        sbD.append(str3);
        PublicLogger.Companion.getAnonymousInstance().warning("[AppMetricaLibraryAdapterProxy]".concat(sbD.toString()), new Object[0]);
    }
}
