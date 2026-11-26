package io.appmetrica.analytics.impl;

import defpackage.ha1;
import io.appmetrica.analytics.coreutils.internal.parsing.JsonUtils;
import io.appmetrica.analytics.coreutils.internal.time.TimeProvider;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public final class U9 extends Ug {
    public final V9 b;

    public U9(C0989i5 c0989i5, TimeProvider timeProvider) {
        super(c0989i5);
        this.b = new V9(c0989i5, timeProvider);
    }

    @Override // io.appmetrica.analytics.impl.Ug
    public final boolean a(C0783a6 c0783a6) {
        long jOptLong;
        V9 v9 = this.b;
        O9 o9 = v9.a.t().B;
        Long lValueOf = o9 != null ? Long.valueOf(o9.a) : null;
        if (lValueOf != null) {
            Go go = v9.a.t;
            synchronized (go) {
                jOptLong = go.a.a().optLong("external_attribution_window_start", -1L);
            }
            if (jOptLong < 0) {
                jOptLong = v9.b.currentTimeMillis();
                v9.a.t.a(jOptLong);
            }
            if (v9.b.currentTimeMillis() - jOptLong <= lValueOf.longValue()) {
                N9 n9 = (N9) MessageNano.mergeFrom(new N9(), c0783a6.getValueBytes());
                int i = n9.a;
                String str = new String(n9.b, ha1.b);
                String str2 = this.b.a.c.k().get(Integer.valueOf(i));
                if (str2 != null) {
                    try {
                        if (JsonUtils.isEqualTo(new JSONObject(str), new JSONObject(str2))) {
                            this.a.m.info("Ignoring attribution of type `" + X9.a(i) + "` with value `" + str + "` since it is not new", new Object[0]);
                            return true;
                        }
                    } catch (Throwable unused) {
                    }
                }
                V9 v10 = this.b;
                Map<Integer, String> mapK = v10.a.c.k();
                mapK.put(Integer.valueOf(i), str);
                v10.a.c.b(mapK);
                this.a.m.info("Handling attribution of type `" + X9.a(i) + '`', new Object[0]);
                return false;
            }
        }
        this.a.m.info("Ignoring attribution since out of collecting interval", new Object[0]);
        return true;
    }
}
