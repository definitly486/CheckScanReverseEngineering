package defpackage;

import io.appmetrica.analytics.StartupParamsCallback;

/* JADX INFO: loaded from: classes5.dex */
public final class ce implements StartupParamsCallback {
    public final /* synthetic */ oz7.a a;

    public ce(oz7.a aVar) {
        this.a = aVar;
    }

    @Override // io.appmetrica.analytics.StartupParamsCallback
    public final void onReceive(StartupParamsCallback.Result result) {
        String str = result != null ? result.deviceId : null;
        if (str == null) {
            str = "";
        }
        this.a.onSuccess(str);
    }

    @Override // io.appmetrica.analytics.StartupParamsCallback
    public final void onRequestError(StartupParamsCallback.Reason reason, StartupParamsCallback.Result result) {
        reason.getClass();
        this.a.onSuccess(new String());
    }
}
