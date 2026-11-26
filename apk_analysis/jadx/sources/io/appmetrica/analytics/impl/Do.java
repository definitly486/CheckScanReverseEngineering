package io.appmetrica.analytics.impl;

import android.text.TextUtils;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public final class Do implements Co {
    public final N8 a;

    public Do() {
        this(new N8());
    }

    @Override // io.appmetrica.analytics.impl.Co
    public final byte[] a(Z8 z8, C1233rh c1233rh) {
        if (!((C0989i5) c1233rh.l).B() && !TextUtils.isEmpty(z8.b)) {
            try {
                JSONObject jSONObject = new JSONObject(z8.b);
                jSONObject.remove("preloadInfo");
                z8.b = jSONObject.toString();
            } catch (Throwable unused) {
            }
        }
        return this.a.a(z8, c1233rh);
    }

    public Do(N8 n8) {
        this.a = n8;
    }
}
