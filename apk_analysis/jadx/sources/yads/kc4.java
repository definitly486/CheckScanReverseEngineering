package yads;

import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import defpackage.j59;

/* JADX INFO: loaded from: classes6.dex */
public final class kc4 extends ay {
    public static final /* synthetic */ defpackage.ze4[] g = {cb.a(kc4.class, "viewPager", "getViewPager()Landroidx/viewpager2/widget/ViewPager2;", 0)};
    public final wc4 c;
    public final oc4 d;
    public final e55 e;
    public jc4 f = jc4.LEFT;

    public kc4(ViewPager2 viewPager2, wc4 wc4Var, oc4 oc4Var) {
        this.c = wc4Var;
        this.d = oc4Var;
        this.e = new e55(viewPager2);
    }

    @Override // java.lang.Runnable
    public final void run() {
        j59 j59Var;
        ViewPager2 viewPager2;
        e55 e55Var = this.e;
        defpackage.ze4 ze4Var = g[0];
        ViewPager2 viewPager3 = (ViewPager2) e55Var.a.get();
        if (viewPager3 != null) {
            if (eh6.a.a(viewPager3).a > 0) {
                RecyclerView.Adapter adapter = viewPager3.getAdapter();
                int itemCount = adapter != null ? adapter.getItemCount() : 0;
                if (itemCount != 0) {
                    int currentItem = viewPager3.getCurrentItem();
                    if (currentItem == 0) {
                        this.f = jc4.LEFT;
                    } else if (currentItem == itemCount - 1) {
                        this.f = jc4.RIGHT;
                    }
                } else {
                    this.b = zx.CANCELED;
                }
                int iOrdinal = this.f.ordinal();
                if (iOrdinal == 0) {
                    ViewPager2 viewPager4 = (ViewPager2) this.c.a.get();
                    if (viewPager4 != null) {
                        viewPager4.setCurrentItem(viewPager4.getCurrentItem() + 1, true);
                    }
                } else if (iOrdinal == 1 && (viewPager2 = (ViewPager2) this.c.a.get()) != null) {
                    viewPager2.setCurrentItem(viewPager2.getCurrentItem() - 1, true);
                }
                oc4 oc4Var = this.d;
                if (oc4Var.e) {
                    oc4Var.a("first_auto_swipe");
                    oc4Var.e = false;
                }
            }
            j59Var = j59.a;
        } else {
            j59Var = null;
        }
        if (j59Var == null) {
            this.b = zx.CANCELED;
        }
    }
}
