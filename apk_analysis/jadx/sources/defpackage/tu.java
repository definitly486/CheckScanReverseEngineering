package defpackage;

import android.content.Context;
import androidx.camera.video.internal.audio.AudioSource;
import androidx.media3.exoplayer.drm.DrmSession;
import androidx.media3.exoplayer.drm.OfflineLicenseHelper;
import androidx.webkit.WebViewCompat;
import androidx.webkit.WebViewOutcomeReceiver;
import androidx.webkit.WebViewStartUpConfig;
import com.google.firebase.perf.session.gauges.GaugeManager;
import com.google.firebase.perf.v1.ApplicationProcessState;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class tu implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;
    public final /* synthetic */ Object e;

    public /* synthetic */ tu(Object obj, Object obj2, Object obj3, int i) {
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
                ((AudioSource) obj3).lambda$setAudioSourceCallback$6((Executor) obj2, (AudioSource.AudioSourceCallback) obj);
                break;
            case 1:
                ((GaugeManager) obj3).lambda$startCollectingGauges$2((String) obj2, (ApplicationProcessState) obj);
                break;
            case 2:
                ((OfflineLicenseHelper) obj3).lambda$acquireSessionAndGetOfflineLicenseKeySetIdOnHandlerThread$1((nr7) obj2, (DrmSession) obj);
                break;
            default:
                WebViewCompat.lambda$startUpWebView$5((WebViewStartUpConfig) obj3, (WebViewOutcomeReceiver) obj2, (Context) obj);
                break;
        }
    }
}
