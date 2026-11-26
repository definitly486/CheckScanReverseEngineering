package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public interface xy8 {
    @z06("api/v2.1/cashback/v3/transfer/card")
    mz7<gz8> a(@lk0 ez8 ez8Var);

    @z06("api/v2.1/cashback/v3/transfer/phone")
    mz7<yz8> b(@lk0 wz8 wz8Var);

    @gn3("api/v2.1/cashback/v3/transfer/phone/info")
    mz7<tz8> c();

    @gn3("api/v2.1/cashback/v3/transfer/sbp/info")
    Object d(e02<? super i19> e02Var);

    @z06("api/v2.1/cashback/v3/transfer/sbp")
    Object e(@lk0 wz8 wz8Var, e02<? super yz8> e02Var);

    @gn3("api/v2.1/cashback/v3/transfer/card/info")
    mz7<bz8> f(@lv6("cardId") long j);
}
