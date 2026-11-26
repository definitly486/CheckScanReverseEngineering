package io.appmetrica.analytics.ecommerce;

import defpackage.me0;
import io.appmetrica.analytics.impl.xo;
import java.math.BigDecimal;

/* JADX INFO: loaded from: classes5.dex */
public class ECommerceAmount {
    private final BigDecimal a;
    private final String b;

    public ECommerceAmount(double d, String str) {
        this(BigDecimal.valueOf(xo.a(d)), str);
    }

    public BigDecimal getAmount() {
        return this.a;
    }

    public String getUnit() {
        return this.b;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("ECommerceAmount{amount=");
        sb.append(this.a);
        sb.append(", unit='");
        return me0.d(sb, this.b, "'}");
    }

    public ECommerceAmount(long j, String str) {
        this(xo.a(j), str);
    }

    public ECommerceAmount(BigDecimal bigDecimal, String str) {
        this.a = bigDecimal;
        this.b = str;
    }
}
