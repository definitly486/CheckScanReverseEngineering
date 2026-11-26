package defpackage;

import com.google.android.material.button.MaterialButton;
import com.google.firebase.perf.session.gauges.CpuGaugeCollector;
import com.google.firebase.perf.util.Timer;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class y42 implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ y42(int i, Object obj, Object obj2) {
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
                ((CpuGaugeCollector) obj2).lambda$scheduleCpuMetricCollectionOnce$1((Timer) obj);
                break;
            default:
                ((MaterialButton) obj2).lambda$maybeRunAfterWidthAnimation$0((Runnable) obj);
                break;
        }
    }
}
