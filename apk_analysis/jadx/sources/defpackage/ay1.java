package defpackage;

import androidx.camera.video.internal.encoder.EncoderCallback;
import androidx.core.widget.ContentLoadingProgressBar;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ay1 implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ ay1(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                ((ContentLoadingProgressBar) obj).lambda$new$1();
                break;
            default:
                ((EncoderCallback) obj).onEncodeStop();
                break;
        }
    }
}
