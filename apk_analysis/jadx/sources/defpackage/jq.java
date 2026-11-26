package defpackage;

import androidx.work.impl.StartStopToken;
import androidx.work.impl.background.greedy.TimeLimiter;
import com.google.firebase.perf.metrics.AppStartTrace;
import com.google.firebase.perf.v1.TraceMetric;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class jq implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ jq(int i, Object obj, Object obj2) {
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
                ((AppStartTrace) obj2).lambda$logExperimentTrace$0((TraceMetric.Builder) obj);
                break;
            default:
                TimeLimiter.track$lambda$0((TimeLimiter) obj2, (StartStopToken) obj);
                break;
        }
    }
}
