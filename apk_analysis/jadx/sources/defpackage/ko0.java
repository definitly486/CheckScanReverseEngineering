package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public interface ko0 {
    @gn3("api/v2.1/bonuses/{id}/balance")
    @kv3({"Accept: application/json", "Content-type: application/json;charset=UTF-8"})
    mz7<Integer> a(@k46(TtmlNode.ATTR_ID) long j);

    @gn3("api/v2.1/bonuses/{id}/transfer/code")
    @kv3({"Accept: application/json", "Content-type: application/json;charset=UTF-8"})
    mz7<iz8> b(@k46(TtmlNode.ATTR_ID) long j);

    @gn3("api/v2.1/bonuses/{id}/terms")
    @kv3({"Accept: application/json", "Content-type: application/json;charset=UTF-8"})
    mz7<List<jo0>> c(@k46(TtmlNode.ATTR_ID) long j, @lv6("limit") int i, @lv6("skip") int i2);

    @gn3("api/v2.1/bonuses/{cardId}")
    @kv3({"Accept: application/json", "Content-type: application/json;charset=UTF-8"})
    mz7<go0> d(@k46("cardId") long j);

    @gn3("api/v2.1/bonuses/{id}/rules")
    mz7<String> e(@k46(TtmlNode.ATTR_ID) long j);
}
