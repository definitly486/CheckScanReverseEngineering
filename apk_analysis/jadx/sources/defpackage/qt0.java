package defpackage;

import com.tapjoy.TJAdUnitConstants;
import com.tapjoy.TapjoyConstants;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public interface qt0 {
    @gn3("v1/cashback/products/main")
    Object a(@lv6("page") int i, @lv6(TJAdUnitConstants.String.SIZE) int i2, e02<? super j26<qj6>> e02Var);

    @gn3("v1/cashback/selections/merchants/{merchantId}")
    Object b(@k46("merchantId") int i, e02<? super List<? extends fn7>> e02Var);

    @gn3("v1/cashback/categories/selections")
    Object c(e02<? super List<wi6>> e02Var);

    @gn3("v1/cashback/selections/main")
    Object d(@lv6("page") int i, @lv6(TJAdUnitConstants.String.SIZE) int i2, e02<? super j26<ik6>> e02Var);

    @gn3("v1/cashback/selections")
    Object e(@lv6("categoryId") int i, @lv6("page") int i2, @lv6(TJAdUnitConstants.String.SIZE) int i3, e02<? super j26<ik6>> e02Var);

    @gn3("v1/cashback/products")
    Object f(@lv6("categoryId") int i, @lv6("page") int i2, @lv6(TJAdUnitConstants.String.SIZE) int i3, e02<? super j26<qj6>> e02Var);

    @gn3("v1/cashback/selections/{selectionId}")
    Object g(@k46("selectionId") int i, e02<? super List<? extends fn7>> e02Var);

    @gn3("v1/cashback/offers/{offerId}")
    Object h(@k46(TapjoyConstants.TJC_PLACEMENT_OFFER_ID) int i, e02<? super List<? extends zh6>> e02Var);

    @gn3("v1/cashback/categories/products")
    Object i(e02<? super List<wi6>> e02Var);
}
