package defpackage;

import androidx.media3.common.VideoSize;
import androidx.media3.exoplayer.video.VideoRendererEventListener;
import io.appmetrica.analytics.impl.InterfaceC1207qg;
import io.appmetrica.analytics.impl.L9;
import yads.mq2;
import yads.uw4;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class yg4 implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ yg4(int i, Object obj, Object obj2) {
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
                L9.a((L9) obj2, (InterfaceC1207qg) obj);
                break;
            case 1:
                ((VideoRendererEventListener.EventDispatcher) obj2).lambda$videoSizeChanged$5((VideoSize) obj);
                break;
            default:
                ((mq2) obj2).b((uw4) obj);
                break;
        }
    }
}
