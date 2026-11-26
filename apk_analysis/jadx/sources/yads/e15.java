package yads;

import android.view.View;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes6.dex */
public final class e15 implements ut4 {
    public final gn2 a;
    public final jd0 b;
    public final WeakReference c;

    public e15(View view, gn2 gn2Var, jd0 jd0Var) {
        this.a = gn2Var;
        this.b = jd0Var;
        this.c = new WeakReference(view);
    }

    @Override // yads.ut4
    /* JADX INFO: renamed from: a */
    public final void mo9532a() {
        View view = (View) this.c.get();
        if (view != null) {
            this.a.b(view);
            this.b.a(id0.CROSS_TIMER_END);
        }
    }
}
