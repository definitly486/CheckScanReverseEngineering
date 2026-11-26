package yads;

import android.content.Context;
import android.util.AttributeSet;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import java.util.HashMap;

/* JADX INFO: loaded from: classes6.dex */
public class pb5 extends ViewPager {
    public final HashMap a;

    public pb5(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.a = new HashMap();
    }

    @Override // androidx.viewpager.widget.ViewPager
    public final void addOnPageChangeListener(ViewPager.OnPageChangeListener onPageChangeListener) {
        ob5 ob5Var = new ob5(this, onPageChangeListener);
        this.a.put(onPageChangeListener, ob5Var);
        super.addOnPageChangeListener(ob5Var);
    }

    @Override // androidx.viewpager.widget.ViewPager
    public final void clearOnPageChangeListeners() {
        super.clearOnPageChangeListeners();
        this.a.clear();
    }

    @Override // androidx.viewpager.widget.ViewPager
    public final int getCurrentItem() {
        int currentItem = super.getCurrentItem();
        PagerAdapter adapter = super.getAdapter();
        return (adapter == null || !oh6.b(this)) ? currentItem : (adapter.getCount() - currentItem) - 1;
    }

    @Override // androidx.viewpager.widget.ViewPager
    public final void removeOnPageChangeListener(ViewPager.OnPageChangeListener onPageChangeListener) {
        ob5 ob5Var = (ob5) this.a.remove(onPageChangeListener);
        if (ob5Var != null) {
            super.removeOnPageChangeListener(ob5Var);
        }
    }

    @Override // androidx.viewpager.widget.ViewPager
    public void setCurrentItem(int i, boolean z) {
        PagerAdapter adapter = super.getAdapter();
        if (adapter != null && oh6.b(this)) {
            i = (adapter.getCount() - i) - 1;
        }
        super.setCurrentItem(i, z);
    }

    @Override // androidx.viewpager.widget.ViewPager
    public void setCurrentItem(int i) {
        PagerAdapter adapter = super.getAdapter();
        if (adapter != null && oh6.b(this)) {
            i = (adapter.getCount() - i) - 1;
        }
        super.setCurrentItem(i);
    }
}
