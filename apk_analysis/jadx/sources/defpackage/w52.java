package defpackage;

import com.google.firebase.crashlytics.internal.concurrency.CrashlyticsWorker;
import com.tapjoy.TapjoyPluginAPI;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class w52 implements Runnable {
    public final /* synthetic */ int b;

    public /* synthetic */ w52(int i) {
        this.b = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.b) {
            case 0:
                CrashlyticsWorker.lambda$await$6();
                break;
            default:
                TapjoyPluginAPI.a();
                break;
        }
    }
}
