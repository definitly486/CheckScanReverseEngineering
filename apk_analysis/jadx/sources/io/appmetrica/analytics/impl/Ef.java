package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.data.ProtobufConverter;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public final class Ef implements ProtobufConverter {
    public final Cf a = new Cf();

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final C1409yf fromModel(Df df) {
        C1409yf c1409yf = new C1409yf();
        if (!StringUtils.isNullOrEmpty(df.a)) {
            c1409yf.a = df.a;
        }
        c1409yf.b = df.b.toString();
        c1409yf.c = df.c;
        c1409yf.d = df.d;
        c1409yf.e = this.a.fromModel(df.e).intValue();
        return c1409yf;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final Df toModel(C1409yf c1409yf) {
        JSONObject jSONObject;
        String str = c1409yf.a;
        String str2 = c1409yf.b;
        if (!StringUtils.isNullOrEmpty(str2)) {
            try {
                jSONObject = new JSONObject(str2);
            } catch (Throwable unused) {
                jSONObject = new JSONObject();
            }
        } else {
            jSONObject = new JSONObject();
        }
        return new Df(str, jSONObject, c1409yf.c, c1409yf.d, this.a.toModel(Integer.valueOf(c1409yf.e)));
    }
}
