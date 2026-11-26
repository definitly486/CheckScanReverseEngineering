package io.appmetrica.analytics.productflow.impl;

import io.appmetrica.analytics.productflow.OfferPrice;
import io.appmetrica.analytics.productflow.ProductFlowStatus;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class a {
    public final ProductFlowStatus a;
    public final String b;
    public final String c;
    public final OfferPrice d;
    public final Map e;

    public a(ProductFlowStatus productFlowStatus, String str, String str2, OfferPrice offerPrice, Map map) {
        this.a = productFlowStatus;
        this.b = str;
        this.c = str2;
        this.d = offerPrice;
        this.e = map;
    }

    public final Map a() {
        return this.e;
    }

    public final OfferPrice b() {
        return this.d;
    }

    public final String c() {
        return this.b;
    }

    public final String d() {
        return this.c;
    }

    public final ProductFlowStatus e() {
        return this.a;
    }
}
