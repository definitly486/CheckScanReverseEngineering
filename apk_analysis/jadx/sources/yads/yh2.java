package yads;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.view.GravityCompat;

/* JADX INFO: loaded from: classes6.dex */
public abstract class yh2 extends ViewGroup {
    public static final /* synthetic */ int b = 0;
    public int a;

    public yh2(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.a = 8388659;
        setClipToPadding(false);
    }

    public final void a(View view, int i, int i2) {
        super.measureChild(view, i, i2);
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof ro1;
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new ro1(-2, -2);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof ro1) {
            return new ro1((ro1) layoutParams);
        }
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? new ro1((ViewGroup.MarginLayoutParams) layoutParams) : new ro1(layoutParams);
    }

    @Override // android.view.ViewGroup
    public void measureChild(View view, int i, int i2) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        layoutParams.getClass();
        ro1 ro1Var = (ro1) layoutParams;
        view.measure(wh2.a(i, getPaddingRight() + getPaddingLeft(), ((ViewGroup.MarginLayoutParams) ro1Var).width, view.getMinimumWidth(), ro1Var.h), wh2.a(i2, getPaddingBottom() + getPaddingTop(), ((ViewGroup.MarginLayoutParams) ro1Var).height, view.getMinimumHeight(), ro1Var.g));
    }

    @Override // android.view.ViewGroup
    public void measureChildWithMargins(View view, int i, int i2, int i3, int i4) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        layoutParams.getClass();
        ro1 ro1Var = (ro1) layoutParams;
        view.measure(wh2.a(i, ((ViewGroup.MarginLayoutParams) ro1Var).leftMargin + ((ViewGroup.MarginLayoutParams) ro1Var).rightMargin + getPaddingRight() + getPaddingLeft() + i2, ((ViewGroup.MarginLayoutParams) ro1Var).width, view.getMinimumWidth(), ro1Var.h), wh2.a(i3, ((ViewGroup.MarginLayoutParams) ro1Var).topMargin + ((ViewGroup.MarginLayoutParams) ro1Var).bottomMargin + getPaddingBottom() + getPaddingTop() + i4, ((ViewGroup.MarginLayoutParams) ro1Var).height, view.getMinimumHeight(), ro1Var.g));
    }

    public final void setGravity(int i) {
        if (this.a == i) {
            return;
        }
        if ((125829127 & i) == 0) {
            i |= GravityCompat.START;
        }
        if ((1879048304 & i) == 0) {
            i |= 48;
        }
        this.a = i;
        requestLayout();
    }

    public final void a(View view, int i, int i2, int i3, int i4) {
        super.measureChildWithMargins(view, i, i2, i3, i4);
    }

    public yh2(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 4, 0);
    }

    public /* synthetic */ yh2(Context context, AttributeSet attributeSet, int i, int i2) {
        this(context, (i & 2) != 0 ? null : attributeSet, 0);
    }

    public yh2(Context context) {
        this(context, null, 6, 0);
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new ro1(getContext(), attributeSet);
    }
}
