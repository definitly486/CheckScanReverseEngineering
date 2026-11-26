package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.tapjoy.TJAdUnitConstants;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public interface a10 {
    @gn3("api/v2.1/balance/blocks/transfer/promocode/{id}")
    Object A(@k46(TtmlNode.ATTR_ID) int i, e02<? super eq6> e02Var);

    @z06("api/v2.1/balance/blocks/transfer/promocode")
    Object B(@lk0 kq6 kq6Var, e02<? super fq6> e02Var);

    @o72("api/v2.1/balance/showOnboarding")
    Object a(e02<? super j59> e02Var);

    @gn3("api/v2.1/bnr/balance?type=MINI_LOGO")
    Object b(e02<? super a57<List<q50>>> e02Var);

    @gn3("api/v2.1/bnr/balance?type=COMMON_HIDABLE")
    Object c(e02<? super a57<List<q30>>> e02Var);

    @z06
    Object d(@g99 String str, @lk0 String str2, e02<? super j59> e02Var);

    @gn3("api/v2.1/balance/blocks/transfer/showcase/cards")
    Object e(e02<? super ca9> e02Var);

    @gn3("api/v2.1/balance/blocks/transfer/showcase/promo/v2")
    Object f(@lv6("promoId") int i, @lv6("onboardingKey") String str, @lv6("taskId") Integer num, e02<? super wp6> e02Var);

    @gn3("api/v2.1/bnr/balance?type=COMMON_V2")
    Object g(e02<? super a57<List<c10>>> e02Var);

    @gn3("api/v2.1/apiBank/alfa/blocks/alfaId")
    Object h(@lv6("forceUpdate") boolean z, e02<? super a57<d10>> e02Var);

    @gn3("api/v2.1/apiBank/alfa/alfaId/link")
    Object i(e02<? super x00> e02Var);

    @gn3("api/v2.1/balance/blocks/cashback")
    Object j(@lv6("forceUpdate") boolean z, e02<? super a57<g10>> e02Var);

    @gn3("api/v2.1/operations")
    Object k(@lv6("forceUpdate") boolean z, e02<? super a57<j26<fz5>>> e02Var);

    @gn3
    Object l(@g99 String str, e02<? super j59> e02Var);

    @gn3("api/v2.1/balance/blocks/transfer/promocode")
    Object m(@lv6("groupId") int i, @lv6("page") int i2, @lv6(TJAdUnitConstants.String.SIZE) int i3, e02<? super j26<hq6>> e02Var);

    @z06("api/v2.1/balance/blocks/transfer/showcase/cards")
    Object n(@lk0 r99 r99Var, e02<? super s99> e02Var);

    @gn3("api/v2.1/balance/blocks")
    Object o(@lv6("forceUpdate") boolean z, e02<? super a57<List<j10>>> e02Var);

    @gn3("api/v2.1/apiBank/alfa/client/profile/link")
    Object p(e02<? super uc> e02Var);

    @gn3("api/v2.1/bnr/balance")
    Object q(@lv6("forceUpdate") boolean z, e02<? super a57<List<ic0>>> e02Var);

    @gn3("api/v2.1/apiBank/alfa/blocks/management")
    Object r(@lv6("forceUpdate") boolean z, e02<? super a57<f10>> e02Var);

    @z06("api/v2.1/apiBank/alfa/transfer/v2")
    Object s(e02<? super kc> e02Var);

    @z06("api/v2.1/bnr/balance/{id}/hide?type=COMMON_HIDABLE")
    Object t(@k46(TtmlNode.ATTR_ID) int i, e02<? super j59> e02Var);

    @gn3("api/v2.1/apiBank/alfa/blocks/verification")
    Object u(@lv6("forceUpdate") boolean z, e02<? super a57<e10>> e02Var);

    @gn3("api/v2.1/balance/blocks/promotions")
    Object v(@lv6("page") int i, @lv6(TJAdUnitConstants.String.SIZE) int i2, @lv6("forceUpdate") boolean z, e02<? super a57<j26<i10>>> e02Var);

    @z06
    Object w(@g99 String str, e02<? super j59> e02Var);

    @gn3("api/v2.1/balance/blocks/transfer")
    Object x(@lv6("forceUpdate") boolean z, e02<? super a57<k10>> e02Var);

    @gn3("api/v2.1/balance/showOnboarding")
    Object y(e02<? super y50> e02Var);

    @gn3("api/v2.1/balance/blocks/transfer/showcase")
    Object z(e02<? super a57<k70>> e02Var);
}
