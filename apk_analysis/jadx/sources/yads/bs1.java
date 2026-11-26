package yads;

import android.view.View;
import androidx.core.view.OneShotPreDrawListener;
import androidx.viewpager2.widget.ViewPager2;
import defpackage.nl3;

/* JADX INFO: loaded from: classes6.dex */
public final class bs1 implements tp0, View.OnLayoutChangeListener {
    public int b;
    public final /* synthetic */ ViewPager2 c;
    public final /* synthetic */ nl3 d;
    public final /* synthetic */ ur1 e;

    public bs1(ViewPager2 viewPager2, nl3 nl3Var, ur1 ur1Var) {
        this.c = viewPager2;
        this.d = nl3Var;
        this.e = ur1Var;
        viewPager2.addOnLayoutChangeListener(this);
        OneShotPreDrawListener.add(viewPager2, new as1(viewPager2, this, nl3Var));
    }

    @Override // java.lang.AutoCloseable, java.io.Closeable
    public final void close() {
        this.c.removeOnLayoutChangeListener(this);
    }

    @Override // android.view.View.OnLayoutChangeListener
    public final void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        int orientation = this.c.getOrientation();
        ViewPager2 viewPager2 = this.c;
        int width = orientation == 0 ? viewPager2.getWidth() : viewPager2.getHeight();
        if (this.b != width) {
            this.b = width;
            this.d.invoke(Integer.valueOf(width));
        } else if (this.e.u instanceof js1) {
            this.c.requestTransform();
        }
    }
}
