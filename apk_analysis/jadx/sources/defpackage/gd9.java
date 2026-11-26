package defpackage;

import androidx.camera.core.impl.CameraCaptureCallback;
import androidx.camera.core.impl.SessionConfig;
import androidx.camera.video.VideoCapture;
import com.my.tracker.MyTrackerConfig;
import com.my.tracker.obfuscated.c1;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class gd9 implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;
    public final /* synthetic */ Object e;

    public /* synthetic */ gd9(Object obj, Object obj2, Object obj3, int i) {
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
                VideoCapture.lambda$setupSurfaceUpdateNotifier$5((AtomicBoolean) obj3, (SessionConfig.Builder) obj2, (CameraCaptureCallback) obj);
                break;
            default:
                ((c1) obj3).b((String) obj2, (MyTrackerConfig.OkHttpClientProvider) obj);
                break;
        }
    }
}
