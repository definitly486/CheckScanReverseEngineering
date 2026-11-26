package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreutils.internal.collection.CollectionUtils;
import io.appmetrica.analytics.ecommerce.ECommerceCartItem;
import io.appmetrica.analytics.ecommerce.ECommerceOrder;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.ze, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1433ze {
    public final String a;
    public final String b;
    public final List c;
    public final Map d;

    public C1433ze(ECommerceOrder eCommerceOrder) {
        this(UUID.randomUUID().toString(), eCommerceOrder.getIdentifier(), a(eCommerceOrder.getCartItems()), CollectionUtils.mapCopyOfNullableMap(eCommerceOrder.getPayload()));
    }

    public static ArrayList a(List list) {
        ArrayList arrayList = new ArrayList(list.size());
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(new C1397y3((ECommerceCartItem) it.next()));
        }
        return arrayList;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("OrderWrapper{uuid='");
        sb.append(this.a);
        sb.append("', identifier='");
        sb.append(this.b);
        sb.append("', cartItems=");
        sb.append(this.c);
        sb.append(", payload=");
        return defpackage.g2.c(sb, this.d, '}');
    }

    public C1433ze(String str, String str2, ArrayList arrayList, Map map) {
        this.a = str;
        this.b = str2;
        this.c = arrayList;
        this.d = map;
    }
}
