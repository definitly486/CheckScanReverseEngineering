package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public interface o51 {
    @gn3("api/v2.1/advance")
    mz7<List<st6>> a();

    @gn3("api/v2.1/cashback/v2/transfer/promocode/info")
    @kv3({"Accept: application/json", "Content-type: application/json;charset=UTF-8"})
    mz7<List<gq6>> b(@lv6("areaId") int i);

    @z06("api/v2.1/advance/{id}/submit")
    @kg5
    mz7<a57<b57>> c(@k46(TtmlNode.ATTR_ID) long j, @b46 lg5.c cVar, @b46 lg5.c cVar2, @b46(ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY) g37 g37Var);

    @gn3("api/v2.1/balance/blocks")
    mz7<List<m10>> d();

    @gn3("api/v2.1/cashback/cards")
    @kv3({"Accept: application/json", "Content-type: application/json;charset=UTF-8"})
    mz7<wb0> e(@lv6("areaId") Integer num);

    @z06("api/v2.1/cashback/v2/transfer/promocode")
    @kv3({"Accept: application/json", "Content-type: application/json;charset=UTF-8"})
    mz7<e09> f(@lk0 hz8 hz8Var);

    @gn3("api/v2.1/buttons/floating/v2")
    Object g(e02<? super List<fd3>> e02Var);

    @gn3("api/v2.1/buttons/floating/v3")
    Object h(@lv6("group") int i, e02<? super List<fd3>> e02Var);

    @z06("api/v2.1/events/buttons/action")
    Object i(@lk0 gd3 gd3Var, e02<? super a57<j59>> e02Var);
}
