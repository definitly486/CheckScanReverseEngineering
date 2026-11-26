package io.appmetrica.analytics.productflow;

import defpackage.me0;
import io.appmetrica.analytics.coreutils.internal.WrapUtils;
import java.math.BigDecimal;

/* JADX INFO: loaded from: classes5.dex */
public class OfferPrice {
    private final BigDecimal a;
    private final String b;

    public OfferPrice(double d, String str) {
        this(BigDecimal.valueOf(WrapUtils.getFiniteDoubleOrDefault(d, 0.0d)), str);
    }

    public BigDecimal getAmount() {
        return this.a;
    }

    public String getUnit() {
        return this.b;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("OfferPrice{amount=");
        sb.append(this.a);
        sb.append(", unit='");
        return me0.d(sb, this.b, "'}");
    }

    public OfferPrice(long j, String str) {
        this(WrapUtils.microsToBigDecimal(j), str);
    }

    public OfferPrice(BigDecimal bigDecimal, String str) {
        this.a = bigDecimal;
        this.b = str;
    }
}
