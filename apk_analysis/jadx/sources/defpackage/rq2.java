package defpackage;

import androidx.camera.core.SurfaceOutput;
import androidx.camera.core.processing.SurfaceProcessorWithExecutor;
import androidx.media3.exoplayer.offline.DownloadHelper;
import com.google.firebase.remoteconfig.interop.rollouts.RolloutsState;
import com.google.firebase.remoteconfig.interop.rollouts.RolloutsStateSubscriber;
import java.io.IOException;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class rq2 implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ rq2(int i, Object obj, Object obj2) {
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
                ((DownloadHelper) obj2).lambda$onMediaPreparationFailed$3((IOException) obj);
                break;
            case 1:
                ((RolloutsStateSubscriber) obj2).onRolloutsStateChanged((RolloutsState) obj);
                break;
            default:
                ((SurfaceProcessorWithExecutor) obj2).lambda$onOutputSurface$1((SurfaceOutput) obj);
                break;
        }
    }
}
