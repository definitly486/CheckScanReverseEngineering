package com.my.target;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import defpackage.l3a;
import defpackage.on9;
import defpackage.xda;

/* JADX INFO: loaded from: classes4.dex */
public class ig extends hg {
    public final int T;

    public ig(boolean z, bg bgVar, dg dgVar, c3 c3Var, View view, on9 on9Var, Context context) {
        super(bgVar, dgVar, c3Var, view, on9Var, context);
        if (z) {
            this.T = 0;
        } else {
            this.T = 1;
        }
    }

    /* JADX WARN: Code duplicated, block: B:20:0x00a3  */
    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int bottom;
        int i5 = i3 - i;
        int i6 = i4 - i2;
        int i7 = this.J;
        m mVar = this.l;
        View view = this.p;
        View view2 = this.o;
        fk fkVar = this.u;
        int i8 = this.F;
        e6 e6Var = this.d;
        int i9 = this.B;
        bg bgVar = this.e;
        View view3 = this.L;
        if (i5 >= i6) {
            if (e6Var.getVisibility() == 0) {
                int i10 = i7 - i8;
                l3a.m(e6Var, i2 + i10, i5 - i10);
            } else {
                l3a.m(fkVar, i2 + i7, i5 - i7);
            }
            l3a.u(bgVar, i4, i);
            l3a.u(view3, bgVar.getTop(), 0);
            view2.layout(0, 0, 0, 0);
            l3a.r(view, view3 != null ? view3.getBottom() : i4, 0);
            l3a.s(mVar, bgVar.getTop() - i9, i3 - i7);
            return;
        }
        if (e6Var.getVisibility() == 0) {
            int i11 = i9 - i8;
            l3a.m(e6Var, i2 + i11, i5 - i11);
        } else {
            l3a.m(fkVar, i2 + i9, i5 - i9);
        }
        l3a.r(bgVar, i2, i);
        zh zhVar = this.k;
        int measuredHeight = (i4 - zhVar.getMeasuredHeight()) - i9;
        Button button = this.q;
        l3a.j(button, 0, measuredHeight - button.getMeasuredHeight(), i3, measuredHeight);
        int i12 = this.T;
        if (i12 == 1) {
            l3a.j(view3, i, bgVar.getBottom(), i3, i4);
        }
        int top = button.getTop() - i9;
        TextView textView = this.s;
        l3a.j(textView, 0, top - textView.getMeasuredHeight(), i3, top);
        int top2 = (textView.getVisibility() == 0 ? textView.getTop() : top + textView.getMeasuredHeight()) - i9;
        TextView textView2 = this.r;
        l3a.j(textView2, 0, top2 - textView2.getMeasuredHeight(), i3, top2);
        if (i12 == 0) {
            l3a.j(view3, i, bgVar.getBottom(), i3, textView.getTop());
            if (view3 != null) {
                bottom = view3.getBottom();
            } else {
                bottom = i4;
            }
        } else {
            bottom = i4;
        }
        l3a.r(view2, bgVar.getTop(), bgVar.getLeft());
        l3a.r(view, bottom, i);
        l3a.s(mVar, i4 - i9, i3 - i9);
        l3a.u(zhVar, i4 - i7, i7);
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        int i3;
        int i4;
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        m mVar = this.l;
        View view = this.p;
        View view2 = this.L;
        TextView textView = this.r;
        View view3 = this.o;
        TextView textView2 = this.s;
        int i5 = this.B;
        int i6 = this.E;
        bg bgVar = this.e;
        if (size < size2) {
            bgVar.setVisibility(0);
            view3.setVisibility(0);
            l3a.i(bgVar, size - i6, size2, Integer.MIN_VALUE);
            l3a.i(view3, size, bgVar.getMeasuredHeight(), 1073741824);
            if (TextUtils.isEmpty(textView.getText())) {
                i4 = 8;
                textView.setVisibility(8);
            } else {
                textView.setVisibility(0);
                i4 = 8;
            }
            if (TextUtils.isEmpty(textView2.getText())) {
                textView2.setVisibility(i4);
            } else {
                textView2.setVisibility(0);
            }
            Button button = this.q;
            int i7 = this.T;
            if (i7 == 0) {
                int i8 = i5 * 2;
                button.measure(View.MeasureSpec.makeMeasureSpec(((size - (i5 * 4)) - mVar.getMeasuredWidth()) - this.k.getMeasuredWidth(), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(this.I, 1073741824));
                int i9 = size - i8;
                int i10 = size2 - i8;
                l3a.i(textView, i9, i10, Integer.MIN_VALUE);
                l3a.i(textView2, i9, i10, Integer.MIN_VALUE);
                view.setVisibility(0);
                l3a.i(view, size, size2, 1073741824);
            } else {
                view.setVisibility(8);
            }
            if (i7 == 1) {
                l3a.i(view2, size, (size2 - view3.getMeasuredHeight()) - (i5 * 2), Integer.MIN_VALUE);
            } else if (i7 == 0) {
                l3a.i(view2, size, ((((size2 - bgVar.getMeasuredHeight()) - textView.getMeasuredHeight()) - button.getMeasuredHeight()) - textView2.getMeasuredHeight()) - (i5 * 8), Integer.MIN_VALUE);
            }
            i3 = 1073741824;
        } else {
            textView.setVisibility(8);
            textView2.setVisibility(8);
            view3.setVisibility(8);
            bgVar.setVisibility(0);
            view.setVisibility(0);
            l3a.i(bgVar, size, size2, Integer.MIN_VALUE);
            i3 = 1073741824;
            l3a.i(view, bgVar.getMeasuredWidth(), bgVar.getMeasuredHeight(), 1073741824);
            l3a.i(view2, size, (size2 - bgVar.getMeasuredHeight()) - (i5 * 2), 1073741824);
        }
        l3a.i(this.u, i6, i6, i3);
        int i11 = (this.F * 2) + i6;
        l3a.i(this.d, i11, i11, i3);
        l3a.i(mVar, i11, i11, i3);
        setMeasuredDimension(size, size2);
    }

    @Override // com.my.target.hg, defpackage.gw9
    public void setBanner(xda xdaVar) {
        super.setBanner(xdaVar);
        this.g.c(true);
        View view = this.L;
        if (view != null) {
            view.setVisibility(0);
        }
    }
}
