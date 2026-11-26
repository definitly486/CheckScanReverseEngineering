package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;

/* JADX INFO: loaded from: classes5.dex */
public interface x80 {
    @gn3("api/v2.1/apiBank/state")
    mz7<d41> a();

    @gn3("api/v2.1/users/info")
    mz7<v99> b();

    @z06("api/v2.1/events/apiBank/upgradeFormOpened")
    qp1 c();

    @z06("api/v2.1/events/apiBank/registerAttempt")
    qp1 d();

    @z06("api/v2.1/confirm/send")
    mz7<a57<bw1>> e(@lk0 r76 r76Var);

    @gn3("api/v2.1/apiBank/virtualCards/{id}/link/replenish")
    mz7<y31> f(@k46(TtmlNode.ATTR_ID) int i);

    @z06("api/v2.1/confirm/accept")
    qp1 g(@lk0 xm1 xm1Var);

    @z06("api/v2.1/events/apiBank/alfa/registerCompleted")
    mz7<ic> h(@lk0 jc jcVar);

    @z06("api/v2.1/apiBank/alfa/client/register")
    mz7<a57<uc>> i();

    @gn3("api/v2.1/apiBank/alfa/info/v2")
    Object j(e02<? super di4> e02Var);
}
