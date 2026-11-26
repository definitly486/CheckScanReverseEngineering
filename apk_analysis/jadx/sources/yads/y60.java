package yads;

import android.view.View;
import androidx.viewpager2.widget.ViewPager2;

/* JADX INFO: loaded from: classes6.dex */
public final class y60 extends a70 {
    public final wc4 c;

    public y60(wc4 wc4Var, oc4 oc4Var, ic4 ic4Var) {
        super(oc4Var, ic4Var);
        this.c = wc4Var;
    }

    @Override // yads.a70, android.view.View.OnClickListener
    public final void onClick(View view) {
        ViewPager2 viewPager2 = (ViewPager2) this.c.a.get();
        if (viewPager2 != null) {
            viewPager2.setCurrentItem(viewPager2.getCurrentItem() - 1, true);
        }
        super.onClick(view);
    }
}
