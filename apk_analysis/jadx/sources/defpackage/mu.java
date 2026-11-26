package defpackage;

import androidx.camera.camera2.pipe.Request;
import androidx.camera.camera2.pipe.RequestMetadata;
import androidx.camera.core.ImageProxy;
import androidx.camera.core.imagecapture.ProcessingRequest;
import androidx.camera.video.internal.BufferProvider;
import androidx.camera.video.internal.audio.AudioSource;
import yads.m4;
import yads.wn;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class mu implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ mu(int i, Object obj, Object obj2) {
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
                ((AudioSource) obj2).lambda$setBufferProvider$0((BufferProvider) obj);
                break;
            case 1:
                ((Request.Listener) obj2).onRequestSequenceCreated((RequestMetadata) obj);
                break;
            case 2:
                ((ProcessingRequest) obj2).onFinalResult((ImageProxy) obj);
                break;
            default:
                wn.a((wn) obj2, (m4) obj);
                break;
        }
    }
}
