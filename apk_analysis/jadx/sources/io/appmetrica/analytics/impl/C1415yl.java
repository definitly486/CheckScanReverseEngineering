package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.ecommerce.ECommerceEvent;
import io.appmetrica.analytics.ecommerce.ECommerceScreen;
import java.util.List;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.yl, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1415yl extends ECommerceEvent {
    public final C1210qj a;
    public final InterfaceC1095m8 b;

    public C1415yl(ECommerceScreen eCommerceScreen) {
        this(new C1210qj(eCommerceScreen), new C1440zl());
    }

    public final InterfaceC1095m8 a() {
        return this.b;
    }

    @Override // io.appmetrica.analytics.ecommerce.ECommerceEvent
    public final String getPublicDescription() {
        return "shown screen info";
    }

    @Override // io.appmetrica.analytics.ecommerce.ECommerceEvent, io.appmetrica.analytics.impl.Yf
    public final List<Li> toProto() {
        return (List) this.b.fromModel(this);
    }

    public final String toString() {
        return "ShownScreenInfoEvent{screen=" + this.a + ", converter=" + this.b + '}';
    }

    public C1415yl(C1210qj c1210qj, InterfaceC1095m8 interfaceC1095m8) {
        this.a = c1210qj;
        this.b = interfaceC1095m8;
    }
}
