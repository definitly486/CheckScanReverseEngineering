package yads;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import androidx.core.view.ViewGroupKt;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import defpackage.j59;
import defpackage.p07;
import defpackage.to;

/* JADX INFO: loaded from: classes6.dex */
public class ng6 extends FrameLayout {
    public final ViewPager2 a;

    public ng6(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        ViewPager2 viewPager2 = new ViewPager2(context);
        this.a = viewPager2;
        super.addView(viewPager2);
    }

    public static final j59 a(p07 p07Var, defpackage.bm3 bm3Var, RecyclerView recyclerView) {
        for (View view : ViewGroupKt.getChildren(recyclerView)) {
            RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
            if (layoutManager != null) {
                p07Var.b = Math.max(p07Var.b, ((Number) bm3Var.invoke(layoutManager, view)).intValue());
            }
        }
        return j59.a;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public final /* bridge */ /* synthetic */ CharSequence getAccessibilityClassName() {
        return "androidx.viewpager.widget.ViewPager";
    }

    public final RecyclerView h() {
        View childAt = this.a.getChildAt(0);
        if (childAt instanceof RecyclerView) {
            return (RecyclerView) childAt;
        }
        return null;
    }

    public final ViewPager2 j() {
        return this.a;
    }

    @Override // android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        if ((this.a.getOrientation() != 0 || getLayoutParams().height != -2) && (this.a.getOrientation() != 1 || getLayoutParams().width != -2)) {
            super.onMeasure(i, i2);
            return;
        }
        measureChild(this.a, i, i2);
        int orientation = this.a.getOrientation();
        if (orientation == 0) {
            super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(a(lg6.b), 1073741824));
        } else {
            if (orientation != 1) {
                return;
            }
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(a(mg6.b), 1073741824), i2);
        }
    }

    public final void setOrientation(int i) {
        wr1 wr1Var = (wr1) this.a.getAdapter();
        if (this.a.getOrientation() == i && wr1Var != null && wr1Var.p == i) {
            return;
        }
        this.a.setOrientation(i);
        if (wr1Var != null) {
            wr1Var.p = i;
        }
        to toVar = new to(6);
        RecyclerView recyclerViewH = h();
        if (recyclerViewH == null) {
            return;
        }
        toVar.invoke(recyclerViewH);
    }

    public final void setPageTransformer$mobileads_externalRelease(zs1 zs1Var) {
        this.a.setPageTransformer(zs1Var);
    }

    public final void setRecycledViewPool(RecyclerView.RecycledViewPool recycledViewPool) {
        RecyclerView recyclerViewH = h();
        if (recyclerViewH == null) {
            return;
        }
        a(recycledViewPool, recyclerViewH);
    }

    public ng6(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 4, 0);
    }

    public /* synthetic */ ng6(Context context, AttributeSet attributeSet, int i, int i2) {
        this(context, (i & 2) != 0 ? null : attributeSet, 0);
    }

    public ng6(Context context) {
        this(context, null, 6, 0);
    }

    public static final j59 a(RecyclerView recyclerView) {
        recyclerView.getRecycledViewPool().clear();
        for (View view : ViewGroupKt.getChildren(recyclerView)) {
            view.setTranslationX(0.0f);
            view.setTranslationY(0.0f);
        }
        return j59.a;
    }

    public final int a(defpackage.bm3 bm3Var) {
        p07 p07Var = new p07();
        RecyclerView recyclerViewH = h();
        if (recyclerViewH != null) {
            a(p07Var, bm3Var, recyclerViewH);
        }
        return p07Var.b;
    }

    public static final j59 a(RecyclerView.RecycledViewPool recycledViewPool, RecyclerView recyclerView) {
        recyclerView.setRecycledViewPool(recycledViewPool);
        return j59.a;
    }
}
