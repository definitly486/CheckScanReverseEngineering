package yads;

import com.monetization.ads.mediation.base.MediatedAdapterInfo;
import defpackage.k57;

/* JADX INFO: loaded from: classes4.dex */
public final class o24 {
    public final com.monetization.ads.mediation.base.a a;

    public o24(com.monetization.ads.mediation.base.a aVar) {
        this.a = aVar;
    }

    public final MediatedAdapterInfo b() {
        Object aVar;
        try {
            aVar = this.a.getAdapterInfo();
        } catch (Throwable th) {
            aVar = new k57.a(th);
        }
        if (k57.a(aVar) != null) {
            aVar = new MediatedAdapterInfo.Builder().setAdapterVersion("null").setNetworkName("null").setNetworkSdkVersion("null").build();
        }
        return (MediatedAdapterInfo) aVar;
    }
}
