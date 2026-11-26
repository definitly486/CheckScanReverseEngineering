package defpackage;

import androidx.camera.core.CameraPresenceListener;
import androidx.camera.core.impl.CameraPresenceProvider;
import androidx.media3.common.Timeline;
import androidx.media3.exoplayer.source.preload.PreloadMediaSource;
import com.tapjoy.TJCurrency;
import com.tapjoy.TJGetCurrencyBalanceListener;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class k11 implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ k11(int i, Object obj, Object obj2) {
        this.b = i;
        this.c = obj;
        this.d = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.b;
        Object obj = this.d;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                CameraPresenceProvider.addCameraPresenceListener$lambda$0((CameraPresenceProvider) obj2, (CameraPresenceListener) obj);
                break;
            case 1:
                ((PreloadMediaSource) obj2).lambda$onChildSourceInfoRefreshed$2((Timeline) obj);
                break;
            default:
                ((TJCurrency) obj2).a((TJGetCurrencyBalanceListener) obj);
                break;
        }
    }
}
