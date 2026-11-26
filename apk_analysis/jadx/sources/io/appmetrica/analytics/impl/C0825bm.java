package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.StartupParamsCallback;
import java.util.HashMap;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.bm, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C0825bm extends HashMap {
    public C0825bm() {
        put(Zl.UNKNOWN, StartupParamsCallback.Reason.UNKNOWN);
        put(Zl.NETWORK, StartupParamsCallback.Reason.NETWORK);
        put(Zl.PARSE, StartupParamsCallback.Reason.INVALID_RESPONSE);
    }
}
