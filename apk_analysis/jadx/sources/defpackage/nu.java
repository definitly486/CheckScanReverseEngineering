package defpackage;

import androidx.camera.camera2.pipe.Request;
import androidx.camera.core.ImageCapture;
import androidx.camera.core.imagecapture.ProcessingRequest;
import androidx.camera.video.internal.audio.AudioSource;
import com.tapjoy.internal.o;
import yads.j5;
import yads.sh5;
import yads.v15;
import yads.wn;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class nu implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ nu(int i, Object obj, Object obj2) {
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
                ((AudioSource.AudioSourceCallback) obj2).onError((Throwable) obj);
                break;
            case 1:
                ((Request.Listener) obj2).onAborted((Request) obj);
                break;
            case 2:
                ((ProcessingRequest) obj2).onFinalResult((ImageCapture.OutputFileResults) obj);
                break;
            case 3:
                o.a((ll3) obj2, (nl3) obj);
                break;
            case 4:
                ((v15) obj2).b((sh5) obj);
                break;
            default:
                wn.a((wn) obj2, (j5) obj);
                break;
        }
    }
}
