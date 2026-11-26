package defpackage;

import androidx.camera.core.impl.CameraPresenceProvider;
import com.tapjoy.TJAwardCurrencyListener;
import com.tapjoy.TJCurrency;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class l11 implements Runnable {
    public final /* synthetic */ int b = 0;
    public final /* synthetic */ int c;
    public final /* synthetic */ Object d;
    public final /* synthetic */ Object e;

    public /* synthetic */ l11(CameraPresenceProvider cameraPresenceProvider, List list, int i) {
        this.d = cameraPresenceProvider;
        this.e = list;
        this.c = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.b;
        Object obj = this.e;
        int i2 = this.c;
        Object obj2 = this.d;
        switch (i) {
            case 0:
                CameraPresenceProvider.scheduleRetryAttempt$lambda$0$0((CameraPresenceProvider) obj2, (List) obj, i2);
                break;
            default:
                ((TJCurrency) obj2).a(i2, (TJAwardCurrencyListener) obj);
                break;
        }
    }

    public /* synthetic */ l11(TJCurrency tJCurrency, int i, TJAwardCurrencyListener tJAwardCurrencyListener) {
        this.d = tJCurrency;
        this.c = i;
        this.e = tJAwardCurrencyListener;
    }
}
