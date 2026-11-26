package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.google.android.gms.actions.SearchIntents;
import com.tapjoy.TJAdUnitConstants;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public interface mh1 {
    @gn3("api/v2.1/banners")
    mz7<oc0> a();

    @gn3("api/v2.1/receipts/{recId}/info")
    mz7<List<bf1>> b(@k46("recId") int i);

    @gn3("api/v2.1/banners/{id}/ignore")
    mz7<a57<b57>> c(@k46(TtmlNode.ATTR_ID) int i);

    @gn3("api/v2.1/receipts/items/search")
    mz7<j26<vh6>> d(@lv6("page") int i, @lv6(SearchIntents.EXTRA_QUERY) String str);

    @z06("api/v2.1/receipts/unload")
    qp1 e(@lk0 x33 x33Var);

    @gn3("api/v2.1/products/categories")
    mz7<n71> f(@lv6(CommonUrlParts.LOCALE) String str);

    @z06("api/v2.1/forms/personalData")
    mz7<a57<b57>> g(@lk0 ze1 ze1Var);

    @z06("api/v2.1/receipts/search")
    mz7<ei1> h(@lv6(SearchIntents.EXTRA_QUERY) String str, @lv6("page") int i, @lv6(TJAdUnitConstants.String.SIZE) int i2);

    @gn3("api/v2.1/receipts/v2")
    Object i(@lv6("areaId") int i, @lv6("dateFrom") String str, @lv6("dateTo") String str2, @lv6("maxTotalSum") Integer num, @lv6("minTotalSum") Integer num2, @lv6("page") int i2, @lv6(TJAdUnitConstants.String.SIZE) int i3, @lv6("sort") String str3, e02<? super ei1> e02Var);

    @gn3("v1/blocks/banners/RECEIPTS")
    Object j(e02<? super List<ke1>> e02Var);

    @gn3("api/v2.1/receipts/v2/{id}")
    @kv3({"Accept: application/json"})
    mz7<jh1> k(@k46(TtmlNode.ATTR_ID) int i);

    @gn3("api/v2.1/receipts/{recId}/bonuses/areas/{areaId}/cards")
    mz7<w42> l(@k46("recId") int i, @k46("areaId") int i2);

    @gn3("api/v2.1/receipts/{id}/banners/alert")
    mz7<List<ld1>> m(@k46(TtmlNode.ATTR_ID) int i);

    @kv3({"Accept: application/json"})
    @o72("api/v2.1/receipts")
    mz7<a57<b57>> n(@lv6("number") int i);

    @gn3("api/v2.1/receipts/scan/bnr")
    mz7<hc> o();

    @z06("api/v2.1/products/{id}/report")
    mz7<a57<b57>> p(@k46(TtmlNode.ATTR_ID) long j);
}
