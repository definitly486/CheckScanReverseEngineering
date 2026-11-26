package yads;

import android.view.View;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes6.dex */
public final class em0 implements ut4 {
    public final wl5 a;
    public final WeakReference b;

    public em0(View view, wl5 wl5Var) {
        this.a = wl5Var;
        this.b = new WeakReference(view);
    }

    @Override // yads.ut4
    /* JADX INFO: renamed from: a */
    public final void mo9532a() {
        View view = (View) this.b.get();
        if (view != null) {
            this.a.b(view);
        }
    }
}
