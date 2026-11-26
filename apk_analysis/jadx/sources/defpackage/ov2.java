package defpackage;

import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public interface ov2 {
    @gn3("api/v2.1/v1/e_checks/receipts/processed")
    mz7<Boolean> a();

    @z06("https://mco.nalog.ru/api/v1/receipt/fiscal_data")
    @kv3({"Content-Type: application/json", "Accept: application/json", "User-Agent: Mozilla/5.0 (Linux; Android 11; Pixel 5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.91 Mobile Safari/537.36"})
    tq5<hl3.a> b(@lk0 mf4 mf4Var, @bv3("Authorization") String str);

    @z06("api/v2.1/v1/e_checks/receipts")
    mz7<a57<b57>> c(@lk0 List<hl3> list);

    @z06("api/v2.1/v1/e_checks/bind")
    mz7<n37> d(@lk0 u99 u99Var);

    @z06("https://mco.nalog.ru/api/v1/receipt")
    @kv3({"Content-Type: application/json", "Accept: application/json", "User-Agent: Mozilla/5.0 (Linux; Android 11; Pixel 5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.91 Mobile Safari/537.36"})
    mz7<mr4> e(@lk0 yb7 yb7Var, @bv3("Authorization") String str);

    @gn3("api/v2.1/v1/e_checks/goToUrl")
    mz7<String> getUrl();
}
