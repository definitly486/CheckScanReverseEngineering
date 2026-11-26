package yads;

import android.view.View;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes6.dex */
public final class a35 implements qg6 {
    public final ConcurrentHashMap a = new ConcurrentHashMap();

    @Override // yads.qg6
    public final View a(String str) {
        Object obj = this.a.get(str);
        if (obj == null) {
            defpackage.ag.g(null);
            return null;
        }
        View viewA = ((gg6) obj).a();
        viewA.getClass();
        return viewA;
    }

    @Override // yads.qg6
    public final void a(String str, gg6 gg6Var, int i) {
        this.a.put(str, gg6Var);
    }
}
