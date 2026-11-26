package yads;

import androidx.viewpager.widget.ViewPager;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes6.dex */
public final class lr implements ViewPager.OnPageChangeListener {
    public final WeakReference a;
    public int b;
    public int c;

    public lr(nr nrVar) {
        this.a = new WeakReference(nrVar);
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public final void onPageScrollStateChanged(int i) {
        this.b = this.c;
        this.c = i;
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public final void onPageScrolled(int i, float f, int i2) {
        nr nrVar = (nr) this.a.get();
        if (nrVar != null) {
            if (this.c != 2 || this.b == 1) {
                nrVar.a(i, f, true);
            }
        }
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public final void onPageSelected(int i) {
        nr nrVar = (nr) this.a.get();
        if (nrVar != null) {
            kr krVar = nrVar.b;
            if ((krVar != null ? krVar.b : -1) != i) {
                int i2 = this.c;
                nrVar.b((kr) nrVar.a.get(i), i2 == 0 || (i2 == 2 && this.b == 0));
            }
        }
    }
}
