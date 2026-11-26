package defpackage;

import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public interface e3 {
    @z06("api/v2.1/users/lock")
    mz7<a57<j59>> a();

    @gn3("api/v2.1/features")
    @ul2
    mz7<t99> b();

    @gn3("api/v2.1/account/balance")
    mz7<a57<Long>> c();

    @z06("api/v2.1/users/device")
    qp1 d(@lk0 fm2 fm2Var);

    @gn3("api/v2.1/account/events/sync")
    a75<va3> e();

    @gn3("api/v2.1/features/scheme")
    mz7<cq> f();

    @z06("api/v2.1/geo")
    qp1 h(@lk0 kp3 kp3Var);

    @gn3("api/v2.1/geo/need")
    mz7<jp3> i();

    @z06("api/v2.1/account/events/confirm")
    qp1 j(@lv6("syncDate") String str);

    @gn3("api/v2.1/account/info")
    mz7<a57<ba9>> k();

    @z06("api/v2.1/features/scheme")
    qp1 l(@lk0 List<String> list);

    @z06("api/v2.1/users/signout")
    mz7<a57<j59>> m();

    @z06("api/v2.1/events/trackers")
    mz7<a57<j59>> n(@lk0 qy8 qy8Var);

    @z06("api/v2.1/users/username/reset")
    mz7<a57<b57>> o(@lk0 f89 f89Var);

    @gn3("api/v2.1/account/referralLink")
    mz7<a57<String>> p(@lv6("fromOnboarding") boolean z);

    @gn3("api/v2.1/account/phone?type=API_BANK_ALFA")
    Object q(e02<? super a57<rc9>> e02Var);

    @z06("api/v2.1/users/signin")
    mz7<a57<h3>> r(@lk0 w99 w99Var);

    @a16("api/v2.1/users/profile/city")
    @kv3({"Accept: application/json"})
    mz7<a57<b57>> s(@lk0 y79 y79Var);
}
