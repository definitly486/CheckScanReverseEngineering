package defpackage;

import android.graphics.SurfaceTexture;
import androidx.camera.core.impl.LiveDataObservable;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.media3.common.util.BackgroundThreadStateHandler;
import androidx.media3.exoplayer.audio.AudioRendererEventListener;
import androidx.media3.exoplayer.audio.AudioSink;
import yads.bp5;
import yads.m4;
import yads.r25;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class du implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ du(int i, Object obj, Object obj2) {
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
                ((AudioRendererEventListener.EventDispatcher) obj2).lambda$audioTrackInitialized$10((AudioSink.AudioTrackConfig) obj);
                break;
            case 1:
                ((BackgroundThreadStateHandler) obj2).lambda$updateStateAsync$0(obj);
                break;
            case 2:
                ((LiveDataObservable) obj2).lambda$fetchData$0((CallbackToFutureAdapter.Completer) obj);
                break;
            case 3:
                ((bp5) obj2).a((SurfaceTexture) obj);
                break;
            default:
                r25.a((m4) obj2, (r25) obj);
                break;
        }
    }
}
