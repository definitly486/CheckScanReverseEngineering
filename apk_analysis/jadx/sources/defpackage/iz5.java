package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.tapjoy.TJAdUnitConstants;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public interface iz5 {
    @gn3("api/v2.1/operations/categories")
    @kv3({"Accept: application/json", "Content-type: application/json;charset=UTF-8"})
    mz7<List<py5>> a();

    @gn3("api/v2.1/receipts/{id}/operations")
    mz7<List<fz5>> b(@k46(TtmlNode.ATTR_ID) int i);

    @gn3("api/v2.1/operations")
    @kv3({"Accept: application/json", "Content-type: application/json;charset=UTF-8"})
    mz7<j26<fz5>> c(@lv6("categoryId") int i, @lv6("page") int i2, @lv6(TJAdUnitConstants.String.SIZE) int i3, @lv6("cardId") Long l);
}
