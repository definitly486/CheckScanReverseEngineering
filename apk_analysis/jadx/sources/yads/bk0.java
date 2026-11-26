package yads;

import android.view.View;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes6.dex */
public final class bk0 implements ut4 {
    public final ph6 a;
    public final jd0 b;
    public final WeakReference c;

    public bk0(View view, ph6 ph6Var, jd0 jd0Var) {
        this.a = ph6Var;
        this.b = jd0Var;
        this.c = new WeakReference(view);
    }

    @Override // yads.ut4
    /* JADX INFO: renamed from: a */
    public final void mo9532a() {
        View view = (View) this.c.get();
        if (view != null) {
            this.a.getClass();
            view.setVisibility(0);
            this.b.a(id0.CROSS_TIMER_END);
        }
    }
}
