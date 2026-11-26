package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.tapjoy.TJAdUnitConstants;

/* JADX INFO: loaded from: classes5.dex */
public interface dp5 {
    @a16("api/v2.1/notice/{id}")
    @kv3({"Accept: application/json", "Content-type: application/json;charset=UTF-8"})
    qp1 a(@k46(TtmlNode.ATTR_ID) int i);

    @gn3("api/v2.1/notice/notices")
    @kv3({"Accept: application/json", "Content-type: application/json;charset=UTF-8"})
    mz7<j26<to5>> b(@lv6("page") int i, @lv6(TJAdUnitConstants.String.SIZE) int i2);

    @gn3("api/v2.1/notice/countUnread")
    mz7<Integer> c();
}
