package defpackage;

import android.content.Context;
import android.media.metrics.NetworkEvent;
import androidx.media3.exoplayer.analytics.MediaMetricsListener;
import com.google.firebase.inappmessaging.internal.AbtIntegrationHelper;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class z1 implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ z1(int i, Object obj, Object obj2) {
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
                ((AbtIntegrationHelper) obj2).lambda$updateRunningExperiments$0((ArrayList) obj);
                break;
            case 1:
                ((MediaMetricsListener) obj2).lambda$maybeReportNetworkChange$1((NetworkEvent) obj);
                break;
            default:
                ((eha) obj2).V((Context) obj);
                break;
        }
    }
}
