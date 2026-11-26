package defpackage;

import android.graphics.SurfaceTexture;
import android.view.Surface;
import androidx.camera.camera2.impl.MeteringRepeating;
import androidx.camera.core.impl.DeferrableSurface;
import androidx.media3.exoplayer.audio.AudioRendererEventListener;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ku implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ ku(int i, Object obj, Object obj2) {
        this.b = i;
        this.d = obj;
        this.c = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.b;
        Object obj = this.c;
        Object obj2 = this.d;
        switch (i) {
            case 0:
                ((AudioRendererEventListener.EventDispatcher) obj2).lambda$decoderReleased$5((String) obj);
                break;
            case 1:
                ((DeferrableSurface) obj2).lambda$new$2((String) obj);
                break;
            default:
                MeteringRepeating.createAndManageDeferrableSurface$lambda$1((Surface) obj2, (SurfaceTexture) obj);
                break;
        }
    }
}
