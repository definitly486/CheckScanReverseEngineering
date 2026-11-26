package defpackage;

import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public interface af1 {
    @kv3({"Accept: application/json", "Content-type: application/json;charset=UTF-8"})
    @o72("api/v2.1/queue/receipt/")
    qp1 a(@lv6("qrCode") String str);

    @gn3("api/v2.1/queue/v3/receipts")
    @kv3({"Accept: application/json", "Content-type: application/json;charset=UTF-8"})
    mz7<List<sd1>> b();
}
