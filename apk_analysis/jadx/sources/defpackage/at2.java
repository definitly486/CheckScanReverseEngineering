package defpackage;

import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.drm.DrmSessionEventListener;
import androidx.media3.exoplayer.drm.KeyRequestInfo;
import com.google.common.util.concurrent.ListenableFuture;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class at2 implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;
    public final /* synthetic */ Object e;

    public /* synthetic */ at2(Object obj, Object obj2, Object obj3, int i) {
        this.b = i;
        this.c = obj;
        this.d = obj2;
        this.e = obj3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.b;
        Object obj = this.e;
        Object obj2 = this.d;
        Object obj3 = this.c;
        switch (i) {
            case 0:
                ((DrmSessionEventListener.EventDispatcher) obj3).lambda$drmKeysLoaded$1((DrmSessionEventListener) obj2, (KeyRequestInfo) obj);
                break;
            default:
                Util.lambda$transformFutureAsync$2((ListenableFuture) obj3, (nr7) obj2, (ks) obj);
                break;
        }
    }
}
