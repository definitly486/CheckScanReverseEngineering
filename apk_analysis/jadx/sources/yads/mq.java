package yads;

import android.graphics.Rect;
import android.view.View;
import androidx.viewpager.widget.ViewPager;
import java.util.Objects;

/* JADX INFO: loaded from: classes6.dex */
public final class mq implements ViewPager.OnPageChangeListener {
    public int a = 0;
    public final /* synthetic */ a62 b;

    public mq(a62 a62Var) {
        this.b = a62Var;
    }

    public final void a(int i, float f) {
        og6 og6Var;
        og6 og6Var2;
        a62 a62Var = this.b;
        pg6 pg6Var = a62Var.e;
        if (pg6Var == null || (og6Var = a62Var.f) == null) {
            return;
        }
        cq cqVar = (cq) og6Var;
        int i2 = rv3.a;
        vj5[] vj5VarArr = vj5.b;
        cqVar.e = i;
        cqVar.f = f;
        if (pg6Var.d && (og6Var2 = pg6Var.a) != null && og6Var2.a(i, f)) {
            Rect rect = pg6Var.c;
            if (rect == null) {
                rect = new Rect();
                pg6Var.c = rect;
            }
            pg6Var.getLocalVisibleRect(rect);
            if (rect.height() != pg6Var.getHeight()) {
                int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(pg6Var.getWidth(), 1073741824);
                Integer num = pg6Var.e;
                int iA = og6Var2.a(iMakeMeasureSpec, num != null ? num.intValue() : View.MeasureSpec.makeMeasureSpec(0, 0));
                if (iA == pg6Var.getHeight()) {
                    return;
                }
                int i3 = rect.top;
                if (iA > rect.bottom || i3 > iA) {
                    return;
                }
            }
            boolean zIsInLayout = this.b.e.isInLayout();
            a62 a62Var2 = this.b;
            if (!zIsInLayout) {
                a62Var2.e.requestLayout();
                return;
            }
            pg6 pg6Var2 = a62Var2.e;
            Objects.requireNonNull(pg6Var2);
            pg6Var2.post(new defpackage.x(pg6Var2, 5));
        }
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public final void onPageScrollStateChanged(int i) {
        kr krVar;
        pg6 pg6Var;
        this.a = i;
        if (i == 0) {
            int currentItem = this.b.c.getCurrentItem();
            a62 a62Var = this.b;
            og6 og6Var = a62Var.f;
            if (og6Var != null && (pg6Var = a62Var.e) != null) {
                cq cqVar = (cq) og6Var;
                int i2 = rv3.a;
                vj5[] vj5VarArr = vj5.b;
                cqVar.e = currentItem;
                cqVar.f = 0.0f;
                pg6Var.requestLayout();
            }
            a62 a62Var2 = this.b;
            if (!a62Var2.l) {
                uu5 uu5Var = (uu5) a62Var2.b;
                kr krVar2 = uu5Var.b;
                if ((krVar2 != null ? krVar2.b : -1) != currentItem && (krVar = (kr) uu5Var.a.get(currentItem)) != null) {
                    nr nrVar = krVar.c;
                    if (nrVar == null) {
                        defpackage.fg.c("Tab not attached to a TabLayout");
                        return;
                    }
                    nrVar.b(krVar, true);
                }
            }
            this.b.l = false;
        }
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public final void onPageScrolled(int i, float f, int i2) {
        if (this.a != 0) {
            a(i, f);
        }
        a62 a62Var = this.b;
        if (a62Var.l) {
            return;
        }
        a62Var.b.setIntermediateState(i, f);
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public final void onPageSelected(int i) {
        pg6 pg6Var;
        a62 a62Var = this.b;
        og6 og6Var = a62Var.f;
        if (og6Var == null) {
            a62Var.c.requestLayout();
            return;
        }
        if (this.a != 0 || (pg6Var = a62Var.e) == null) {
            return;
        }
        cq cqVar = (cq) og6Var;
        int i2 = rv3.a;
        vj5[] vj5VarArr = vj5.b;
        cqVar.e = i;
        cqVar.f = 0.0f;
        pg6Var.requestLayout();
    }
}
