package defpackage;

import android.content.Intent;
import androidx.window.area.RearDisplaySessionImpl;
import androidx.window.area.WindowAreaControllerImpl;
import com.google.firebase.perf.session.gauges.MemoryGaugeCollector;
import com.google.firebase.perf.util.Timer;
import com.my.tracker.obfuscated.r0;
import com.tapjoy.TJCorePlacement;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class eu3 implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ eu3(int i, Object obj, Object obj2) {
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
                ((c31) obj2).D((gu3) obj, j59.a);
                break;
            case 1:
                ((MemoryGaugeCollector) obj2).lambda$scheduleMemoryMetricCollectionWithRate$0((Timer) obj);
                break;
            case 2:
                ((TJCorePlacement) obj2).a((Intent) obj);
                break;
            case 3:
                WindowAreaControllerImpl.RearDisplaySessionConsumer.onSessionStarted$lambda$1$lambda$0((WindowAreaControllerImpl.RearDisplaySessionConsumer) obj2, (RearDisplaySessionImpl) obj);
                break;
            default:
                ((r0) obj2).a((List) obj);
                break;
        }
    }
}
