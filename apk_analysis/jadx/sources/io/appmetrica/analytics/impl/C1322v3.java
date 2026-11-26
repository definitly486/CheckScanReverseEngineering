package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.ecommerce.ECommerceCartItem;
import io.appmetrica.analytics.ecommerce.ECommerceEvent;
import java.util.List;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.v3, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1322v3 extends ECommerceEvent {
    public static final int d = 4;
    public static final int e = 5;
    public final int a;
    public final C1397y3 b;
    public final InterfaceC1095m8 c;

    public C1322v3(int i, ECommerceCartItem eCommerceCartItem) {
        this(i, new C1397y3(eCommerceCartItem), new C1347w3());
    }

    public final InterfaceC1095m8 a() {
        return this.c;
    }

    @Override // io.appmetrica.analytics.ecommerce.ECommerceEvent
    public final String getPublicDescription() {
        int i = this.a;
        if (i != 4) {
            return i != 5 ? "unknown cart action info" : "remove cart item info";
        }
        return "add cart item info";
    }

    @Override // io.appmetrica.analytics.ecommerce.ECommerceEvent, io.appmetrica.analytics.impl.Yf
    public final List<Li> toProto() {
        return (List) this.c.fromModel(this);
    }

    public final String toString() {
        return "CartActionInfoEvent{eventType=" + this.a + ", cartItem=" + this.b + ", converter=" + this.c + '}';
    }

    public C1322v3(int i, C1397y3 c1397y3, InterfaceC1095m8 interfaceC1095m8) {
        this.a = i;
        this.b = c1397y3;
        this.c = interfaceC1095m8;
    }
}
