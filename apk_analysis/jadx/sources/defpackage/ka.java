package defpackage;

import androidx.camera.camera2.pipe.compat.AudioRestrictionControllerImpl;
import androidx.media3.exoplayer.source.ads.AdsMediaSource;
import com.google.common.util.concurrent.ListenableFuture;
import com.google.firebase.inappmessaging.internal.ForegroundNotifier;
import com.tapjoy.TJSetUserIDListener;
import com.tapjoy.TJUser;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ka implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ ka(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                ((AdsMediaSource) obj).maybeUpdateSourceInfo();
                break;
            case 1:
                AudioRestrictionControllerImpl._init_$lambda$0((AudioRestrictionControllerImpl) obj);
                break;
            case 2:
                ((ListenableFuture) obj).cancel(true);
                break;
            case 3:
                ((ForegroundNotifier) obj).lambda$onActivityPaused$0();
                break;
            default:
                TJUser.e((TJSetUserIDListener) obj);
                break;
        }
    }
}
