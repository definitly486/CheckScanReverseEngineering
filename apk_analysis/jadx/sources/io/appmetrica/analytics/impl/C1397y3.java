package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.ecommerce.ECommerceCartItem;
import java.math.BigDecimal;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.y3, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1397y3 {
    public final Vf a;
    public final BigDecimal b;
    public final Nf c;
    public final Ag d;

    public C1397y3(ECommerceCartItem eCommerceCartItem) {
        this(new Vf(eCommerceCartItem.getProduct()), eCommerceCartItem.getQuantity(), new Nf(eCommerceCartItem.getRevenue()), eCommerceCartItem.getReferrer() == null ? null : new Ag(eCommerceCartItem.getReferrer()));
    }

    public final String toString() {
        return "CartItemWrapper{product=" + this.a + ", quantity=" + this.b + ", revenue=" + this.c + ", referrer=" + this.d + '}';
    }

    public C1397y3(Vf vf, BigDecimal bigDecimal, Nf nf, Ag ag) {
        this.a = vf;
        this.b = bigDecimal;
        this.c = nf;
        this.d = ag;
    }
}
