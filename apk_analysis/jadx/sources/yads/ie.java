package yads;

import android.content.Context;
import defpackage.j59;
import io.appmetrica.analytics.AppMetricaLibraryAdapter;
import io.appmetrica.analytics.AppMetricaLibraryAdapterConfig;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes6.dex */
public final class ie {
    public static final AtomicBoolean d = new AtomicBoolean(false);
    public final ng a;
    public final lg b;
    public final he c;

    public ie(Context context) {
        ng ngVar = new ng();
        lg lgVar = new lg(context);
        he heVar = new he(context);
        this.a = ngVar;
        this.b = lgVar;
        this.c = heVar;
    }

    public final void a(Context context) {
        if (this.b.b() && d.compareAndSet(false, true)) {
            boolean z = !this.a.a.b(context);
            he heVar = this.c;
            if (heVar.a.b()) {
                try {
                    fj0 fj0Var = heVar.b;
                    fj0Var.getClass();
                    AppMetricaLibraryAdapter.activate(fj0Var.a, AppMetricaLibraryAdapterConfig.newConfigBuilder().withAdvIdentifiersTracking(z).build());
                    j59 j59Var = j59.a;
                } catch (Throwable unused) {
                }
            }
        }
    }
}
