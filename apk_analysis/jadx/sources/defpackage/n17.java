package defpackage;

import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public interface n17 {
    @gn3("api/v2.1/area/suggest")
    mz7<l17> a();

    @z06("api/v2.1/area")
    @kv3({"Accept: application/json", "Content-type: application/json;charset=UTF-8"})
    mz7<List<l17>> b(@lk0 m17 m17Var, @lv6("limit") int i, @lv6("skip") int i2, @lv6(CommonUrlParts.LOCALE) String str);
}
