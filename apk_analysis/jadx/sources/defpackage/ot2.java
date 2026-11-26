package defpackage;

import androidx.camera.core.SurfaceOutput;
import androidx.camera.core.processing.concurrent.DualSurfaceProcessor;
import com.google.firebase.perf.session.gauges.MemoryGaugeCollector;
import com.google.firebase.perf.util.Timer;
import com.my.tracker.obfuscated.e1;
import yads.ne6;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class ot2 implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ ot2(int i, Object obj, Object obj2) {
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
                ((DualSurfaceProcessor) obj2).lambda$onOutputSurface$3((SurfaceOutput) obj);
                break;
            case 1:
                ((MemoryGaugeCollector) obj2).lambda$scheduleMemoryMetricCollectionOnce$1((Timer) obj);
                break;
            case 2:
                ((e1) obj2).a((String) obj);
                break;
            default:
                ((ne6) obj2).a((Exception) obj);
                break;
        }
    }
}
