package yads;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import java.util.LinkedHashSet;

/* JADX INFO: loaded from: classes6.dex */
public class g03 extends yh2 implements wj {
    public static final /* synthetic */ defpackage.ze4[] k = {mo.a(g03.class, "aspectRatio", "getAspectRatio()F", 0)};
    public final Rect c;
    public final LinkedHashSet d;
    public final LinkedHashSet e;
    public final LinkedHashSet f;
    public int g;
    public int h;
    public int i;
    public final hp0 j;

    public g03(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.c = new Rect();
        this.d = new LinkedHashSet();
        this.e = new LinkedHashSet();
        this.f = new LinkedHashSet();
        this.j = vj.a();
    }

    @Override // yads.yh2, android.view.ViewGroup
    public ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new ro1(-1, -1);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int left = getLeft();
        int top = getTop();
        int right = getRight();
        int bottom = getBottom();
        int iMax = Math.max(getPaddingLeft(), this.c.left);
        int iMax2 = (right - left) - Math.max(getPaddingRight(), this.c.right);
        int iMax3 = Math.max(getPaddingTop(), this.c.top);
        int iMax4 = (bottom - top) - Math.max(getPaddingBottom(), this.c.bottom);
        int childCount = getChildCount();
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            if (childAt.getVisibility() != 8) {
                ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
                layoutParams.getClass();
                ro1 ro1Var = (ro1) layoutParams;
                int measuredWidth = childAt.getMeasuredWidth();
                int measuredHeight = childAt.getMeasuredHeight();
                int absoluteGravity = Gravity.getAbsoluteGravity(ro1Var.a, getLayoutDirection());
                int i6 = ro1Var.a & 112;
                int i7 = absoluteGravity & 7;
                int iB = i7 != 1 ? i7 != 5 ? ((ViewGroup.MarginLayoutParams) ro1Var).leftMargin + iMax : (iMax2 - measuredWidth) - ((ViewGroup.MarginLayoutParams) ro1Var).rightMargin : defpackage.k.b(((iMax2 - iMax) - measuredWidth) + ((ViewGroup.MarginLayoutParams) ro1Var).leftMargin, ((ViewGroup.MarginLayoutParams) ro1Var).rightMargin, 2, iMax);
                int iB2 = i6 != 16 ? i6 != 80 ? ((ViewGroup.MarginLayoutParams) ro1Var).topMargin + iMax3 : (iMax4 - measuredHeight) - ((ViewGroup.MarginLayoutParams) ro1Var).bottomMargin : defpackage.k.b(((iMax4 - iMax3) - measuredHeight) + ((ViewGroup.MarginLayoutParams) ro1Var).topMargin, ((ViewGroup.MarginLayoutParams) ro1Var).bottomMargin, 2, iMax3);
                childAt.layout(iB, iB2, measuredWidth + iB, measuredHeight + iB2);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:76:0x0160  */
    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        int iMakeMeasureSpec;
        int iMakeMeasureSpec2;
        int iMax;
        int minimumWidth;
        int suggestedMinimumHeight;
        int minimumHeight;
        int i3;
        boolean z;
        int i4 = 0;
        this.g = 0;
        this.h = 0;
        this.i = 0;
        boolean zA = nh6.a(i);
        hp0 hp0Var = this.j;
        defpackage.ze4[] ze4VarArr = k;
        defpackage.ze4 ze4Var = ze4VarArr[0];
        hp0Var.getClass();
        if (((Number) hp0Var.a).floatValue() == 0.0f) {
            iMakeMeasureSpec2 = i2;
        } else {
            if (zA) {
                float size = View.MeasureSpec.getSize(i);
                hp0 hp0Var2 = this.j;
                defpackage.ze4 ze4Var2 = ze4VarArr[0];
                hp0Var2.getClass();
                iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(defpackage.w65.b(size / ((Number) hp0Var2.a).floatValue()), 1073741824);
            } else {
                iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
            }
            iMakeMeasureSpec2 = iMakeMeasureSpec;
        }
        int childCount = getChildCount();
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            if (childAt.getVisibility() != 8) {
                ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
                layoutParams.getClass();
                ro1 ro1Var = (ro1) layoutParams;
                boolean zA2 = nh6.a(i);
                boolean zA3 = nh6.a(iMakeMeasureSpec2);
                int i6 = ((ViewGroup.MarginLayoutParams) ro1Var).width;
                boolean z2 = i6 == -1;
                int i7 = ((ViewGroup.MarginLayoutParams) ro1Var).height;
                boolean z3 = i7 == -1;
                if ((zA2 && zA3) || (!zA3 ? !(!zA2 ? z2 && i7 <= 0 : z3) : !z2)) {
                    measureChildWithMargins(childAt, i, 0, iMakeMeasureSpec2, 0);
                    this.i = View.combineMeasuredStates(this.i, childAt.getMeasuredState());
                    if ((!zA2 && ((ViewGroup.MarginLayoutParams) ro1Var).width == -1) || (!zA3 && ((ViewGroup.MarginLayoutParams) ro1Var).height == -1)) {
                        this.d.add(childAt);
                    }
                    if (!zA2 && !z2) {
                        this.g = Math.max(this.g, ((ViewGroup.MarginLayoutParams) ro1Var).leftMargin + ((ViewGroup.MarginLayoutParams) ro1Var).rightMargin + childAt.getMeasuredWidth());
                    }
                    if (!zA3 && !z3) {
                        hp0 hp0Var3 = this.j;
                        defpackage.ze4 ze4Var3 = k[0];
                        hp0Var3.getClass();
                        if (((Number) hp0Var3.a).floatValue() == 0.0f) {
                            this.h = Math.max(this.h, ((ViewGroup.MarginLayoutParams) ro1Var).topMargin + ((ViewGroup.MarginLayoutParams) ro1Var).bottomMargin + childAt.getMeasuredHeight());
                        }
                    }
                } else if ((!zA2 && i6 == -1) || (!zA3 && i7 == -1)) {
                    this.e.add(childAt);
                }
            }
        }
        defpackage.nn1.s(this.d, this.f);
        defpackage.nn1.s(this.e, this.f);
        if (!this.f.isEmpty()) {
            boolean zA4 = nh6.a(i);
            boolean zA5 = nh6.a(iMakeMeasureSpec2);
            if (!zA4 || !zA5) {
                boolean z4 = !zA4 && this.g == 0;
                if (zA5) {
                    z = false;
                } else {
                    hp0 hp0Var4 = this.j;
                    defpackage.ze4 ze4Var4 = k[0];
                    hp0Var4.getClass();
                    if (((Number) hp0Var4.a).floatValue() == 0.0f && this.h == 0) {
                        z = true;
                    } else {
                        z = false;
                    }
                }
                if (z4 || z) {
                    for (View view : this.f) {
                        ViewGroup.LayoutParams layoutParams2 = view.getLayoutParams();
                        layoutParams2.getClass();
                        ro1 ro1Var2 = (ro1) layoutParams2;
                        if (this.e.contains(view) && ((((ViewGroup.MarginLayoutParams) ro1Var2).width == -1 && z4) || (((ViewGroup.MarginLayoutParams) ro1Var2).height == -1 && z))) {
                            measureChildWithMargins(view, i, 0, iMakeMeasureSpec2, 0);
                            this.i = View.combineMeasuredStates(this.i, view.getMeasuredState());
                            this.e.remove(view);
                        }
                        if (z4) {
                            this.g = Math.max(this.g, ((ViewGroup.MarginLayoutParams) ro1Var2).leftMargin + ((ViewGroup.MarginLayoutParams) ro1Var2).rightMargin + view.getMeasuredWidth());
                        }
                        if (z) {
                            this.h = Math.max(this.h, ((ViewGroup.MarginLayoutParams) ro1Var2).topMargin + ((ViewGroup.MarginLayoutParams) ro1Var2).bottomMargin + view.getMeasuredHeight());
                        }
                    }
                } else {
                    for (View view2 : this.f) {
                        ViewGroup.LayoutParams layoutParams3 = view2.getLayoutParams();
                        layoutParams3.getClass();
                        ro1 ro1Var3 = (ro1) layoutParams3;
                        if (!zA4 && ((ViewGroup.MarginLayoutParams) ro1Var3).width == -1) {
                            this.g = Math.max(this.g, ((ViewGroup.MarginLayoutParams) ro1Var3).leftMargin + ((ViewGroup.MarginLayoutParams) ro1Var3).rightMargin + view2.getMinimumWidth());
                        }
                        if (!zA5 && ((ViewGroup.MarginLayoutParams) ro1Var3).height == -1) {
                            this.h = Math.max(this.h, ((ViewGroup.MarginLayoutParams) ro1Var3).topMargin + ((ViewGroup.MarginLayoutParams) ro1Var3).bottomMargin + view2.getMinimumHeight());
                        }
                    }
                }
            }
        }
        if (nh6.a(i)) {
            iMax = 0;
        } else {
            iMax = Math.max(getPaddingRight(), this.c.right) + Math.max(getPaddingLeft(), this.c.left) + this.g;
            int suggestedMinimumWidth = getSuggestedMinimumWidth();
            if (iMax < suggestedMinimumWidth) {
                iMax = suggestedMinimumWidth;
            }
            Drawable foreground = getForeground();
            if (foreground != null && iMax < (minimumWidth = foreground.getMinimumWidth())) {
                iMax = minimumWidth;
            }
        }
        int i8 = i;
        int iResolveSizeAndState = View.resolveSizeAndState(iMax, i8, this.i);
        int i9 = 16777215 & iResolveSizeAndState;
        if (nh6.a(iMakeMeasureSpec2)) {
            i3 = 0;
        } else {
            hp0 hp0Var5 = this.j;
            defpackage.ze4[] ze4VarArr2 = k;
            defpackage.ze4 ze4Var5 = ze4VarArr2[0];
            hp0Var5.getClass();
            if (((Number) hp0Var5.a).floatValue() == 0.0f || nh6.a(i8)) {
                int iMax2 = Math.max(getPaddingBottom(), this.c.bottom) + Math.max(getPaddingTop(), this.c.top) + this.h;
                suggestedMinimumHeight = getSuggestedMinimumHeight();
                if (iMax2 >= suggestedMinimumHeight) {
                    suggestedMinimumHeight = iMax2;
                }
                Drawable foreground2 = getForeground();
                if (foreground2 != null && suggestedMinimumHeight < (minimumHeight = foreground2.getMinimumHeight())) {
                    suggestedMinimumHeight = minimumHeight;
                }
            } else {
                hp0 hp0Var6 = this.j;
                defpackage.ze4 ze4Var6 = ze4VarArr2[0];
                hp0Var6.getClass();
                suggestedMinimumHeight = defpackage.w65.b(i9 / ((Number) hp0Var6.a).floatValue());
            }
            i3 = suggestedMinimumHeight;
        }
        if (View.MeasureSpec.getMode(iMakeMeasureSpec2) == 0) {
            iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(i3, 1073741824);
            hp0 hp0Var7 = this.j;
            defpackage.ze4 ze4Var7 = k[0];
            hp0Var7.getClass();
            if (((Number) hp0Var7.a).floatValue() != 0.0f && !nh6.a(i8)) {
                int childCount2 = getChildCount();
                while (i4 < childCount2) {
                    View childAt2 = getChildAt(i4);
                    if (childAt2.getVisibility() != 8) {
                        ViewGroup.LayoutParams layoutParams4 = childAt2.getLayoutParams();
                        layoutParams4.getClass();
                        if (((ViewGroup.MarginLayoutParams) ((ro1) layoutParams4)).height == -3) {
                            measureChildWithMargins(childAt2, i8, 0, iMakeMeasureSpec2, 0);
                            this.f.remove(childAt2);
                        }
                    }
                    i4++;
                    i8 = i;
                }
            }
        }
        setMeasuredDimension(iResolveSizeAndState, View.resolveSizeAndState(i3, iMakeMeasureSpec2, this.i << 16));
        for (View view3 : this.f) {
            ViewGroup.LayoutParams layoutParams5 = view3.getLayoutParams();
            layoutParams5.getClass();
            ro1 ro1Var4 = (ro1) layoutParams5;
            view3.measure(wh2.a(((ViewGroup.MarginLayoutParams) ro1Var4).width == -1 ? View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824) : i, ((ViewGroup.MarginLayoutParams) ro1Var4).leftMargin + ((ViewGroup.MarginLayoutParams) ro1Var4).rightMargin + Math.max(getPaddingRight(), this.c.right) + Math.max(getPaddingLeft(), this.c.left), ((ViewGroup.MarginLayoutParams) ro1Var4).width, view3.getMinimumWidth(), ro1Var4.h), wh2.a(((ViewGroup.MarginLayoutParams) ro1Var4).height == -1 ? View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824) : iMakeMeasureSpec2, ((ViewGroup.MarginLayoutParams) ro1Var4).topMargin + ((ViewGroup.MarginLayoutParams) ro1Var4).bottomMargin + Math.max(getPaddingBottom(), this.c.bottom) + Math.max(getPaddingTop(), this.c.top), ((ViewGroup.MarginLayoutParams) ro1Var4).height, view3.getMinimumHeight(), ro1Var4.g));
            if (this.e.contains(view3)) {
                this.i = View.combineMeasuredStates(this.i, view3.getMeasuredState());
            }
        }
        this.d.clear();
        this.e.clear();
        this.f.clear();
    }

    @Override // yads.wj
    public void setAspectRatio(float f) {
        this.j.setValue(this, k[0], Float.valueOf(f));
    }

    @Override // android.view.View
    public void setForegroundGravity(int i) {
        if (getForegroundGravity() == i) {
            return;
        }
        super.setForegroundGravity(i);
        if (getForegroundGravity() != 119 || getForeground() == null) {
            this.c.setEmpty();
        } else {
            getForeground().getPadding(this.c);
        }
        requestLayout();
    }

    @Override // android.view.ViewGroup
    public final boolean shouldDelayChildPressedState() {
        return false;
    }

    public g03(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 4, 0);
    }

    public /* synthetic */ g03(Context context, AttributeSet attributeSet, int i, int i2) {
        this(context, (i & 2) != 0 ? null : attributeSet, 0);
    }

    public g03(Context context) {
        this(context, null, 6, 0);
    }
}
