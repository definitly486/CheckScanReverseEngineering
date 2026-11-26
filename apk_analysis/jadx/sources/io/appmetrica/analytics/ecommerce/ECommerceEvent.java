package io.appmetrica.analytics.ecommerce;

import io.appmetrica.analytics.impl.C1315ul;
import io.appmetrica.analytics.impl.C1322v3;
import io.appmetrica.analytics.impl.C1365wl;
import io.appmetrica.analytics.impl.C1383xe;
import io.appmetrica.analytics.impl.C1415yl;
import io.appmetrica.analytics.impl.Yf;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public abstract class ECommerceEvent implements Yf {
    public static ECommerceEvent addCartItemEvent(ECommerceCartItem eCommerceCartItem) {
        return new C1322v3(4, eCommerceCartItem);
    }

    public static ECommerceEvent beginCheckoutEvent(ECommerceOrder eCommerceOrder) {
        return new C1383xe(6, eCommerceOrder);
    }

    public static ECommerceEvent purchaseEvent(ECommerceOrder eCommerceOrder) {
        return new C1383xe(7, eCommerceOrder);
    }

    public static ECommerceEvent removeCartItemEvent(ECommerceCartItem eCommerceCartItem) {
        return new C1322v3(5, eCommerceCartItem);
    }

    public static ECommerceEvent showProductCardEvent(ECommerceProduct eCommerceProduct, ECommerceScreen eCommerceScreen) {
        return new C1315ul(eCommerceProduct, eCommerceScreen);
    }

    public static ECommerceEvent showProductDetailsEvent(ECommerceProduct eCommerceProduct, ECommerceReferrer eCommerceReferrer) {
        return new C1365wl(eCommerceProduct, eCommerceReferrer);
    }

    public static ECommerceEvent showScreenEvent(ECommerceScreen eCommerceScreen) {
        return new C1415yl(eCommerceScreen);
    }

    public String getPublicDescription() {
        return "E-commerce base event";
    }

    @Override // io.appmetrica.analytics.impl.Yf
    public abstract /* synthetic */ List toProto();
}
