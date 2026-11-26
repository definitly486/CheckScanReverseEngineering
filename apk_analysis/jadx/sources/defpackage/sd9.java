package defpackage;

import androidx.media3.exoplayer.DecoderCounters;
import androidx.media3.exoplayer.video.VideoRendererEventListener;
import com.my.tracker.obfuscated.i0;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class sd9 implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ sd9(int i, Object obj, Object obj2) {
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
                ((VideoRendererEventListener.EventDispatcher) obj2).lambda$enabled$0((DecoderCounters) obj);
                break;
            default:
                ((i0) obj2).b((i0.a) obj);
                break;
        }
    }
}
