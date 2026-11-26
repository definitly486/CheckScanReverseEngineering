package defpackage;

import com.google.android.gms.actions.SearchIntents;
import com.tapjoy.TJAdUnitConstants;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public interface np0 {
    @gn3("v1/blocks/banners/{bannerKind}")
    @ul2
    mz7<a57<List<jc0>>> b(@k46("bannerKind") fc0 fc0Var, @lv6("areaId") int i, @lv6("categoryId") Integer num);

    @gn3("v1/blocks/banners/{bannerKind}")
    Object c(@k46("bannerKind") fc0 fc0Var, @lv6("areaId") int i, @lv6("categoryId") Integer num, e02<? super a57<List<jc0>>> e02Var);

    @gn3("v1/blocks/promocodes/search")
    mz7<j26<iq6>> d(@lv6("areaId") Integer num, @lv6(SearchIntents.EXTRA_QUERY) String str, @lv6("page") int i, @lv6(TJAdUnitConstants.String.SIZE) int i2);

    @gn3("v1/blocks/promocodes")
    mz7<j26<iq6>> e(@lv6("areaId") Integer num, @lv6("categoryId") Integer num2, @lv6("page") int i, @lv6(TJAdUnitConstants.String.SIZE) int i2);

    @a16("v1/blocks/onlineShops/favorite")
    Object f(@lk0 d63 d63Var, e02<? super a57<j59>> e02Var);

    @gn3("v1/blocks/categories/experiment")
    mz7<j26<o81>> g(@lv6("areaId") int i, @lv6("page") int i2, @lv6(TJAdUnitConstants.String.SIZE) int i3);

    @gn3("v1/blocks/promocodes/history")
    mz7<j26<iq6>> h(@lv6("areaId") Integer num, @lv6("page") int i, @lv6(TJAdUnitConstants.String.SIZE) int i2);

    @gn3("v1/blocks/onlineShops/favorite")
    mz7<j26<sx5>> i(@lv6("areaId") Integer num, @lv6("page") int i, @lv6(TJAdUnitConstants.String.SIZE) int i2);

    @a16("v1/blocks/onlineShops/favorite")
    qp1 j(@lk0 d63 d63Var);

    @gn3("v1/blocks/onlineShops")
    mz7<j26<sx5>> k(@lv6("selectionId") Integer num, @lv6("categoryId") Integer num2, @lv6("areaId") int i, @lv6("page") int i2, @lv6(TJAdUnitConstants.String.SIZE) int i3);

    @gn3("v1/blocks/onlineShops/search")
    mz7<j26<sx5>> l(@lv6("areaId") Integer num, @lv6(SearchIntents.EXTRA_QUERY) String str, @lv6("page") int i, @lv6(TJAdUnitConstants.String.SIZE) int i2);

    @gn3("v1/blocks/onlineShops/favorite?&size=10")
    Object m(@lv6("areaId") int i, @lv6("page") int i2, e02<? super j26<sx5>> e02Var);

    @gn3("v1/blocks/onlineShops/history")
    mz7<j26<sx5>> n(@lv6("areaId") Integer num, @lv6("page") int i, @lv6(TJAdUnitConstants.String.SIZE) int i2);

    @a16("v1/blocks/promocodes/favorite")
    qp1 o(@lk0 d63 d63Var);

    @gn3("v1/blocks/promocodes/favorite")
    mz7<j26<iq6>> p(@lv6("areaId") Integer num, @lv6("page") int i, @lv6(TJAdUnitConstants.String.SIZE) int i2);
}
