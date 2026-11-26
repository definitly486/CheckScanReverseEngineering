package yads;

import defpackage.k57;
import io.appmetrica.analytics.StartupParamsCallback;
import io.appmetrica.analytics.StartupParamsItem;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class dj0 implements StartupParamsCallback {
    public final /* synthetic */ List a;
    public final /* synthetic */ xg b;

    public dj0(List list, xg xgVar) {
        this.a = list;
        this.b = xgVar;
    }

    @Override // io.appmetrica.analytics.StartupParamsCallback
    public final void onReceive(StartupParamsCallback.Result result) {
        Map<String, StartupParamsItem> map;
        StartupParamsItem startupParamsItem;
        List list = this.a;
        int iB = defpackage.m05.b(defpackage.kn1.q(list, 10));
        if (iB < 16) {
            iB = 16;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(iB);
        for (Object obj : list) {
            linkedHashMap.put(obj, (result == null || (map = result.parameters) == null || (startupParamsItem = map.get((String) obj)) == null) ? null : startupParamsItem.getId());
        }
        tg tgVar = this.b.a;
        pg pgVar = new pg((String) linkedHashMap.get(StartupParamsCallback.APPMETRICA_UUID), (String) linkedHashMap.get(StartupParamsCallback.APPMETRICA_DEVICE_ID), (String) linkedHashMap.get("appmetrica_get_ad_url"));
        if (tgVar.a.t() instanceof defpackage.no5) {
            tgVar.a.resumeWith(new k57(pgVar));
        }
    }

    @Override // io.appmetrica.analytics.StartupParamsCallback
    public final void onRequestError(StartupParamsCallback.Reason reason, StartupParamsCallback.Result result) {
        og ogVar;
        qg qgVar;
        if (defpackage.aa4.e(reason, StartupParamsCallback.Reason.NETWORK)) {
            ogVar = og.NETWORK;
        } else {
            ogVar = defpackage.aa4.e(reason, StartupParamsCallback.Reason.INVALID_RESPONSE) ? og.INVALID_RESPONSE : og.UNKNOWN;
        }
        tg tgVar = this.b.a;
        int iOrdinal = ogVar.ordinal();
        if (iOrdinal == 0) {
            qgVar = qg.UNKNOWN;
        } else if (iOrdinal == 1) {
            qgVar = qg.NETWORK;
        } else {
            if (iOrdinal != 2) {
                defpackage.me0.e();
                return;
            }
            qgVar = qg.INVALID_RESPONSE;
        }
        if (tgVar.a.t() instanceof defpackage.no5) {
            tgVar.a.resumeWith(new k57.a(new rg(qgVar)));
        }
    }
}
