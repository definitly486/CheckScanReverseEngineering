package io.appmetrica.analytics.impl;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public final class Lo implements InterfaceC1051kg {
    public final Fo a;
    public final String b = "vital";

    public Lo(Fo fo) {
        this.a = fo;
    }

    public final void a(InterfaceC1410yg interfaceC1410yg) {
        this.a.a(interfaceC1410yg.a());
        Fo fo = this.a;
        synchronized (fo) {
            JSONObject jSONObjectA = fo.a.a();
            if (!jSONObjectA.optBoolean("referrer_checked", false)) {
                fo.a.a(jSONObjectA.put("referrer_checked", true));
            }
            Ho ho = fo.a;
            Ho.a(ho.a);
            Ho.a(ho.b);
        }
    }

    public final InterfaceC1410yg b() {
        C1155og c1155ogB = this.a.b();
        if (c1155ogB != null) {
            return new C1385xg(c1155ogB);
        }
        return null;
    }

    public final boolean c() {
        boolean zOptBoolean;
        Fo fo = this.a;
        synchronized (fo) {
            zOptBoolean = fo.a.a().optBoolean("referrer_checked", false);
        }
        return zOptBoolean;
    }

    public final String a() {
        return this.b;
    }
}
