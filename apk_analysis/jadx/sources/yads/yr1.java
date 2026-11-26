package yads;

import android.view.View;
import androidx.viewpager2.widget.ViewPager2;

/* JADX INFO: loaded from: classes6.dex */
public final class yr1 implements View.OnLayoutChangeListener {
    public final /* synthetic */ ViewPager2 b;

    public yr1(ViewPager2 viewPager2) {
        this.b = viewPager2;
    }

    @Override // android.view.View.OnLayoutChangeListener
    public final void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        view.removeOnLayoutChangeListener(this);
        this.b.requestTransform();
    }
}
