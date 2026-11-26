package yads;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: loaded from: classes6.dex */
public final class ug1 extends pi2 {
    public ug1(Context context) {
        super(context, null, 6, 0);
    }

    @Override // yads.pi2, android.view.ViewGroup
    public final void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, 0, layoutParams);
        if (getLayoutParams() == null) {
            if ((view != null ? view.getLayoutParams() : null) != null) {
                setLayoutParams(view.getLayoutParams());
            }
        }
    }

    @Override // yads.yh2, android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams == null || !layoutParams.equals(getLayoutParams());
    }

    @Override // yads.g03, yads.yh2, android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams instanceof ro1) {
            return layoutParams;
        }
        return layoutParams == null ? new ro1(-2, -2) : super.generateLayoutParams(layoutParams);
    }

    @Override // yads.yh2, android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return vg1.a(generateDefaultLayoutParams(), layoutParams);
    }

    @Override // yads.g03, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        View viewJ = j();
        if (viewJ != null) {
            viewJ.layout(0, 0, i3 - i, i4 - i2);
        }
    }

    @Override // yads.g03, android.view.View
    public final void onMeasure(int i, int i2) {
        View viewJ = j();
        if (viewJ != null) {
            viewJ.measure(i, i2);
            setMeasuredDimension(viewJ.getMeasuredWidthAndState(), viewJ.getMeasuredHeightAndState());
            return;
        }
        setMeasuredDimension(View.resolveSizeAndState(getPaddingRight() + getPaddingLeft() + getSuggestedMinimumWidth(), i, 0), View.resolveSizeAndState(getPaddingBottom() + getPaddingTop() + getSuggestedMinimumHeight(), i2, 0));
    }

    @Override // android.view.View
    public void setLayoutParams(ViewGroup.LayoutParams layoutParams) {
        View viewJ = j();
        if (viewJ == null) {
            super.setLayoutParams(layoutParams);
            return;
        }
        if (layoutParams != null) {
            vg1.a(layoutParams, viewJ.getLayoutParams());
        }
        super.setLayoutParams(layoutParams);
        viewJ.setLayoutParams(layoutParams);
    }
}
