package com.my.target;

import android.graphics.Bitmap;
import android.text.TextUtils;
import android.view.View;
import android.widget.Button;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.my.target.kg;
import defpackage.bo6;
import defpackage.co6;
import defpackage.h14;
import defpackage.kha;
import defpackage.l3a;
import defpackage.rn9;
import defpackage.xda;

/* JADX INFO: loaded from: classes4.dex */
public class kg extends hg {
    public static final /* synthetic */ int T = 0;

    /* JADX WARN: Code duplicated, block: B:100:0x034a  */
    /* JADX WARN: Code duplicated, block: B:101:0x034f  */
    /* JADX WARN: Code duplicated, block: B:104:0x0366  */
    /* JADX WARN: Code duplicated, block: B:107:0x0371 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:108:0x0372  */
    /* JADX WARN: Code duplicated, block: B:110:0x037a  */
    /* JADX WARN: Code duplicated, block: B:112:0x037e  */
    /* JADX WARN: Code duplicated, block: B:90:0x0320  */
    /* JADX WARN: Code duplicated, block: B:91:0x0325  */
    /* JADX WARN: Code duplicated, block: B:93:0x032b  */
    /* JADX WARN: Code duplicated, block: B:94:0x0330  */
    /* JADX WARN: Code duplicated, block: B:96:0x0336  */
    /* JADX WARN: Code duplicated, block: B:97:0x033b  */
    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        View view;
        int i5;
        int left;
        int left2;
        int top;
        int right;
        int iE;
        int bottom;
        int iE2;
        ProgressBar progressBar;
        g5 g5Var;
        Button button;
        int top2;
        dg dgVar = this.f;
        if (dgVar.getVisibility() == 0) {
            l3a.u(dgVar, i4 - i2, i);
        }
        int i6 = i3 - i;
        int i7 = i4 - i2;
        zh zhVar = this.k;
        m mVar = this.l;
        c3 c3Var = this.g;
        e6 e6Var = this.b;
        View view2 = this.o;
        View view3 = this.n;
        fk fkVar = this.u;
        e6 e6Var2 = this.d;
        bg bgVar = this.e;
        View view4 = this.p;
        int i8 = this.F;
        int i9 = this.B;
        zh zhVar2 = this.j;
        View view5 = this.L;
        if (i6 >= i7) {
            int visibility = e6Var2.getVisibility();
            int i10 = this.J;
            if (visibility == 0) {
                int i11 = i10 - i8;
                l3a.m(e6Var2, i2 + i11, i6 - i11);
            } else {
                l3a.m(fkVar, i2 + i10, i6 - i10);
            }
            if (c(i6)) {
                l3a.j(zhVar2, i, i2, zhVar2.getMeasuredWidth() + i, i4);
                l3a.j(view5, i, i2, (view5 != null ? view5.getMeasuredWidth() : 0) + i, i4);
                int left3 = view5 != null ? view5.getLeft() : zhVar2.getLeft();
                int right2 = view5 != null ? view5.getRight() : zhVar2.getRight();
                int bottom2 = view5 != null ? view5.getBottom() : zhVar2.getBottom();
                int top3 = view5 != null ? view5.getTop() : zhVar2.getTop();
                int iE3 = l3a.e(right2, zhVar2.getRight()) + i10;
                int measuredHeight = zhVar.getMeasuredHeight();
                TextView textView = this.t;
                l3a.g(i10, iE3, l3a.e(measuredHeight, textView.getMeasuredHeight()) + i8, i8, zhVar, textView);
                view3.layout(left3, top3, right2, bottom2);
                bgVar.layout(l3a.e(right2, zhVar2.getRight()), i2, i3, i4);
                view2.layout(0, 0, 0, 0);
                int i12 = i10 - i8;
                l3a.s(e6Var, i4 - i12, Math.max(zhVar2.getRight(), right2) - i12);
                c3Var.c(false);
                l3a.r(view4, i4, bgVar.getLeft());
                if (e6Var2.getVisibility() == 0) {
                    left = (e6Var2.getLeft() - i9) + i8;
                } else {
                    left = fkVar.getVisibility() == 0 ? fkVar.getLeft() - i9 : i3 - i10;
                }
                l3a.m(mVar, i10, left);
                view = view5;
            } else {
                l3a.r(zhVar, i10, i10);
                l3a.u(bgVar, i7, i);
                l3a.j(zhVar2, i, i2, i3, i4);
                view = view5;
                l3a.j(view, i, i2, i3, i4);
                view3.layout(zhVar2.getLeft(), zhVar2.getTop(), zhVar2.getRight(), zhVar2.getBottom());
                i5 = 0;
                view2.layout(0, 0, 0, 0);
                l3a.r(view4, bgVar.getTop(), bgVar.getLeft());
                int i13 = i9 - i8;
                l3a.s(e6Var, bgVar.getTop() - i13, i3 - (i10 - i8));
                l3a.s(mVar, e6Var.getTop() - i13, i3 - i10);
                r5.c(true);
            }
            if (view != null) {
                left2 = view.getLeft();
            } else {
                left2 = zhVar2.getLeft();
            }
            if (view != null) {
                top = view.getTop();
            } else {
                top = zhVar2.getTop();
            }
            if (view != null) {
                right = view.getRight();
            } else {
                right = i5;
            }
            iE = l3a.e(right, zhVar2.getRight());
            if (view != null) {
                bottom = view.getBottom();
            } else {
                bottom = i5;
            }
            iE2 = l3a.e(bottom, zhVar2.getBottom());
            progressBar = this.m;
            if (progressBar.getVisibility() == 0) {
                l3a.j(progressBar, left2, top, iE, iE2);
            }
            g5Var = this.h;
            if (g5Var.getVisibility() != 0) {
                return;
            }
            button = this.i;
            if (button.getVisibility() != 0) {
                l3a.j(g5Var, left2, top, iE, iE2);
                return;
            }
            int measuredWidth = (((iE - left2) - (button.getMeasuredWidth() + (g5Var.getMeasuredWidth() + i9))) / 2) + left2;
            int measuredHeight2 = (((iE2 - top) - g5Var.getMeasuredHeight()) / 2) + top;
            l3a.r(g5Var, measuredHeight2, measuredWidth);
            l3a.r(button, measuredHeight2, g5Var.getRight() + i9);
        }
        if (e6Var2.getVisibility() == 0) {
            int i14 = i9 - i8;
            l3a.m(e6Var2, i2 + i14, i6 - i14);
        } else {
            l3a.m(fkVar, i2 + i9, i6 - i9);
        }
        l3a.r(bgVar, i2, i);
        int i15 = i4 - this.G;
        Button button2 = this.q;
        l3a.j(button2, 0, i15 - button2.getMeasuredHeight(), i3, i15);
        l3a.j(view5, i, i2, i3, i4);
        if (zhVar2.getMeasuredWidth() > 0 && zhVar2.getMeasuredHeight() > 0) {
            l3a.j(zhVar2, i, i2, i3, i4);
        }
        int left4 = view5 != null ? view5.getLeft() : 0;
        int top4 = view5 != null ? view5.getTop() : 0;
        int iE4 = l3a.e(view5 != null ? view5.getRight() : 0, zhVar2.getRight());
        int iE5 = l3a.e(view5 != null ? view5.getBottom() : 0, zhVar2.getBottom());
        view3.layout(left4, top4, iE4, iE5);
        TextView textView2 = this.s;
        int measuredHeight3 = (i9 / 2) + textView2.getMeasuredHeight();
        TextView textView3 = this.r;
        if (textView3.getVisibility() == 0) {
            measuredHeight3 += textView3.getMeasuredHeight() + i9;
        }
        int i16 = i6 - (i9 * 2);
        int measuredWidth2 = ((i16 - textView3.getMeasuredWidth()) / 2) + i9;
        int measuredWidth3 = ((i16 - textView2.getMeasuredWidth()) / 2) + i9;
        int iE6 = l3a.e(zhVar2.getBottom(), iE5);
        if (measuredHeight3 < button2.getTop() - iE6) {
            int top5 = (((button2.getTop() - iE6) - measuredHeight3) / 2) + iE6;
            l3a.r(textView3, top5, measuredWidth2);
            l3a.r(textView2, l3a.e(top5, textView3.getBottom() + this.K), measuredWidth3);
        } else {
            l3a.u(textView2, button2.getTop() - i9, measuredWidth3);
            textView3.layout(0, 0, 0, 0);
        }
        if (textView3.getTop() > 0) {
            top2 = textView3.getTop();
        } else {
            top2 = textView2.getTop() > 0 ? textView2.getTop() : button2.getTop();
        }
        l3a.r(view2, bgVar.getTop(), bgVar.getLeft());
        l3a.r(view4, top2 - i9, i);
        int i17 = i9 - i8;
        l3a.s(e6Var, Math.min(view4.getTop(), Math.max(iE5, zhVar2.getBottom())) - i17, i3 - i17);
        c3Var.c(((double) (zhVar2.getBottom() - view4.getTop())) > ((double) zhVar2.getMeasuredHeight()) * 0.1d);
        int top6 = (dgVar.getVisibility() == 0 ? dgVar.getTop() : i4) - i9;
        l3a.s(mVar, top6, i3 - i9);
        l3a.u(zhVar, top6, i9);
        view = view5;
        i5 = 0;
        if (view != null) {
            left2 = view.getLeft();
        } else {
            left2 = zhVar2.getLeft();
        }
        if (view != null) {
            top = view.getTop();
        } else {
            top = zhVar2.getTop();
        }
        if (view != null) {
            right = view.getRight();
        } else {
            right = i5;
        }
        iE = l3a.e(right, zhVar2.getRight());
        if (view != null) {
            bottom = view.getBottom();
        } else {
            bottom = i5;
        }
        iE2 = l3a.e(bottom, zhVar2.getBottom());
        progressBar = this.m;
        if (progressBar.getVisibility() == 0) {
            l3a.j(progressBar, left2, top, iE, iE2);
        }
        g5Var = this.h;
        if (g5Var.getVisibility() != 0) {
            return;
        }
        button = this.i;
        if (button.getVisibility() != 0) {
            l3a.j(g5Var, left2, top, iE, iE2);
            return;
        }
        int measuredWidth4 = (((iE - left2) - (button.getMeasuredWidth() + (g5Var.getMeasuredWidth() + i9))) / 2) + left2;
        int measuredHeight4 = (((iE2 - top) - g5Var.getMeasuredHeight()) / 2) + top;
        l3a.r(g5Var, measuredHeight4, measuredWidth4);
        l3a.r(button, measuredHeight4, g5Var.getRight() + i9);
    }

    /* JADX WARN: Code duplicated, block: B:16:0x007a  */
    /* JADX WARN: Code duplicated, block: B:18:0x0098  */
    /* JADX WARN: Code duplicated, block: B:19:0x009d  */
    /* JADX WARN: Code duplicated, block: B:22:0x00b6  */
    /* JADX WARN: Code duplicated, block: B:24:0x00c3  */
    /* JADX WARN: Code duplicated, block: B:25:0x00c8  */
    /* JADX WARN: Code duplicated, block: B:27:0x00d3  */
    /* JADX WARN: Code duplicated, block: B:28:0x00d7  */
    /* JADX WARN: Code duplicated, block: B:31:0x00e4  */
    /* JADX WARN: Code duplicated, block: B:32:0x00e8  */
    /* JADX WARN: Code duplicated, block: B:34:0x011e  */
    /* JADX WARN: Code duplicated, block: B:36:0x0133  */
    /* JADX WARN: Code duplicated, block: B:38:0x013e  */
    /* JADX WARN: Code duplicated, block: B:39:0x0143  */
    /* JADX WARN: Code duplicated, block: B:41:0x0156  */
    /* JADX WARN: Code duplicated, block: B:45:0x0177  */
    /* JADX WARN: Code duplicated, block: B:47:0x0182  */
    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        int i3;
        int i4;
        View view;
        zh zhVar;
        zh zhVar2;
        int i5;
        m mVar;
        TextView textView;
        View view2;
        View view3;
        bg bgVar;
        TextView textView2;
        TextView textView3;
        int i6;
        int measuredWidth;
        g5 g5Var;
        int visibility;
        int i7;
        Button button;
        int measuredHeight;
        int i8;
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        int i9 = this.M;
        if (i9 > 0 && (i8 = this.N) > 0) {
            float f = i9;
            float f2 = i8;
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
            view = this.L;
            l3a.i(view, i3, i4, Integer.MIN_VALUE);
            zhVar = this.j;
            l3a.i(zhVar, i3, i4, Integer.MIN_VALUE);
            l3a.i(this.n, i3, i4, 1073741824);
            int i10 = this.H;
            zhVar2 = this.k;
            l3a.i(zhVar2, i10, i10, Integer.MIN_VALUE);
            int i11 = this.F * 2;
            i5 = this.E;
            int i12 = i11 + i5;
            l3a.i(this.b, i12, i12, 1073741824);
            l3a.i(this.d, i12, i12, 1073741824);
            l3a.i(this.u, i5, i5, 1073741824);
            mVar = this.l;
            l3a.i(mVar, i12, i12, 1073741824);
            textView = this.t;
            view2 = this.p;
            view3 = this.o;
            bgVar = this.e;
            textView2 = this.s;
            textView3 = this.r;
            if (size < size2) {
                bgVar.setVisibility(0);
                view3.setVisibility(0);
                view2.setVisibility(0);
                textView.setVisibility(8);
                l3a.i(bgVar, size - i5, size2, Integer.MIN_VALUE);
                l3a.i(view3, size, bgVar.getMeasuredHeight(), 1073741824);
                if (view != null) {
                    measuredHeight = view.getMeasuredHeight();
                } else {
                    measuredHeight = 0;
                }
                if (((double) l3a.e(measuredHeight, zhVar.getMeasuredHeight())) * 1.6d > size2) {
                    textView3.setVisibility(8);
                    if (!TextUtils.isEmpty(textView2.getText())) {
                        textView2.setVisibility(0);
                    }
                } else {
                    if (TextUtils.isEmpty(textView3.getText())) {
                        textView3.setVisibility(8);
                    } else {
                        textView3.setVisibility(0);
                    }
                    if (TextUtils.isEmpty(textView2.getText())) {
                        textView2.setVisibility(8);
                    } else {
                        textView2.setVisibility(0);
                    }
                }
                int i13 = this.B;
                int i14 = i13 * 2;
                i6 = 1073741824;
                this.q.measure(View.MeasureSpec.makeMeasureSpec(((size - (i13 * 4)) - mVar.getMeasuredWidth()) - zhVar2.getMeasuredWidth(), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(this.I, 1073741824));
                int i15 = size - i14;
                int i16 = size2 - i14;
                l3a.i(textView3, i15, i16, Integer.MIN_VALUE);
                l3a.i(textView2, i15, i16, Integer.MIN_VALUE);
                l3a.i(view2, size, size2, 1073741824);
            } else {
                textView3.setVisibility(8);
                textView2.setVisibility(8);
                view3.setVisibility(8);
                bgVar.setVisibility(0);
                if (c(size)) {
                    textView.setVisibility(0);
                    view2.setVisibility(8);
                    l3a.i(textView, size, size2, Integer.MIN_VALUE);
                    if (view != null) {
                        measuredWidth = view.getMeasuredWidth();
                    } else {
                        measuredWidth = 0;
                    }
                    int iE = size - l3a.e(measuredWidth, zhVar.getMeasuredWidth());
                    l3a.i(bgVar, iE, iE, Integer.MIN_VALUE);
                } else {
                    textView.setVisibility(8);
                    view2.setVisibility(0);
                    l3a.i(bgVar, size, size2, Integer.MIN_VALUE);
                }
                i6 = 1073741824;
                l3a.i(view2, bgVar.getMeasuredWidth(), bgVar.getMeasuredHeight(), 1073741824);
            }
            g5Var = this.h;
            visibility = g5Var.getVisibility();
            i7 = this.C;
            if (visibility == 0) {
                l3a.i(g5Var, i7, i7, i6);
                button = this.i;
                if (button.getVisibility() == 0) {
                    button.measure(View.MeasureSpec.makeMeasureSpec(size, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(g5Var.getMeasuredHeight(), i6));
                }
            }
            l3a.i(this.m, i7, i7, i6);
            l3a.i(this.f, size, this.D, i6);
            setMeasuredDimension(size, size2);
        }
        i3 = size;
        i4 = size2;
        view = this.L;
        l3a.i(view, i3, i4, Integer.MIN_VALUE);
        zhVar = this.j;
        l3a.i(zhVar, i3, i4, Integer.MIN_VALUE);
        l3a.i(this.n, i3, i4, 1073741824);
        int i17 = this.H;
        zhVar2 = this.k;
        l3a.i(zhVar2, i17, i17, Integer.MIN_VALUE);
        int i18 = this.F * 2;
        i5 = this.E;
        int i19 = i18 + i5;
        l3a.i(this.b, i19, i19, 1073741824);
        l3a.i(this.d, i19, i19, 1073741824);
        l3a.i(this.u, i5, i5, 1073741824);
        mVar = this.l;
        l3a.i(mVar, i19, i19, 1073741824);
        textView = this.t;
        view2 = this.p;
        view3 = this.o;
        bgVar = this.e;
        textView2 = this.s;
        textView3 = this.r;
        if (size < size2) {
            bgVar.setVisibility(0);
            view3.setVisibility(0);
            view2.setVisibility(0);
            textView.setVisibility(8);
            l3a.i(bgVar, size - i5, size2, Integer.MIN_VALUE);
            l3a.i(view3, size, bgVar.getMeasuredHeight(), 1073741824);
            if (view != null) {
                measuredHeight = view.getMeasuredHeight();
            } else {
                measuredHeight = 0;
            }
            if (((double) l3a.e(measuredHeight, zhVar.getMeasuredHeight())) * 1.6d > size2) {
                textView3.setVisibility(8);
                if (!TextUtils.isEmpty(textView2.getText())) {
                    textView2.setVisibility(0);
                }
            } else {
                if (TextUtils.isEmpty(textView3.getText())) {
                    textView3.setVisibility(0);
                } else {
                    textView3.setVisibility(8);
                }
                if (TextUtils.isEmpty(textView2.getText())) {
                    textView2.setVisibility(0);
                } else {
                    textView2.setVisibility(8);
                }
            }
            int i110 = this.B;
            int i111 = i110 * 2;
            i6 = 1073741824;
            this.q.measure(View.MeasureSpec.makeMeasureSpec(((size - (i110 * 4)) - mVar.getMeasuredWidth()) - zhVar2.getMeasuredWidth(), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(this.I, 1073741824));
            int i112 = size - i111;
            int i113 = size2 - i111;
            l3a.i(textView3, i112, i113, Integer.MIN_VALUE);
            l3a.i(textView2, i112, i113, Integer.MIN_VALUE);
            l3a.i(view2, size, size2, 1073741824);
        } else {
            textView3.setVisibility(8);
            textView2.setVisibility(8);
            view3.setVisibility(8);
            bgVar.setVisibility(0);
            if (c(size)) {
                textView.setVisibility(0);
                view2.setVisibility(8);
                l3a.i(textView, size, size2, Integer.MIN_VALUE);
                if (view != null) {
                    measuredWidth = view.getMeasuredWidth();
                } else {
                    measuredWidth = 0;
                }
                int iE2 = size - l3a.e(measuredWidth, zhVar.getMeasuredWidth());
                l3a.i(bgVar, iE2, iE2, Integer.MIN_VALUE);
            } else {
                textView.setVisibility(8);
                view2.setVisibility(0);
                l3a.i(bgVar, size, size2, Integer.MIN_VALUE);
            }
            i6 = 1073741824;
            l3a.i(view2, bgVar.getMeasuredWidth(), bgVar.getMeasuredHeight(), 1073741824);
        }
        g5Var = this.h;
        visibility = g5Var.getVisibility();
        i7 = this.C;
        if (visibility == 0) {
            l3a.i(g5Var, i7, i7, i6);
            button = this.i;
            if (button.getVisibility() == 0) {
                button.measure(View.MeasureSpec.makeMeasureSpec(size, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(g5Var.getMeasuredHeight(), i6));
            }
        }
        l3a.i(this.m, i7, i7, i6);
        l3a.i(this.f, size, this.D, i6);
        setMeasuredDimension(size, size2);
    }

    @Override // com.my.target.hg, defpackage.gw9
    public void setBanner(xda xdaVar) {
        h14 h14Var;
        Bitmap bitmap;
        super.setBanner(xdaVar);
        kha khaVar = xdaVar.Z;
        if (khaVar == null) {
            return;
        }
        this.f.setVisibility(0);
        e6 e6Var = this.b;
        e6Var.setVisibility(0);
        if (khaVar.X) {
            e6Var.a(this.w, false);
            e6Var.setContentDescription("sound_off");
        } else {
            e6Var.a(this.v, false);
            e6Var.setContentDescription("sound_on");
        }
        this.h.setImageBitmap(this.x);
        this.P = 0;
        rn9 rn9Var = (rn9) khaVar.h0;
        h14 h14Var2 = khaVar.S;
        if (rn9Var != null) {
            this.M = rn9Var.b;
            this.N = rn9Var.c;
        }
        int i = this.M;
        if ((i <= 0 || this.N <= 0) && h14Var2 != null) {
            i = h14Var2.b;
            this.M = i;
            this.N = h14Var2.c;
        }
        if ((i <= 0 || this.N <= 0) && (h14Var = xdaVar.p) != null) {
            int i2 = h14Var.b;
            this.M = i2;
            int i3 = h14Var.c;
            this.N = i3;
            if ((i2 <= 0 || i3 <= 0) && (bitmap = (Bitmap) h14Var.d) != null) {
                this.M = bitmap.getWidth();
                this.N = bitmap.getHeight();
            }
        }
        boolean z = this.R;
        View view = this.L;
        View view2 = this.n;
        if (!z) {
            e6Var.setOnClickListener(this);
            if (view != null) {
                view.setOnClickListener(this);
            }
            view2.setOnClickListener(this);
            return;
        }
        e6Var.setOnClickListener(new bo6(this, 1));
        c1 c1Var = this.A;
        if (view != null) {
            view.setOnTouchListener(c1Var);
            view.setOnClickListener(new co6(this, 2));
        }
        view2.setOnTouchListener(c1Var);
        view2.setOnClickListener(new View.OnClickListener() { // from class: v0a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view3) {
                int i4 = kg.T;
                kg kgVar = this.b;
                kgVar.g.h(kgVar.Q);
            }
        });
    }
}
