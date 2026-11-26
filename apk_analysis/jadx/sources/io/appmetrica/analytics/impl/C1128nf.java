package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.data.ProtobufConverter;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import org.json.JSONObject;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.nf, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1128nf implements ProtobufConverter {
    public final Cf a;

    public C1128nf() {
        this(new Cf());
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final C1434zf fromModel(C1180pf c1180pf) {
        C1434zf c1434zf = new C1434zf();
        if (!StringUtils.isNullOrEmpty(c1180pf.a)) {
            c1434zf.a = c1180pf.a;
        }
        c1434zf.b = c1180pf.b.toString();
        c1434zf.c = this.a.fromModel(c1180pf.c).intValue();
        return c1434zf;
    }

    public C1128nf(Cf cf) {
        this.a = cf;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final C1180pf toModel(C1434zf c1434zf) {
        JSONObject jSONObject;
        String str = c1434zf.a;
        String str2 = c1434zf.b;
        if (!StringUtils.isNullOrEmpty(str2)) {
            try {
                jSONObject = new JSONObject(str2);
            } catch (Throwable unused) {
                jSONObject = new JSONObject();
            }
        } else {
            jSONObject = new JSONObject();
        }
        return new C1180pf(str, jSONObject, this.a.toModel(Integer.valueOf(c1434zf.c)));
    }
}
