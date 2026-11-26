package io.appmetrica.analytics.impl;

import android.os.Bundle;
import io.appmetrica.analytics.coreutils.internal.services.FrameworkDetector;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public final class Hc implements R8 {
    public final Tg a;
    public final C1024jf b;
    public final String c = "activation_unlock_event_sending";
    public final AtomicBoolean d;

    public Hc(Tg tg, A4 a4, C1024jf c1024jf) {
        this.a = tg;
        this.b = c1024jf;
        this.d = new AtomicBoolean(c1024jf.a(false) || a(a4));
    }

    public final void a(String str) {
        try {
            C0900ek c0900ek = Bj.a;
            String str2 = this.c;
            JSONObject jSONObjectPut = new JSONObject().put("source", str).put("framework", FrameworkDetector.framework());
            Z9 z9I = Fa.I.i();
            Bundle applicationMetaData = z9I.d.getApplicationMetaData(z9I.a);
            JSONObject jSONObjectPut2 = jSONObjectPut.put("appmetrica_plugin_id", applicationMetaData != null ? applicationMetaData.getString("io.appmetrica.analytics.plugin_id") : null);
            Ck ck = Fa.I.D;
            String string = jSONObjectPut2.put("activation_offset", (ck.a.currentTimeMillis() - ck.b) / 1000).toString();
            c0900ek.getClass();
            c0900ek.a(new C0849ck(str2, string));
        } catch (Throwable unused) {
        }
    }

    @Override // io.appmetrica.analytics.impl.R8
    public final boolean b() {
        String str;
        if (!this.d.get() && (str = ((C1233rh) this.a.a()).m) != null && !str.equals("629a824d-c717-4ba5-bc0f-3f3968554d01") && this.d.compareAndSet(false, true)) {
            this.b.b(true);
            a("activation");
        }
        return this.d.get();
    }

    public final void a() {
        if (this.d.compareAndSet(false, true)) {
            this.b.b(true);
            a("timer");
        }
    }

    public static boolean a(A4 a4) {
        String str = a4.a;
        return (str == null || str.equals("629a824d-c717-4ba5-bc0f-3f3968554d01")) ? false : true;
    }
}
