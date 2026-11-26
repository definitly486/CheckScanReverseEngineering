package defpackage;

import androidx.camera.camera2.pipe.Request;
import androidx.camera.camera2.pipe.RequestMetadata;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.firebase.messaging.ImageDownload;
import io.appmetrica.analytics.idsync.impl.G;
import io.appmetrica.analytics.idsync.impl.q;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class jo1 implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ jo1(int i, Object obj, Object obj2) {
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
                ((Request.Listener) obj2).onRequestSequenceAborted((RequestMetadata) obj);
                break;
            case 1:
                ((ImageDownload) obj2).lambda$start$0((TaskCompletionSource) obj);
                break;
            default:
                q.a((q) obj2, (G) obj);
                break;
        }
    }
}
