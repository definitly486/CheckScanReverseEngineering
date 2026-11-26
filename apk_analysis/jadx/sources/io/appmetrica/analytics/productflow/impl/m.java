package io.appmetrica.analytics.productflow.impl;

import io.appmetrica.analytics.productflow.OfferPrice;
import io.appmetrica.analytics.productflow.OfferReferrer;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class m {
    public final String a;
    public final String b;
    public final String c;
    public final String d;
    public final OfferPrice e;
    public final Map f;
    public final OfferReferrer g;

    public m(String str, String str2, String str3, String str4, OfferPrice offerPrice, Map map, OfferReferrer offerReferrer) {
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = str4;
        this.e = offerPrice;
        this.f = map;
        this.g = offerReferrer;
    }

    public final String a() {
        return this.d;
    }

    public final String b() {
        return this.b;
    }

    public final Map c() {
        return this.f;
    }

    public final OfferPrice d() {
        return this.e;
    }

    public final String e() {
        return this.c;
    }

    public final String f() {
        return this.a;
    }

    public final OfferReferrer g() {
        return this.g;
    }
}
