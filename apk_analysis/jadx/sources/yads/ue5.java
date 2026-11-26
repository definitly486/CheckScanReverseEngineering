package yads;

import android.content.Context;
import defpackage.j59;
import io.appmetrica.analytics.AppMetricaLibraryAdapter;
import java.util.HashSet;

/* JADX INFO: loaded from: classes6.dex */
public final class ue5 implements ds, w75 {
    public final pe5 a;
    public final me5 b;
    public final t5 c;
    public final Context d;
    public final p50 e = p50.NETWORK;

    public ue5(Context context, pe5 pe5Var, me5 me5Var, t5 t5Var) {
        this.a = pe5Var;
        this.b = me5Var;
        this.c = t5Var;
        this.d = context.getApplicationContext();
    }

    @Override // yads.y85
    public final void a(Object obj) {
        HashSet<he5> hashSet;
        fe5 fe5Var = (fe5) obj;
        pe5 pe5Var = this.a;
        Context context = this.d;
        pe5Var.getClass();
        synchronized (pe5.b) {
            hashSet = new HashSet(pe5Var.a.keySet());
            yg5.a().a(context, fe5Var);
            j59 j59Var = j59.a;
        }
        for (he5 he5Var : hashSet) {
            boolean z = !he5Var.a.a.b(context);
            he heVar = he5Var.b;
            if (heVar.a.b()) {
                heVar.b.getClass();
                AppMetricaLibraryAdapter.setAdvIdentifiersTracking(z);
                j59 j59Var2 = j59.a;
            }
        }
        this.c.a(s5.SDK_CONFIGURATION_REQUEST);
        me5 me5Var = this.b;
        p50 p50Var = this.e;
        if (me5Var.a.t() instanceof defpackage.no5) {
            me5Var.a.resumeWith(new ye5(fe5Var, p50Var));
        }
    }

    @Override // yads.x85
    public final void a(hi6 hi6Var) {
        this.c.a(s5.SDK_CONFIGURATION_REQUEST);
        me5 me5Var = this.b;
        p50 p50Var = this.e;
        if (me5Var.a.t() instanceof defpackage.no5) {
            me5Var.a.resumeWith(new xe5(hi6Var, p50Var));
        }
    }

    @Override // yads.w75
    public final void a() {
        this.c.a(s5.SDK_CONFIGURATION_REQUEST_QUEUE);
        this.c.a(s5.SDK_CONFIGURATION_REQUEST, null);
    }
}
