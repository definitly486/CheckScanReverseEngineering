package defpackage;

import com.tapjoy.TJAdUnitConstants;

/* JADX INFO: loaded from: classes5.dex */
public interface h42 {
    @gn3("v1/blocks/promocodes/{elementId}/description")
    @kv3({"Accept: application/json", "Content-type: application/json;charset=UTF-8"})
    mz7<vl2> a(@k46("elementId") long j);

    @gn3("v1/blocks/promocodes/{elementId}/info")
    @kv3({"Accept: application/json", "Content-type: application/json;charset=UTF-8"})
    mz7<n32> b(@k46("elementId") long j);

    @gn3("v1/blocks/promocodes/{elementId}/requestInfo")
    @kv3({"Accept: application/json", "Content-type: application/json;charset=UTF-8"})
    mz7<n32> c(@k46("elementId") long j);

    @gn3("v1/blocks/promocodes/{elementId}/steps")
    @kv3({"Accept: application/json", "Content-type: application/json;charset=UTF-8"})
    mz7<b42> d(@k46("elementId") long j);

    @gn3("v1/blocks/onlineShops/{elementId}/hot")
    @kv3({"Accept: application/json", "Content-type: application/json;charset=UTF-8"})
    mz7<cx3> e(@k46("elementId") long j, @lv6("page") int i, @lv6(TJAdUnitConstants.String.SIZE) int i2);

    @a16("v1/blocks/promocodes/favorite")
    @kv3({"Accept: application/json", "Content-type: application/json;charset=UTF-8"})
    qp1 f(@lk0 h63 h63Var);
}
