package defpackage;

import androidx.camera.video.internal.audio.BufferedAudioStream;
import yads.mg3;
import yads.s25;
import yads.vq0;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class iu0 implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ iu0(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                ((BufferedAudioStream) obj).lambda$release$2();
                break;
            case 1:
                ((od6) obj).stop();
                break;
            case 2:
                mg3.a((mg3) obj);
                break;
            case 3:
                s25.b((s25) obj);
                break;
            default:
                vq0.a((vq0) obj);
                break;
        }
    }
}
