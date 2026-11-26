package defpackage;

import android.content.Context;
import android.graphics.drawable.Drawable;
import com.google.android.material.button.MaterialButton;
import com.google.firebase.perf.config.DeviceCacheManager;
import com.google.firebase.perf.session.gauges.CpuGaugeCollector;
import com.google.firebase.perf.util.Timer;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class x42 implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ x42(int i, Object obj, Object obj2) {
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
                ((CpuGaugeCollector) obj2).lambda$scheduleCpuMetricCollectionWithRate$0((Timer) obj);
                break;
            case 1:
                ((DeviceCacheManager) obj2).lambda$setContext$0((Context) obj);
                break;
            case 2:
                ((MaterialButton) obj2).lambda$setSecondaryIcon$3((Drawable) obj);
                break;
            default:
                od6 od6Var = (od6) obj;
                try {
                    ((qd6) obj2).a();
                } catch (Throwable th) {
                    sg.f("Session Replay migrateBufferToQueue failed: ", th, '.', od6Var.c.v);
                }
                break;
        }
    }
}
