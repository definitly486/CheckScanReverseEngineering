package defpackage;

import io.appmetrica.analytics.StartupParamsCallback;

/* JADX INFO: loaded from: classes5.dex */
public final class de implements StartupParamsCallback {
    public final /* synthetic */ c31 a;

    public de(c31 c31Var) {
        this.a = c31Var;
    }

    @Override // io.appmetrica.analytics.StartupParamsCallback
    public final void onReceive(StartupParamsCallback.Result result) {
        c31 c31Var = this.a;
        if (c31Var.t() instanceof no5) {
            String str = result != null ? result.deviceId : null;
            if (str == null) {
                str = "";
            }
            c31Var.resumeWith(str);
        }
    }

    @Override // io.appmetrica.analytics.StartupParamsCallback
    public final void onRequestError(StartupParamsCallback.Reason reason, StartupParamsCallback.Result result) {
        reason.getClass();
        c31 c31Var = this.a;
        if (c31Var.t() instanceof no5) {
            c31Var.resumeWith(new String());
        }
    }
}
