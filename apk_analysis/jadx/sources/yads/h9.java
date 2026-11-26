package yads;

import android.os.Bundle;

/* JADX INFO: loaded from: classes6.dex */
public final class h9 implements g4 {
    public static final /* synthetic */ defpackage.ze4[] b = {mo.a(h9.class, "adEventsReceiver", "getAdEventsReceiver()Lcom/monetization/ads/base/AdEventsReceiver;", 0)};
    public final e55 a = new e55(null);

    @Override // yads.g4
    public final void a(int i, Bundle bundle) {
        e55 e55Var = this.a;
        defpackage.ze4 ze4Var = b[0];
        g4 g4Var = (g4) e55Var.a.get();
        if (g4Var != null) {
            g4Var.a(i, bundle);
        }
    }
}
