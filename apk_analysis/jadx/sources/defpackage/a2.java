package defpackage;

import android.media.metrics.PlaybackErrorEvent;
import androidx.media3.exoplayer.analytics.MediaMetricsListener;
import com.google.firebase.inappmessaging.ExperimentPayloadProto;
import com.google.firebase.inappmessaging.internal.AbtIntegrationHelper;
import io.appmetrica.analytics.impl.O0;
import io.appmetrica.analytics.plugins.PluginErrorDetails;
import yads.m4;
import yads.n25;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class a2 implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ a2(int i, Object obj, Object obj2) {
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
                ((AbtIntegrationHelper) obj2).lambda$setExperimentActive$1((ExperimentPayloadProto.ExperimentPayload) obj);
                break;
            case 1:
                ((MediaMetricsListener) obj2).lambda$maybeReportPlaybackError$0((PlaybackErrorEvent) obj);
                break;
            case 2:
                O0.a((O0) obj2, (PluginErrorDetails) obj);
                break;
            default:
                n25.a((n25) obj2, (m4) obj);
                break;
        }
    }
}
