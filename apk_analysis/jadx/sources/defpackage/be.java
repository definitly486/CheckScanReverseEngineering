package defpackage;

import io.appmetrica.analytics.AppMetrica;
import io.appmetrica.analytics.StartupParamsCallback;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class be implements w08, xl3 {
    public final /* synthetic */ Object b;

    public /* synthetic */ be(Object obj) {
        this.b = obj;
    }

    @Override // defpackage.xl3
    public Object apply(Object obj) {
        return (qq1) ((rg1) this.b).invoke(obj);
    }

    @Override // defpackage.w08
    public void c(oz7.a aVar) {
        AppMetrica.requestStartupParams(((ee) this.b).a, new ce(aVar), u96.h(StartupParamsCallback.APPMETRICA_DEVICE_ID));
    }
}
