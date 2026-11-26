package defpackage;

import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import com.warefly.checkscan.ui.dotindicator.BaseDotsIndicator;

/* JADX INFO: loaded from: classes5.dex */
public final class ge9 implements BaseDotsIndicator.a {
    public a a;
    public final /* synthetic */ ViewPager2 b;

    public static final class a extends ViewPager2.OnPageChangeCallback {
        public final /* synthetic */ gw5 i;

        public a(gw5 gw5Var) {
            this.i = gw5Var;
        }

        @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
        public final void onPageScrolled(int i, float f, int i2) {
            super.onPageScrolled(i, f, i2);
            this.i.b(f, i);
        }
    }

    public ge9(ViewPager2 viewPager2) {
        this.b = viewPager2;
    }

    @Override // com.warefly.checkscan.ui.dotindicator.BaseDotsIndicator.a
    public final int a() {
        return this.b.getCurrentItem();
    }

    @Override // com.warefly.checkscan.ui.dotindicator.BaseDotsIndicator.a
    public final void b(int i) {
        this.b.setCurrentItem(i, true);
    }

    @Override // com.warefly.checkscan.ui.dotindicator.BaseDotsIndicator.a
    public final void c(gw5 gw5Var) {
        gw5Var.getClass();
        a aVar = new a(gw5Var);
        this.a = aVar;
        this.b.registerOnPageChangeCallback(aVar);
    }

    @Override // com.warefly.checkscan.ui.dotindicator.BaseDotsIndicator.a
    public final void d() {
        a aVar = this.a;
        if (aVar != null) {
            this.b.unregisterOnPageChangeCallback(aVar);
        }
    }

    @Override // com.warefly.checkscan.ui.dotindicator.BaseDotsIndicator.a
    public final boolean e() {
        RecyclerView.Adapter adapter = this.b.getAdapter();
        return (adapter != null ? adapter.getItemCount() : 0) > 0;
    }

    @Override // com.warefly.checkscan.ui.dotindicator.BaseDotsIndicator.a
    public final int getCount() {
        RecyclerView.Adapter adapter = this.b.getAdapter();
        if (adapter != null) {
            return adapter.getItemCount();
        }
        return 0;
    }
}
