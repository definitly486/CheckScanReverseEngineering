package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.google.firebase.dynamiclinks.DynamicLink;
import com.tapjoy.TJAdUnitConstants;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public interface m9 {
    @gn3("v1/blocks/onlineShops/{elementId}/steps")
    @kv3({"Accept: application/json", "Content-type: application/json;charset=UTF-8"})
    mz7<fy5> a(@k46("elementId") long j);

    @gn3("v1/blocks/onlineShops/{id}/cardButton")
    @kv3({"Accept: application/json", "Content-type: application/json;charset=UTF-8"})
    mz7<px5> b(@k46(TtmlNode.ATTR_ID) long j);

    @gn3("v1/blocks/onlineShops/{elementId}/hot")
    @kv3({"Accept: application/json", "Content-type: application/json;charset=UTF-8"})
    mz7<cx3> e(@k46("elementId") long j, @lv6("page") int i, @lv6(TJAdUnitConstants.String.SIZE) int i2);

    @gn3("v1/blocks/onlineShops/{id}/description")
    @kv3({"Accept: application/json", "Content-type: application/json;charset=UTF-8"})
    mz7<vl2> f(@k46(TtmlNode.ATTR_ID) long j);

    @gn3("v1/blocks/onlineShops/{elementId}/promocodes")
    @kv3({"Accept: application/json", "Content-type: application/json;charset=UTF-8"})
    mz7<List<rr6>> g(@k46("elementId") long j);

    @gn3("v1/blocks/cashback/checkLink")
    mz7<a57<ah6>> h(@lv6(DynamicLink.Builder.KEY_LINK) String str, @lv6("linkCheckerId") int i, @lv6("onlineShopId") Integer num, @lv6("areaId") Integer num2);

    @a16("v1/blocks/onlineShops/favorite")
    @kv3({"Accept: application/json", "Content-type: application/json;charset=UTF-8"})
    qp1 i(@lk0 i63 i63Var);

    @gn3("v1/blocks/onlineShops/{elementId}/info")
    @kv3({"Accept: application/json", "Content-type: application/json;charset=UTF-8"})
    mz7<rx5> j(@k46("elementId") long j);

    @gn3("v1/blocks/onlineShops/{elementId}/blocks")
    @kv3({"Accept: application/json", "Content-type: application/json;charset=UTF-8"})
    mz7<List<kx5>> k(@k46("elementId") long j);
}
