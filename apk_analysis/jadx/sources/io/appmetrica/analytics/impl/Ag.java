package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.ecommerce.ECommerceReferrer;

/* JADX INFO: loaded from: classes5.dex */
public final class Ag {
    public final String a;
    public final String b;
    public final C1210qj c;

    public Ag(ECommerceReferrer eCommerceReferrer) {
        this(eCommerceReferrer.getType(), eCommerceReferrer.getIdentifier(), eCommerceReferrer.getScreen() == null ? null : new C1210qj(eCommerceReferrer.getScreen()));
    }

    public final String toString() {
        return "ReferrerWrapper{type='" + this.a + "', identifier='" + this.b + "', screen=" + this.c + '}';
    }

    public Ag(String str, String str2, C1210qj c1210qj) {
        this.a = str;
        this.b = str2;
        this.c = c1210qj;
    }
}
