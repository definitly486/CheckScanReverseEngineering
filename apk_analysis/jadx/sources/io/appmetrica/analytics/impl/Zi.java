package io.appmetrica.analytics.impl;

import defpackage.ta8;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public final class Zi extends Ca {
    public final /* synthetic */ C0822bj a;
    public final /* synthetic */ ServiceConnectionC0796aj b;

    public Zi(C0822bj c0822bj, ServiceConnectionC0796aj serviceConnectionC0796aj) {
        this.a = c0822bj;
        this.b = serviceConnectionC0796aj;
    }

    @Override // io.appmetrica.analytics.impl.Ca
    public final void a(String str) {
        InterfaceC1410yg c1360wg;
        C0822bj.a(this.a, this.b);
        InterfaceC1207qg interfaceC1207qg = this.b.a;
        this.a.getClass();
        if (str == null || ta8.M(str)) {
            c1360wg = new C1360wg("RuStore referrer payload is empty", null, 2, null);
        } else {
            try {
                JSONObject jSONObject = new JSONObject(str);
                String string = jSONObject.getString("REFERRER_ID_KEY");
                c1360wg = ta8.M(string) ? new C1360wg("RuStore referrer id is empty", null, 2, null) : new C1385xg(new C1155og(string, jSONObject.optLong("RECEIVED_TIMESTAMP_KEY") / 1000, jSONObject.optLong("INSTALL_APP_TIMESTAMP_KEY") / 1000, 4));
            } catch (Throwable th) {
                c1360wg = new C1360wg("Failed to parse RuStore referrer payload", th);
            }
        }
        interfaceC1207qg.a(c1360wg);
    }

    @Override // io.appmetrica.analytics.impl.Ca
    public final void a(int i, String str) {
        C0822bj.a(this.a, this.b);
        this.b.a.a(new C1360wg("RuStore referrer error " + i + ": " + str, null, 2, null));
    }
}
