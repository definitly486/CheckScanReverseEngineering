package com.posthog.internal.replay;

import com.tapjoy.TJDeviceNetworkKt;
import defpackage.b36;
import defpackage.bc6;
import defpackage.n05;
import defpackage.oa6;
import defpackage.vb6;
import java.util.LinkedHashMap;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class RRUtilsKt {
    public static final void capture(List<? extends RREvent> list, bc6 bc6Var) {
        list.getClass();
        LinkedHashMap linkedHashMapF = n05.f(new b36("$snapshot_data", list), new b36("$snapshot_source", TJDeviceNetworkKt.TJC_CONNECTION_TYPE_MOBILE));
        if (bc6Var != null) {
            bc6Var.a(vb6.SNAPSHOT.a(), (122 & 2) != 0 ? null : null, (122 & 4) != 0 ? null : linkedHashMapF, null, null);
        } else {
            capture(list);
        }
    }

    public static /* synthetic */ void capture$default(List list, bc6 bc6Var, int i, Object obj) {
        if ((i & 1) != 0) {
            bc6Var = null;
        }
        capture(list, bc6Var);
    }

    public static final void capture(List<? extends RREvent> list) {
        list.getClass();
        oa6.I.a(vb6.SNAPSHOT.a(), (122 & 2) != 0 ? null : null, (122 & 4) != 0 ? null : n05.f(new b36("$snapshot_data", list), new b36("$snapshot_source", TJDeviceNetworkKt.TJC_CONNECTION_TYPE_MOBILE)), null, null);
    }
}
