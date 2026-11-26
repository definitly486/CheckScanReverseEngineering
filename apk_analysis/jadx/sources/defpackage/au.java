package defpackage;

import android.content.Context;
import androidx.media3.common.util.NetworkTypeObserver;
import androidx.media3.exoplayer.DecoderCounters;
import androidx.media3.exoplayer.audio.AudioRendererEventListener;
import io.grpc.l;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class au implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ au(int i, Object obj, Object obj2) {
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
                ((AudioRendererEventListener.EventDispatcher) obj2).lambda$disabled$6((DecoderCounters) obj);
                break;
            case 1:
                ((wp2.b) obj2).b.a((l.e) obj);
                break;
            default:
                ((NetworkTypeObserver) obj2).lambda$new$0((Context) obj);
                break;
        }
    }
}
