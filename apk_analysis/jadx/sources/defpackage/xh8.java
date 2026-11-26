package defpackage;

import com.tapjoy.TJPrivacyPolicy;
import io.appmetrica.analytics.impl.C1268t0;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class xh8 implements Runnable {
    public final /* synthetic */ int b;

    public /* synthetic */ xh8(int i) {
        this.b = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.b) {
            case 0:
                TJPrivacyPolicy.a();
                break;
            default:
                C1268t0.e();
                break;
        }
    }
}
