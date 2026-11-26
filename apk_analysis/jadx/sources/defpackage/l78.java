package defpackage;

import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;

/* JADX INFO: loaded from: classes5.dex */
public interface l78 {
    @z06("api/v2.1/expenses")
    @kv3({"Accept: application/json", "Content-type: application/json;charset=UTF-8"})
    mz7<f88> a(@lv6(CommonUrlParts.LOCALE) String str, @lk0 na3 na3Var);

    @z06("api/v2.1/expenses/sum")
    @kv3({"Accept: application/json", "Content-type: application/json;charset=UTF-8"})
    mz7<Long> b(@lk0 na3 na3Var);
}
