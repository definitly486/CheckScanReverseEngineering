package com.my.target;

import android.text.TextUtils;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import defpackage.l3a;
import defpackage.xda;

/* JADX INFO: loaded from: classes4.dex */
public class jg extends hg {
    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int left;
        int top;
        int i5 = i3 - i;
        int i6 = i4 - i2;
        zh zhVar = this.k;
        m mVar = this.l;
        c3 c3Var = this.g;
        View view = this.o;
        fk fkVar = this.u;
        int i7 = this.F;
        e6 e6Var = this.d;
        int i8 = this.B;
        zh zhVar2 = this.j;
        bg bgVar = this.e;
        View view2 = this.p;
        if (i5 >= i6) {
            int visibility = e6Var.getVisibility();
            int i9 = this.J;
            if (visibility == 0) {
                int i10 = i9 - i7;
                l3a.m(e6Var, i2 + i10, i5 - i10);
            } else {
                l3a.m(fkVar, i2 + i9, i5 - i9);
            }
            boolean zC = c(i5);
            View view3 = this.L;
            if (!zC) {
                l3a.r(zhVar, i9, i9);
                l3a.u(bgVar, i6, i);
                l3a.j(zhVar2, i, i2, i3, i4);
                l3a.j(view3, i, i2, i3, i4);
                this.n.layout(zhVar2.getLeft(), zhVar2.getTop(), zhVar2.getRight(), zhVar2.getBottom());
                view.layout(0, 0, 0, 0);
                l3a.r(view2, bgVar.getTop(), bgVar.getLeft());
                c3Var.c(true);
                l3a.s(mVar, bgVar.getTop() - i8, i3 - i9);
                return;
            }
            l3a.j(zhVar2, i, i2, zhVar2.getMeasuredWidth() + i, i4);
            int measuredHeight = zhVar.getMeasuredHeight();
            TextView textView = this.t;
            l3a.g(i9, zhVar2.getRight() + i9, l3a.e(measuredHeight, textView.getMeasuredHeight()) + i7, i7, zhVar, textView);
            l3a.j(view3, i, i2, i + (view3 != null ? view3.getMeasuredWidth() : 0), i4);
            bgVar.layout(zhVar2.getRight(), i2, i3, i4);
            view.layout(0, 0, 0, 0);
            c3Var.c(false);
            if (e6Var.getVisibility() == 0) {
                left = (e6Var.getLeft() - i8) + i7;
            } else {
                left = fkVar.getVisibility() == 0 ? fkVar.getLeft() - i8 : i3 - i9;
            }
            l3a.m(mVar, i9, left);
            return;
        }
        if (e6Var.getVisibility() == 0) {
            int i11 = i8 - i7;
            l3a.m(e6Var, i2 + i11, i5 - i11);
        } else {
            l3a.m(fkVar, i2 + i8, i5 - i8);
        }
        l3a.r(bgVar, i2, i);
        int i12 = i4 - this.G;
        Button button = this.q;
        l3a.j(button, 0, i12 - button.getMeasuredHeight(), i3, i12);
        l3a.j(zhVar2, i, i2, i3, i4);
        TextView textView2 = this.s;
        int measuredHeight2 = (i8 / 2) + textView2.getMeasuredHeight();
        TextView textView3 = this.r;
        if (textView3.getVisibility() == 0) {
            measuredHeight2 += textView3.getMeasuredHeight() + i8;
        }
        int i13 = i5 - (i8 * 2);
        int measuredWidth = ((i13 - textView3.getMeasuredWidth()) / 2) + i8;
        int measuredWidth2 = ((i13 - textView2.getMeasuredWidth()) / 2) + i8;
        int bottom = zhVar2.getBottom();
        if (measuredHeight2 < button.getTop() - bottom) {
            int top2 = (((button.getTop() - bottom) - measuredHeight2) / 2) + bottom;
            l3a.r(textView3, top2, measuredWidth);
            l3a.r(textView2, l3a.e(top2, textView3.getBottom() + this.K), measuredWidth2);
        } else {
            l3a.u(textView2, button.getTop() - i8, measuredWidth2);
            textView3.layout(0, 0, 0, 0);
        }
        if (textView3.getTop() > 0) {
            top = textView3.getTop();
        } else {
            top = textView2.getTop() > 0 ? textView2.getTop() : button.getTop();
        }
        l3a.r(view, bgVar.getTop(), bgVar.getLeft());
        l3a.r(view2, top - i8, i);
        c3Var.c(((double) (zhVar2.getBottom() - view2.getTop())) > ((double) zhVar2.getMeasuredHeight()) * 0.1d);
        int i14 = i4 - i8;
        l3a.s(mVar, i14, i3 - i8);
        l3a.u(zhVar, i14, i8);
    }

    /* JADX WARN: Code duplicated, block: B:16:0x006b  */
    /* JADX WARN: Code duplicated, block: B:18:0x0098  */
    /* JADX WARN: Code duplicated, block: B:20:0x00a7  */
    /* JADX WARN: Code duplicated, block: B:21:0x00ac  */
    /* JADX WARN: Code duplicated, block: B:23:0x00b7  */
    /* JADX WARN: Code duplicated, block: B:24:0x00bd  */
    /* JADX WARN: Code duplicated, block: B:27:0x00cc  */
    /* JADX WARN: Code duplicated, block: B:28:0x00d0  */
    /* JADX WARN: Code duplicated, block: B:30:0x0109  */
    /* JADX WARN: Code duplicated, block: B:32:0x011f  */
    /* JADX WARN: Code duplicated, block: B:34:0x012c  */
    /* JADX WARN: Code duplicated, block: B:35:0x0131  */
    /* JADX WARN: Code duplicated, block: B:37:0x0144  */
    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        int i3;
        int i4;
        zh zhVar;
        zh zhVar2;
        int i5;
        fk fkVar;
        m mVar;
        TextView textView;
        TextView textView2;
        View view;
        View view2;
        bg bgVar;
        TextView textView3;
        View view3;
        int measuredWidth;
        int i6;
        int i7;
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        int i8 = this.M;
        if (i8 > 0 && (i7 = this.N) > 0) {
            float f = i8;
            float f2 = i7;
            float f3 = f / f2;
            float f4 = size;
            float f5 = f4 / f;
            float f6 = size2;
            if (Math.min(f5, f6 / f2) != f5 || f3 <= 0.0f) {
                i3 = (int) (f6 * f3);
            } else {
                i4 = (int) (f4 / f3);
                i3 = size;
            }
            zhVar = this.j;
            l3a.i(zhVar, i3, i4, Integer.MIN_VALUE);
            int i9 = this.H;
            zhVar2 = this.k;
            l3a.i(zhVar2, i9, i9, Integer.MIN_VALUE);
            int i10 = this.F * 2;
            i5 = this.E;
            int i11 = i10 + i5;
            l3a.i(this.d, i11, i11, 1073741824);
            fkVar = this.u;
            l3a.i(fkVar, i5, i5, 1073741824);
            mVar = this.l;
            l3a.i(mVar, i11, i11, 1073741824);
            textView = this.r;
            textView2 = this.t;
            view = this.p;
            view2 = this.o;
            bgVar = this.e;
            textView3 = this.s;
            if (size < size2) {
                bgVar.setVisibility(0);
                view2.setVisibility(0);
                view.setVisibility(0);
                textView2.setVisibility(8);
                l3a.i(bgVar, size - i5, size2, Integer.MIN_VALUE);
                l3a.i(view2, size, bgVar.getMeasuredHeight(), 1073741824);
                if (((double) zhVar.getMeasuredHeight()) * 1.6d > size2) {
                    textView.setVisibility(8);
                    if (!TextUtils.isEmpty(textView3.getText())) {
                        textView3.setVisibility(0);
                    }
                } else {
                    if (TextUtils.isEmpty(textView.getText())) {
                        i6 = 8;
                        textView.setVisibility(8);
                    } else {
                        textView.setVisibility(0);
                        i6 = 8;
                    }
                    if (TextUtils.isEmpty(textView3.getText())) {
                        textView3.setVisibility(i6);
                    } else {
                        textView3.setVisibility(0);
                    }
                }
                int i12 = this.B;
                int i13 = i12 * 2;
                this.q.measure(View.MeasureSpec.makeMeasureSpec(((size - (i12 * 4)) - mVar.getMeasuredWidth()) - zhVar2.getMeasuredWidth(), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(this.I, 1073741824));
                int i14 = size - i13;
                int i15 = size2 - i13;
                l3a.i(textView, i14, i15, Integer.MIN_VALUE);
                l3a.i(textView3, i14, i15, Integer.MIN_VALUE);
                l3a.i(view, size, size2, 1073741824);
                l3a.i(fkVar, i5, i5, 1073741824);
            } else {
                textView.setVisibility(8);
                textView3.setVisibility(8);
                view2.setVisibility(8);
                bgVar.setVisibility(0);
                if (c(size)) {
                    textView2.setVisibility(0);
                    l3a.i(textView2, size, size2, Integer.MIN_VALUE);
                    view.setVisibility(8);
                    view3 = this.L;
                    if (view3 != null) {
                        measuredWidth = view3.getMeasuredWidth();
                    } else {
                        measuredWidth = 0;
                    }
                    int iE = size - l3a.e(measuredWidth, zhVar.getMeasuredWidth());
                    l3a.i(bgVar, iE, iE, Integer.MIN_VALUE);
                } else {
                    textView2.setVisibility(8);
                    view.setVisibility(0);
                    l3a.i(bgVar, size, size2, Integer.MIN_VALUE);
                }
                l3a.i(view, bgVar.getMeasuredWidth(), bgVar.getMeasuredHeight(), 1073741824);
            }
            setMeasuredDimension(size, size2);
        }
        i3 = size;
        i4 = size2;
        zhVar = this.j;
        l3a.i(zhVar, i3, i4, Integer.MIN_VALUE);
        int i16 = this.H;
        zhVar2 = this.k;
        l3a.i(zhVar2, i16, i16, Integer.MIN_VALUE);
        int i17 = this.F * 2;
        i5 = this.E;
        int i18 = i17 + i5;
        l3a.i(this.d, i18, i18, 1073741824);
        fkVar = this.u;
        l3a.i(fkVar, i5, i5, 1073741824);
        mVar = this.l;
        l3a.i(mVar, i18, i18, 1073741824);
        textView = this.r;
        textView2 = this.t;
        view = this.p;
        view2 = this.o;
        bgVar = this.e;
        textView3 = this.s;
        if (size < size2) {
            bgVar.setVisibility(0);
            view2.setVisibility(0);
            view.setVisibility(0);
            textView2.setVisibility(8);
            l3a.i(bgVar, size - i5, size2, Integer.MIN_VALUE);
            l3a.i(view2, size, bgVar.getMeasuredHeight(), 1073741824);
            if (((double) zhVar.getMeasuredHeight()) * 1.6d > size2) {
                textView.setVisibility(8);
                if (!TextUtils.isEmpty(textView3.getText())) {
                    textView3.setVisibility(0);
                }
            } else {
                if (TextUtils.isEmpty(textView.getText())) {
                    textView.setVisibility(0);
                    i6 = 8;
                } else {
                    i6 = 8;
                    textView.setVisibility(8);
                }
                if (TextUtils.isEmpty(textView3.getText())) {
                    textView3.setVisibility(0);
                } else {
                    textView3.setVisibility(i6);
                }
            }
            int i19 = this.B;
            int i110 = i19 * 2;
            this.q.measure(View.MeasureSpec.makeMeasureSpec(((size - (i19 * 4)) - mVar.getMeasuredWidth()) - zhVar2.getMeasuredWidth(), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(this.I, 1073741824));
            int i111 = size - i110;
            int i112 = size2 - i110;
            l3a.i(textView, i111, i112, Integer.MIN_VALUE);
            l3a.i(textView3, i111, i112, Integer.MIN_VALUE);
            l3a.i(view, size, size2, 1073741824);
            l3a.i(fkVar, i5, i5, 1073741824);
        } else {
            textView.setVisibility(8);
            textView3.setVisibility(8);
            view2.setVisibility(8);
            bgVar.setVisibility(0);
            if (c(size)) {
                textView2.setVisibility(0);
                l3a.i(textView2, size, size2, Integer.MIN_VALUE);
                view.setVisibility(8);
                view3 = this.L;
                if (view3 != null) {
                    measuredWidth = view3.getMeasuredWidth();
                } else {
                    measuredWidth = 0;
                }
                int iE2 = size - l3a.e(measuredWidth, zhVar.getMeasuredWidth());
                l3a.i(bgVar, iE2, iE2, Integer.MIN_VALUE);
            } else {
                textView2.setVisibility(8);
                view.setVisibility(0);
                l3a.i(bgVar, size, size2, Integer.MIN_VALUE);
            }
            l3a.i(view, bgVar.getMeasuredWidth(), bgVar.getMeasuredHeight(), 1073741824);
        }
        setMeasuredDimension(size, size2);
    }

    @Override // com.my.target.hg, defpackage.gw9
    public void setBanner(xda xdaVar) {
        super.setBanner(xdaVar);
        View view = this.L;
        if (view != null) {
            view.setVisibility(8);
        }
        this.n.setVisibility(8);
    }
}
