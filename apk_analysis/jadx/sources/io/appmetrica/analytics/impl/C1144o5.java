package io.appmetrica.analytics.impl;

import android.content.Context;
import java.util.HashMap;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.o5, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1144o5 {
    public final HashMap a = new HashMap();
    public final HashMap b = new HashMap();
    public final Context c;

    public C1144o5(Context context) {
        this.c = context.getApplicationContext();
    }

    public final Ua a(C0808b5 c0808b5, B4 b4, InterfaceC0785a8 interfaceC0785a8, HashMap map) {
        Ua ua = (Ua) map.get(c0808b5.toString());
        if (ua != null) {
            ua.a(b4);
            return ua;
        }
        Ua uaA = interfaceC0785a8.a(this.c, c0808b5, b4);
        map.put(c0808b5.toString(), uaA);
        return uaA;
    }
}
