package defpackage;

import androidx.camera.core.processing.concurrent.DualSurfaceProcessorNode;
import androidx.camera.video.internal.encoder.EncoderImpl;
import yads.nf4;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ut2 implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ ut2(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                ((DualSurfaceProcessorNode) obj).lambda$release$1();
                break;
            case 1:
                ((EncoderImpl) obj).lambda$stop$2();
                break;
            default:
                nf4.c((nf4) obj);
                break;
        }
    }
}
