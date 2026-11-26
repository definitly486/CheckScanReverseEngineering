package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.ecommerce.ECommerceEvent;
import io.appmetrica.analytics.ecommerce.ECommerceProduct;
import io.appmetrica.analytics.ecommerce.ECommerceReferrer;
import java.util.List;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.wl, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1365wl extends ECommerceEvent {
    public final Vf a;
    public final Ag b;
    public final InterfaceC1095m8 c;

    public C1365wl(ECommerceProduct eCommerceProduct, ECommerceReferrer eCommerceReferrer) {
        this(new Vf(eCommerceProduct), eCommerceReferrer == null ? null : new Ag(eCommerceReferrer), new C1390xl());
    }

    public final InterfaceC1095m8 a() {
        return this.c;
    }

    @Override // io.appmetrica.analytics.ecommerce.ECommerceEvent
    public final String getPublicDescription() {
        return "shown product details info";
    }

    @Override // io.appmetrica.analytics.ecommerce.ECommerceEvent, io.appmetrica.analytics.impl.Yf
    public final List<Li> toProto() {
        return (List) this.c.fromModel(this);
    }

    public final String toString() {
        return "ShownProductDetailInfoEvent{product=" + this.a + ", referrer=" + this.b + ", converter=" + this.c + '}';
    }

    public C1365wl(Vf vf, Ag ag, InterfaceC1095m8 interfaceC1095m8) {
        this.a = vf;
        this.b = ag;
        this.c = interfaceC1095m8;
    }
}
