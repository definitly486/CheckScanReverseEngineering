package yads;

import android.view.View;
import defpackage.j59;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes6.dex */
public final class eh4 {
    public static final Object b = new Object();
    public static volatile eh4 c;
    public final WeakHashMap a = new WeakHashMap();

    public final ij4 a(View view) {
        ij4 ij4Var;
        synchronized (b) {
            ij4Var = (ij4) this.a.get(view);
        }
        return ij4Var;
    }

    public final void a(View view, ij4 ij4Var) {
        synchronized (b) {
            this.a.put(view, ij4Var);
            j59 j59Var = j59.a;
        }
    }
}
