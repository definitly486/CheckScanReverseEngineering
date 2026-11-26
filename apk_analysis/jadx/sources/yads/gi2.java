package yads;

import android.util.DisplayMetrics;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes6.dex */
public final class gi2 extends ji2 {
    public final et1 a;
    public final DisplayMetrics b;

    public gi2(et1 et1Var) {
        this.a = et1Var;
        this.b = et1Var.getResources().getDisplayMetrics();
    }

    @Override // yads.ji2
    public final void a(int i) {
        int iB = b();
        if (i < 0 || i >= iB) {
            return;
        }
        this.a.j().setCurrentItem(i, true);
    }

    @Override // yads.ji2
    public final void b(int i) {
        int iB = b();
        if (i < 0 || i >= iB) {
            return;
        }
        this.a.j().setCurrentItem(i, false);
    }

    @Override // yads.ji2
    public final DisplayMetrics c() {
        return this.b;
    }

    @Override // yads.ji2
    public final int a() {
        return this.a.a.getCurrentItem();
    }

    @Override // yads.ji2
    public final int b() {
        RecyclerView.Adapter adapter = this.a.a.getAdapter();
        if (adapter != null) {
            return adapter.getItemCount();
        }
        return 0;
    }

    @Override // yads.ji2
    public final void a(boolean z) {
        this.a.a.setCurrentItem(b() - 1, z);
    }
}
