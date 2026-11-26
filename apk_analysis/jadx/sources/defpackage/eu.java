package defpackage;

import androidx.camera.core.impl.LiveDataObservable;
import androidx.media3.exoplayer.audio.AudioRendererEventListener;
import androidx.media3.exoplayer.audio.AudioSink;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class eu implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ eu(int i, Object obj, Object obj2) {
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
                ((AudioRendererEventListener.EventDispatcher) obj2).lambda$audioTrackReleased$11((AudioSink.AudioTrackConfig) obj);
                break;
            default:
                LiveDataObservable.lambda$enableInternalObserver$3((Map.Entry) obj2, (LiveDataObservable.Result) obj);
                break;
        }
    }
}
