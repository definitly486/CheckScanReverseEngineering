package defpackage;

import androidx.camera.core.MetadataImageReader;
import androidx.camera.core.impl.ImageReaderProxy;
import androidx.media3.exoplayer.audio.AudioRendererEventListener;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class fu implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ fu(int i, Object obj, Object obj2) {
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
                ((AudioRendererEventListener.EventDispatcher) obj2).lambda$audioCodecError$9((Exception) obj);
                break;
            default:
                ((MetadataImageReader) obj2).lambda$enqueueImageProxy$1((ImageReaderProxy.OnImageAvailableListener) obj);
                break;
        }
    }
}
