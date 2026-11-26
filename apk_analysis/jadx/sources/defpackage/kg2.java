package defpackage;

import androidx.camera.video.Recorder;
import androidx.media3.exoplayer.analytics.DefaultAnalyticsCollector;
import io.appmetrica.analytics.impl.C0879e;
import java.util.concurrent.ScheduledFuture;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class kg2 implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ kg2(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                ((DefaultAnalyticsCollector) obj).releaseInternal();
                break;
            case 1:
                ((ScheduledFuture) obj).cancel(true);
                break;
            case 2:
                ((Recorder) obj).lambda$start$4();
                break;
            default:
                ((C0879e) obj).a();
                break;
        }
    }
}
