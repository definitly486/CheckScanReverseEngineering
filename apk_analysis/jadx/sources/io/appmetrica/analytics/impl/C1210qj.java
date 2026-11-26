package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreutils.internal.collection.CollectionUtils;
import io.appmetrica.analytics.ecommerce.ECommerceScreen;
import java.util.List;
import java.util.Map;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.qj, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1210qj {
    public final String a;
    public final List b;
    public final String c;
    public final Map d;

    public C1210qj(ECommerceScreen eCommerceScreen) {
        this(eCommerceScreen.getName(), eCommerceScreen.getSearchQuery(), CollectionUtils.arrayListCopyOfNullableCollection(eCommerceScreen.getCategoriesPath()), CollectionUtils.mapCopyOfNullableMap(eCommerceScreen.getPayload()));
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ScreenWrapper{name='");
        sb.append(this.a);
        sb.append("', categoriesPath=");
        sb.append(this.b);
        sb.append(", searchQuery='");
        sb.append(this.c);
        sb.append("', payload=");
        return defpackage.g2.c(sb, this.d, '}');
    }

    public C1210qj(String str, String str2, List list, Map map) {
        this.a = str;
        this.b = list;
        this.c = str2;
        this.d = map;
    }
}
