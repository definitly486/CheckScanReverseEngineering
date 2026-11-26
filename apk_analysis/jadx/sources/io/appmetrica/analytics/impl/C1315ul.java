package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.ecommerce.ECommerceEvent;
import io.appmetrica.analytics.ecommerce.ECommerceProduct;
import io.appmetrica.analytics.ecommerce.ECommerceScreen;
import java.util.List;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.ul, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1315ul extends ECommerceEvent {
    public final Vf a;
    public final C1210qj b;
    public final InterfaceC1095m8 c;

    public C1315ul(ECommerceProduct eCommerceProduct, ECommerceScreen eCommerceScreen) {
        this(new Vf(eCommerceProduct), new C1210qj(eCommerceScreen), new C1340vl());
    }

    public final InterfaceC1095m8 a() {
        return this.c;
    }

    @Override // io.appmetrica.analytics.ecommerce.ECommerceEvent
    public final String getPublicDescription() {
        return "shown product card info";
    }

    @Override // io.appmetrica.analytics.ecommerce.ECommerceEvent, io.appmetrica.analytics.impl.Yf
    public final List<Li> toProto() {
        return (List) this.c.fromModel(this);
    }

    public final String toString() {
        return "ShownProductCardInfoEvent{product=" + this.a + ", screen=" + this.b + ", converter=" + this.c + '}';
    }

    public C1315ul(Vf vf, C1210qj c1210qj, InterfaceC1095m8 interfaceC1095m8) {
        this.a = vf;
        this.b = c1210qj;
        this.c = interfaceC1095m8;
    }
}
