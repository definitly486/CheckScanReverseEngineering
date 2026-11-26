package yads;

import android.view.ViewGroup;

/* JADX INFO: loaded from: classes6.dex */
public abstract class vg1 {
    public static final ViewGroup.LayoutParams a(ViewGroup.LayoutParams layoutParams, ViewGroup.LayoutParams layoutParams2) {
        if (layoutParams2 != null && !defpackage.aa4.e(layoutParams, layoutParams2)) {
            layoutParams.width = layoutParams2.width;
            layoutParams.height = layoutParams2.height;
            if ((layoutParams instanceof ViewGroup.MarginLayoutParams) && (layoutParams2 instanceof ViewGroup.MarginLayoutParams)) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) layoutParams2;
                marginLayoutParams.leftMargin = marginLayoutParams2.leftMargin;
                marginLayoutParams.topMargin = marginLayoutParams2.topMargin;
                marginLayoutParams.rightMargin = marginLayoutParams2.rightMargin;
                marginLayoutParams.bottomMargin = marginLayoutParams2.bottomMargin;
                if (marginLayoutParams2.isMarginRelative()) {
                    marginLayoutParams.setMarginStart(marginLayoutParams2.getMarginStart());
                    marginLayoutParams.setMarginEnd(marginLayoutParams2.getMarginEnd());
                }
            }
            if ((layoutParams instanceof ro1) && (layoutParams2 instanceof ro1)) {
                ro1 ro1Var = (ro1) layoutParams;
                ro1 ro1Var2 = (ro1) layoutParams2;
                ro1Var.h = ro1Var2.h;
                ro1Var.g = ro1Var2.g;
            }
        }
        return layoutParams;
    }
}
