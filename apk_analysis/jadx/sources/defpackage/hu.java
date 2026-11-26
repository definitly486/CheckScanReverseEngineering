package defpackage;

import androidx.media3.common.Format;
import androidx.media3.exoplayer.DecoderReuseEvaluation;
import androidx.media3.exoplayer.audio.AudioRendererEventListener;
import yads.k24;
import yads.vg6;
import yads.zg6;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class hu implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;
    public final /* synthetic */ Object e;

    public /* synthetic */ hu(Object obj, Object obj2, Object obj3, int i) {
        this.b = i;
        this.c = obj;
        this.d = obj2;
        this.e = obj3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.b;
        Object obj = this.e;
        Object obj2 = this.d;
        Object obj3 = this.c;
        switch (i) {
            case 0:
                ((AudioRendererEventListener.EventDispatcher) obj3).lambda$inputFormatChanged$2((Format) obj2, (DecoderReuseEvaluation) obj);
                break;
            default:
                k24.a((k24) obj3, (zg6) obj2, (vg6) obj);
                break;
        }
    }
}
