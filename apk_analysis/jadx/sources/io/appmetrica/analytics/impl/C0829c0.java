package io.appmetrica.analytics.impl;

import defpackage.me0;
import io.appmetrica.analytics.ecommerce.ECommerceAmount;
import java.math.BigDecimal;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.c0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C0829c0 {
    public final BigDecimal a;
    public final String b;

    public C0829c0(ECommerceAmount eCommerceAmount) {
        this(eCommerceAmount.getAmount(), eCommerceAmount.getUnit());
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("AmountWrapper{amount=");
        sb.append(this.a);
        sb.append(", unit='");
        return me0.d(sb, this.b, "'}");
    }

    public C0829c0(BigDecimal bigDecimal, String str) {
        this.a = bigDecimal;
        this.b = str;
    }
}
