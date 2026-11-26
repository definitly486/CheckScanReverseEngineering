package defpackage;

import android.view.View;
import androidx.camera.video.internal.encoder.EncoderImpl;
import androidx.media3.exoplayer.source.preload.PreloadMediaSource;
import com.google.android.material.motion.MaterialBackOrchestrator;
import com.my.target.ef;
import com.my.target.wf;
import io.appmetrica.analytics.impl.B0;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class rz implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ rz(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                ((B0) obj).o();
                break;
            case 1:
                ((EncoderImpl) obj).lambda$stop$3();
                break;
            case 2:
                ((MaterialBackOrchestrator) obj).startListeningForBackCallbacksWithPriorityOverlay();
                break;
            case 3:
                ((PreloadMediaSource) obj).lambda$clear$1();
                break;
            default:
                wf wfVar = (wf) obj;
                int i2 = wf.z;
                ef efVar = wfVar.g;
                View[] viewArr = {wfVar.k};
                if (efVar.getVisibility() == 0) {
                    efVar.a(0, viewArr);
                }
                break;
        }
    }
}
