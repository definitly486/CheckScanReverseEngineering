package yads;

import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;

/* JADX INFO: loaded from: classes6.dex */
public final class ob5 implements ViewPager.OnPageChangeListener {
    public final ViewPager.OnPageChangeListener a;
    public final /* synthetic */ pb5 b;

    public ob5(pb5 pb5Var, ViewPager.OnPageChangeListener onPageChangeListener) {
        this.b = pb5Var;
        this.a = onPageChangeListener;
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public final void onPageScrollStateChanged(int i) {
        this.a.onPageScrollStateChanged(i);
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public final void onPageScrolled(int i, float f, int i2) {
        PagerAdapter adapter = super/*androidx.viewpager.widget.ViewPager*/.getAdapter();
        if (oh6.b(this.b) && adapter != null) {
            int count = adapter.getCount();
            int pageWidth = ((int) ((1.0f - adapter.getPageWidth(i)) * this.b.getWidth())) + i2;
            while (i < count && pageWidth > 0) {
                i++;
                pageWidth -= (int) (adapter.getPageWidth(i) * this.b.getWidth());
            }
            i = (count - i) - 1;
            i2 = -pageWidth;
            f = i2 / (adapter.getPageWidth(i) * this.b.getWidth());
        }
        this.a.onPageScrolled(i, f, i2);
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public final void onPageSelected(int i) {
        PagerAdapter adapter = super/*androidx.viewpager.widget.ViewPager*/.getAdapter();
        if (oh6.b(this.b) && adapter != null) {
            i = (adapter.getCount() - i) - 1;
        }
        this.a.onPageSelected(i);
    }
}
