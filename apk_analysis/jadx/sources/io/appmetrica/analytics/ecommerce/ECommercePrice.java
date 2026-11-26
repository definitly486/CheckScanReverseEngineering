package io.appmetrica.analytics.ecommerce;

import defpackage.qg;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class ECommercePrice {
    private final ECommerceAmount a;
    private List b;

    public ECommercePrice(ECommerceAmount eCommerceAmount) {
        this.a = eCommerceAmount;
    }

    public ECommerceAmount getFiat() {
        return this.a;
    }

    public List<ECommerceAmount> getInternalComponents() {
        return this.b;
    }

    public ECommercePrice setInternalComponents(List<ECommerceAmount> list) {
        this.b = list;
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("ECommercePrice{fiat=");
        sb.append(this.a);
        sb.append(", internalComponents=");
        return qg.f(sb, this.b, '}');
    }
}
