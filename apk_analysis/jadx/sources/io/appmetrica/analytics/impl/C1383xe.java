package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.ecommerce.ECommerceEvent;
import io.appmetrica.analytics.ecommerce.ECommerceOrder;
import java.util.List;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.xe, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1383xe extends ECommerceEvent {
    public static final int d = 6;
    public static final int e = 7;
    public final int a;
    public final C1433ze b;
    public final InterfaceC1095m8 c;

    public C1383xe(int i, ECommerceOrder eCommerceOrder) {
        this(i, new C1433ze(eCommerceOrder), new C1408ye());
    }

    public final InterfaceC1095m8 a() {
        return this.c;
    }

    @Override // io.appmetrica.analytics.ecommerce.ECommerceEvent
    public final String getPublicDescription() {
        return "order info";
    }

    @Override // io.appmetrica.analytics.ecommerce.ECommerceEvent, io.appmetrica.analytics.impl.Yf
    public final List<Li> toProto() {
        return (List) this.c.fromModel(this);
    }

    public final String toString() {
        return "OrderInfoEvent{eventType=" + this.a + ", order=" + this.b + ", converter=" + this.c + '}';
    }

    public C1383xe(int i, C1433ze c1433ze, InterfaceC1095m8 interfaceC1095m8) {
        this.a = i;
        this.b = c1433ze;
        this.c = interfaceC1095m8;
    }
}
