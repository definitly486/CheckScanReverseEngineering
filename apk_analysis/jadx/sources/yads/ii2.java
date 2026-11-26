package yads;

import android.util.DisplayMetrics;
import androidx.viewpager.widget.PagerAdapter;

/* JADX INFO: loaded from: classes6.dex */
public final class ii2 extends ji2 {
    public final m62 a;
    public final DisplayMetrics b;

    public ii2(m62 m62Var) {
        this.a = m62Var;
        this.b = m62Var.getResources().getDisplayMetrics();
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
        return this.a.d.getCurrentItem();
    }

    @Override // yads.ji2
    public final int b() {
        PagerAdapter adapter = this.a.d.getAdapter();
        if (adapter != null) {
            return adapter.getCount();
        }
        return 0;
    }

    @Override // yads.ji2
    public final void a(boolean z) {
        this.a.d.setCurrentItem(b() - 1, z);
    }
}
