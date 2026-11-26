package yads;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.ViewGroupKt;
import defpackage.j59;
import defpackage.p07;
import defpackage.u96;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.ListIterator;

/* JADX INFO: loaded from: classes6.dex */
public class bl6 extends yh2 implements wj {
    public static final /* synthetic */ defpackage.ze4[] z = {mo.a(bl6.class, "showSeparators", "getShowSeparators()I", 0), mo.a(bl6.class, "showLineSeparators", "getShowLineSeparators()I", 0), mo.a(bl6.class, "separatorDrawable", "getSeparatorDrawable()Landroid/graphics/drawable/Drawable;", 0), mo.a(bl6.class, "lineSeparatorDrawable", "getLineSeparatorDrawable()Landroid/graphics/drawable/Drawable;", 0), mo.a(bl6.class, "aspectRatio", "getAspectRatio()F", 0)};
    public int c;
    public final hp0 d;
    public final hp0 e;
    public final hp0 f;
    public final hp0 g;
    public boolean h;
    public final ArrayList i;
    public int j;
    public int k;
    public int l;
    public int m;
    public int n;
    public int o;
    public int p;
    public int q;
    public int r;
    public int s;
    public int t;
    public int u;
    public int v;
    public final xh2 w;
    public int x;
    public final hp0 y;

    public bl6(Context context) {
        super(context, null, 6, 0);
        this.d = nh6.a((Object) 0);
        this.e = nh6.a((Object) 0);
        this.f = nh6.a((Object) null);
        this.g = nh6.a((Object) null);
        this.h = true;
        this.i = new ArrayList();
        this.w = new xh2();
        this.y = vj.a();
    }

    public final void a(int i, int i2, int i3) {
        this.u = 0;
        this.v = 0;
        if (this.i.size() != 0 && View.MeasureSpec.getMode(i) == 1073741824) {
            int size = View.MeasureSpec.getSize(i);
            int i4 = 1;
            if (this.i.size() == 1) {
                ((al6) this.i.get(0)).d = size - i3;
                return;
            }
            int iT = (size - t()) + i3;
            if (i2 != 1) {
                if (i2 != 5) {
                    if (i2 != 16) {
                        if (i2 != 80) {
                            if (i2 != 16777216) {
                                if (i2 != 33554432) {
                                    if (i2 != 67108864) {
                                        if (i2 != 268435456) {
                                            if (i2 != 536870912) {
                                                if (i2 != 1073741824) {
                                                    return;
                                                }
                                            }
                                        }
                                    }
                                    al6 al6Var = new al6(0, 7);
                                    int iB = defpackage.w65.b(iT / (this.i.size() + 1));
                                    al6Var.d = iB;
                                    int i5 = iB / 2;
                                    this.u = i5;
                                    this.v = i5;
                                    while (true) {
                                        int size2 = this.i.size();
                                        ArrayList arrayList = this.i;
                                        if (i4 >= size2) {
                                            arrayList.add(0, al6Var);
                                            this.i.add(al6Var);
                                            return;
                                        } else {
                                            arrayList.add(i4, al6Var);
                                            i4 += 2;
                                        }
                                    }
                                }
                                al6 al6Var2 = new al6(0, 7);
                                float f = iT;
                                int size3 = this.i.size();
                                int iB2 = defpackage.w65.b(size3 == 1 ? 0.0f : f / (size3 - 1));
                                al6Var2.d = iB2;
                                this.u = iB2 / 2;
                                while (i4 < this.i.size()) {
                                    this.i.add(i4, al6Var2);
                                    i4 += 2;
                                }
                                return;
                            }
                            al6 al6Var3 = new al6(0, 7);
                            int iB3 = defpackage.w65.b(iT / (this.i.size() * 2));
                            al6Var3.d = iB3;
                            this.u = iB3;
                            this.v = iB3 / 2;
                            for (int i6 = 0; i6 < this.i.size(); i6 += 3) {
                                this.i.add(i6, al6Var3);
                                this.i.add(i6 + 2, al6Var3);
                            }
                            return;
                        }
                    }
                }
                al6 al6Var4 = new al6(0, 7);
                al6Var4.d = iT;
                this.i.add(0, al6Var4);
                return;
            }
            al6 al6Var5 = new al6(0, 7);
            al6Var5.d = iT / 2;
            this.i.add(0, al6Var5);
            this.i.add(al6Var5);
        }
    }

    public final void b(Canvas canvas, int i, int i2, int i3, int i4) {
        a(o(), canvas, i + this.m, i2 - this.k, i3 - this.n, i4 + this.l);
    }

    public final boolean c(View view) {
        Integer numValueOf;
        if (this.h) {
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            numValueOf = layoutParams != null ? Integer.valueOf(layoutParams.height) : null;
            return numValueOf != null && numValueOf.intValue() == -1;
        }
        ViewGroup.LayoutParams layoutParams2 = view.getLayoutParams();
        numValueOf = layoutParams2 != null ? Integer.valueOf(layoutParams2.width) : null;
        return numValueOf != null && numValueOf.intValue() == -1;
    }

    public final boolean d(View view) {
        return view.getVisibility() == 8 || c(view);
    }

    /* JADX WARN: Code duplicated, block: B:68:0x018a  */
    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        int i;
        bl6 bl6Var = this;
        super.dispatchDraw(canvas);
        if (bl6Var.o() == null && bl6Var.m() == null) {
            return;
        }
        if (bl6Var.r() == 0 && bl6Var.q() == 0) {
            return;
        }
        if (!bl6Var.h) {
            p07 p07Var = new p07();
            p07 p07Var2 = new p07();
            if (bl6Var.i.size() > 0) {
                int iQ = bl6Var.q();
                if (oh6.b(bl6Var) ? a(iQ) : b(iQ)) {
                    al6 al6VarK = bl6Var.k();
                    int i2 = al6VarK != null ? al6VarK.g - al6VarK.d : 0;
                    p07Var.b = i2;
                    int i3 = i2 - bl6Var.v;
                    bl6Var.a(canvas, i3 - bl6Var.n(), bl6Var.getPaddingTop(), i3, bl6Var.getHeight() - bl6Var.getPaddingBottom());
                }
            }
            defpackage.x74 it = oh6.a(bl6Var, 0, bl6Var.i.size()).iterator();
            boolean z2 = false;
            while (it.d) {
                al6 al6Var = (al6) bl6Var.i.get(it.nextInt());
                if (al6Var.c - al6Var.i != 0) {
                    int i4 = al6Var.g;
                    p07Var2.b = i4;
                    p07Var.b = i4 - al6Var.d;
                    if (z2 && c(bl6Var.q())) {
                        int i5 = p07Var.b - bl6Var.u;
                        bl6Var.a(canvas, i5 - bl6Var.n(), bl6Var.getPaddingTop(), i5, bl6Var.getHeight() - bl6Var.getPaddingBottom());
                    }
                    boolean z3 = bl6Var.m() != null;
                    int i6 = al6Var.c;
                    boolean z4 = true;
                    int i7 = 0;
                    int i8 = 0;
                    while (i8 < i6) {
                        View childAt = bl6Var.getChildAt(al6Var.a + i8);
                        if (childAt != null && !bl6Var.d(childAt)) {
                            ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
                            layoutParams.getClass();
                            ro1 ro1Var = (ro1) layoutParams;
                            int top = childAt.getTop() - ((ViewGroup.MarginLayoutParams) ro1Var).topMargin;
                            int bottom = childAt.getBottom() + ((ViewGroup.MarginLayoutParams) ro1Var).bottomMargin;
                            if (z4) {
                                if (b(bl6Var.r())) {
                                    int i9 = top - al6Var.j;
                                    bl6Var.b(canvas, p07Var.b, i9 - bl6Var.p(), p07Var2.b, i9);
                                }
                                z4 = false;
                            } else if (c(r())) {
                                int i10 = top - ((int) (al6Var.k / 2.0f));
                                b(canvas, p07Var.b, i10 - p(), p07Var2.b, i10);
                            }
                            i7 = bottom;
                        }
                        i8++;
                        bl6Var = this;
                    }
                    if (i7 <= 0 || !a(r())) {
                        bl6Var = this;
                    } else {
                        int iP = p() + i7 + al6Var.j;
                        bl6Var = this;
                        bl6Var.b(canvas, p07Var.b, iP - p(), p07Var2.b, iP);
                    }
                    z2 = z3;
                }
            }
            if (p07Var2.b > 0) {
                int iQ2 = bl6Var.q();
                if (oh6.b(bl6Var) ? b(iQ2) : a(iQ2)) {
                    int iN = bl6Var.n() + p07Var2.b + bl6Var.v;
                    bl6Var.a(canvas, iN - bl6Var.n(), bl6Var.getPaddingTop(), iN, bl6Var.getHeight() - bl6Var.getPaddingBottom());
                    return;
                }
                return;
            }
            return;
        }
        p07 p07Var3 = new p07();
        p07 p07Var4 = new p07();
        if (bl6Var.i.size() > 0 && b(bl6Var.q())) {
            al6 al6VarK2 = bl6Var.k();
            int i11 = al6VarK2 != null ? al6VarK2.h - al6VarK2.d : 0;
            p07Var3.b = i11;
            int i12 = i11 - bl6Var.v;
            bl6Var.a(canvas, bl6Var.getPaddingLeft(), i12 - bl6Var.n(), bl6Var.getWidth() - bl6Var.getPaddingRight(), i12);
        }
        boolean z5 = false;
        for (al6 al6Var2 : bl6Var.i) {
            if (al6Var2.c - al6Var2.i != 0) {
                int i13 = al6Var2.h;
                p07Var4.b = i13;
                p07Var3.b = i13 - al6Var2.d;
                if (z5 && c(bl6Var.q())) {
                    int i14 = p07Var3.b - bl6Var.u;
                    bl6Var.a(canvas, bl6Var.getPaddingLeft(), i14 - bl6Var.n(), bl6Var.getWidth() - bl6Var.getPaddingRight(), i14);
                }
                defpackage.w74 w74VarA = oh6.a(bl6Var, al6Var2.a, al6Var2.c);
                int i15 = w74VarA.b;
                int i16 = w74VarA.c;
                int i17 = w74VarA.d;
                if ((i17 > 0 && i15 <= i16) || (i17 < 0 && i16 <= i15)) {
                    int i18 = i15;
                    boolean z6 = true;
                    i = 0;
                    while (true) {
                        View childAt2 = bl6Var.getChildAt(i18);
                        if (childAt2 != null && !bl6Var.d(childAt2)) {
                            ViewGroup.LayoutParams layoutParams2 = childAt2.getLayoutParams();
                            layoutParams2.getClass();
                            ro1 ro1Var2 = (ro1) layoutParams2;
                            int left = childAt2.getLeft() - ((ViewGroup.MarginLayoutParams) ro1Var2).leftMargin;
                            int right = childAt2.getRight() + ((ViewGroup.MarginLayoutParams) ro1Var2).rightMargin;
                            if (z6) {
                                int iR = bl6Var.r();
                                if (oh6.b(bl6Var) ? a(iR) : b(iR)) {
                                    int i19 = left - al6Var2.j;
                                    bl6Var.b(canvas, i19 - bl6Var.p(), p07Var3.b, i19, p07Var4.b);
                                }
                                z6 = false;
                            } else if (c(r())) {
                                int i20 = left - ((int) (al6Var2.k / 2.0f));
                                b(canvas, i20 - p(), p07Var3.b, i20, p07Var4.b);
                            }
                            i = right;
                        }
                        if (i18 == i16) {
                            break;
                        }
                        i18 += i17;
                        bl6Var = this;
                    }
                } else {
                    i = 0;
                }
                if (i > 0) {
                    int iR2 = r();
                    if (oh6.b(this) ? b(iR2) : a(iR2)) {
                        int iP2 = p() + i + al6Var2.j;
                        bl6Var = this;
                        bl6Var.b(canvas, iP2 - p(), p07Var3.b, iP2, p07Var4.b);
                    } else {
                        bl6Var = this;
                    }
                } else {
                    bl6Var = this;
                }
                z5 = true;
            }
        }
        if (p07Var4.b <= 0 || !a(bl6Var.q())) {
            return;
        }
        int iN2 = bl6Var.n() + p07Var4.b + bl6Var.v;
        bl6Var.a(canvas, bl6Var.getPaddingLeft(), iN2 - bl6Var.n(), bl6Var.getWidth() - bl6Var.getPaddingRight(), iN2);
    }

    @Override // android.view.View
    public final int getBaseline() {
        al6 al6VarK = k();
        if (al6VarK == null) {
            return super.getBaseline();
        }
        return getPaddingTop() + al6VarK.e;
    }

    public final float j() {
        hp0 hp0Var = this.y;
        defpackage.ze4 ze4Var = z[4];
        hp0Var.getClass();
        return ((Number) hp0Var.a).floatValue();
    }

    public final al6 k() {
        Object next;
        if (this.h || !oh6.b(this)) {
            Iterator it = this.i.iterator();
            while (it.hasNext()) {
                next = it.next();
                al6 al6Var = (al6) next;
                if (al6Var.c - al6Var.i > 0) {
                }
            }
            next = null;
        } else {
            ArrayList arrayList = this.i;
            ListIterator listIterator = arrayList.listIterator(arrayList.size());
            while (listIterator.hasPrevious()) {
                next = listIterator.previous();
                al6 al6Var2 = (al6) next;
                if (al6Var2.c - al6Var2.i > 0) {
                }
            }
            next = null;
        }
        return (al6) next;
    }

    public final int l() {
        Integer num;
        Iterator it = this.i.iterator();
        if (it.hasNext()) {
            Integer numValueOf = Integer.valueOf(((al6) it.next()).b);
            while (it.hasNext()) {
                Integer numValueOf2 = Integer.valueOf(((al6) it.next()).b);
                if (numValueOf.compareTo(numValueOf2) < 0) {
                    numValueOf = numValueOf2;
                }
            }
            num = numValueOf;
        } else {
            num = null;
        }
        if (num != null) {
            return num.intValue();
        }
        return 0;
    }

    public final Drawable m() {
        hp0 hp0Var = this.g;
        defpackage.ze4 ze4Var = z[3];
        hp0Var.getClass();
        return (Drawable) hp0Var.a;
    }

    public final int n() {
        int intrinsicWidth;
        int i;
        if (this.h) {
            Drawable drawableM = m();
            intrinsicWidth = (drawableM != null ? drawableM.getIntrinsicHeight() : 0) + this.q;
            i = this.r;
        } else {
            Drawable drawableM2 = m();
            intrinsicWidth = (drawableM2 != null ? drawableM2.getIntrinsicWidth() : 0) + this.s;
            i = this.t;
        }
        return intrinsicWidth + i;
    }

    public final Drawable o() {
        hp0 hp0Var = this.f;
        defpackage.ze4 ze4Var = z[2];
        hp0Var.getClass();
        return (Drawable) hp0Var.a;
    }

    /* JADX WARN: Code duplicated, block: B:71:0x0194  */
    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z2, int i, int i2, int i3, int i4) {
        int iN;
        int measuredHeight;
        if (!this.h) {
            if (oh6.b(this)) {
                if (a(q())) {
                    iN = n();
                } else {
                    iN = 0;
                }
            } else if (b(q())) {
                iN = n();
            } else {
                iN = 0;
            }
            int paddingLeft = getPaddingLeft() + iN;
            defpackage.x74 it = oh6.a(this, 0, this.i.size()).iterator();
            int iN2 = paddingLeft;
            boolean z3 = false;
            while (it.d) {
                al6 al6Var = (al6) this.i.get(it.nextInt());
                float f = (i4 - i2) - al6Var.b;
                float paddingTop = getPaddingTop() + s();
                xh2 xh2Var = this.w;
                xh2Var.a(this.a & 1879048304, f, al6Var.c - al6Var.i);
                float f2 = paddingTop + xh2Var.a;
                al6Var.k = xh2Var.b;
                al6Var.j = xh2Var.c;
                if (al6Var.c - al6Var.i > 0) {
                    if (z3) {
                        iN2 += c(q()) ? n() : this.p;
                    }
                    z3 = true;
                }
                int i5 = al6Var.c;
                float measuredHeight2 = f2;
                boolean z4 = false;
                for (int i6 = 0; i6 < i5; i6++) {
                    View childAt = getChildAt(al6Var.a + i6);
                    if (childAt == null || d(childAt)) {
                        if (c(childAt)) {
                            childAt.layout(0, 0, 0, 0);
                        }
                    } else {
                        ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
                        layoutParams.getClass();
                        ro1 ro1Var = (ro1) layoutParams;
                        float fP = measuredHeight2 + ((ViewGroup.MarginLayoutParams) ro1Var).topMargin;
                        if (z4) {
                            fP += c(r()) ? p() : this.o;
                        }
                        int i7 = al6Var.d;
                        ViewGroup.LayoutParams layoutParams2 = childAt.getLayoutParams();
                        layoutParams2.getClass();
                        ro1 ro1Var2 = (ro1) layoutParams2;
                        int absoluteGravity = GravityCompat.getAbsoluteGravity(ro1Var2.a & 125829127, ViewCompat.getLayoutDirection(this));
                        int measuredWidth = (absoluteGravity != 1 ? absoluteGravity != 5 ? ((ViewGroup.MarginLayoutParams) ro1Var2).leftMargin : (i7 - childAt.getMeasuredWidth()) - ((ViewGroup.MarginLayoutParams) ro1Var2).rightMargin : (((i7 - childAt.getMeasuredWidth()) + ((ViewGroup.MarginLayoutParams) ro1Var2).leftMargin) - ((ViewGroup.MarginLayoutParams) ro1Var2).rightMargin) / 2) + iN2;
                        childAt.layout(measuredWidth, defpackage.w65.b(fP), childAt.getMeasuredWidth() + measuredWidth, childAt.getMeasuredHeight() + defpackage.w65.b(fP));
                        measuredHeight2 = childAt.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) ro1Var).bottomMargin + al6Var.k + fP;
                        z4 = true;
                    }
                }
                iN2 += al6Var.d;
                al6Var.g = iN2;
                al6Var.h = defpackage.w65.b(measuredHeight2);
            }
            return;
        }
        int iN3 = (b(q()) ? n() : 0) + getPaddingTop();
        int absoluteGravity2 = GravityCompat.getAbsoluteGravity(125829127 & this.a, ViewCompat.getLayoutDirection(this));
        boolean z5 = false;
        for (al6 al6Var2 : this.i) {
            float paddingLeft2 = getPaddingLeft() + (oh6.b(this) ? a(r()) ? p() : 0 : s());
            float f3 = (i3 - i) - al6Var2.b;
            xh2 xh2Var2 = this.w;
            xh2Var2.a(absoluteGravity2, f3, al6Var2.c - al6Var2.i);
            float measuredWidth2 = paddingLeft2 + xh2Var2.a;
            al6Var2.k = xh2Var2.b;
            al6Var2.j = xh2Var2.c;
            if (al6Var2.c - al6Var2.i > 0) {
                if (z5) {
                    iN3 += c(q()) ? n() : this.p;
                }
                z5 = true;
            }
            defpackage.w74 w74VarA = oh6.a(this, al6Var2.a, al6Var2.c);
            int i8 = w74VarA.b;
            int i9 = w74VarA.c;
            int i10 = w74VarA.d;
            if ((i10 > 0 && i8 <= i9) || (i10 < 0 && i9 <= i8)) {
                boolean z6 = false;
                while (true) {
                    View childAt2 = getChildAt(i8);
                    if (childAt2 != null && !d(childAt2)) {
                        ViewGroup.LayoutParams layoutParams3 = childAt2.getLayoutParams();
                        layoutParams3.getClass();
                        ro1 ro1Var3 = (ro1) layoutParams3;
                        float fP2 = measuredWidth2 + ((ViewGroup.MarginLayoutParams) ro1Var3).leftMargin;
                        if (z6) {
                            fP2 += c(r()) ? p() : this.o;
                        }
                        ViewGroup.LayoutParams layoutParams4 = childAt2.getLayoutParams();
                        layoutParams4.getClass();
                        ro1 ro1Var4 = (ro1) layoutParams4;
                        int i11 = ro1Var4.a & 1879048304;
                        if (i11 == 16) {
                            measuredHeight = (((al6Var2.d - childAt2.getMeasuredHeight()) + ((ViewGroup.MarginLayoutParams) ro1Var4).topMargin) - ((ViewGroup.MarginLayoutParams) ro1Var4).bottomMargin) / 2;
                        } else if (i11 != 80) {
                            measuredHeight = ro1Var4.b ? Math.max(al6Var2.e - childAt2.getBaseline(), ((ViewGroup.MarginLayoutParams) ro1Var4).topMargin) : ((ViewGroup.MarginLayoutParams) ro1Var4).topMargin;
                        } else {
                            measuredHeight = (al6Var2.d - childAt2.getMeasuredHeight()) - ((ViewGroup.MarginLayoutParams) ro1Var4).bottomMargin;
                        }
                        int i12 = measuredHeight + iN3;
                        childAt2.layout(defpackage.w65.b(fP2), i12, childAt2.getMeasuredWidth() + defpackage.w65.b(fP2), childAt2.getMeasuredHeight() + i12);
                        measuredWidth2 = childAt2.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) ro1Var3).rightMargin + al6Var2.k + fP2;
                        z6 = true;
                    } else if (c(childAt2)) {
                        childAt2.layout(0, 0, 0, 0);
                    }
                    if (i8 != i9) {
                        i8 += i10;
                    }
                }
            }
            iN3 += al6Var2.d;
            al6Var2.g = defpackage.w65.b(measuredWidth2);
            al6Var2.h = iN3;
        }
    }

    /* JADX WARN: Code duplicated, block: B:130:0x0353  */
    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        int mode;
        int size;
        int iMakeMeasureSpec;
        int paddingTop;
        int paddingBottom;
        int iT;
        int iL;
        int i3;
        int iB;
        int iP;
        int iP2;
        int i4;
        int iP3;
        int i5;
        this.i.clear();
        int i6 = 0;
        this.j = 0;
        int mode2 = View.MeasureSpec.getMode(i);
        int size2 = View.MeasureSpec.getSize(i);
        float f = 0.0f;
        if (j() != 0.0f && mode2 == 1073741824) {
            size = defpackage.w65.b(size2 / j());
            iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(size, 1073741824);
            mode = 1073741824;
        } else {
            mode = View.MeasureSpec.getMode(i2);
            size = View.MeasureSpec.getSize(i2);
            iMakeMeasureSpec = i2;
        }
        this.x = (a(q()) ? n() : 0) + (b(q()) ? n() : 0);
        int i7 = this.h ? i : iMakeMeasureSpec;
        int mode3 = View.MeasureSpec.getMode(i7);
        int size3 = View.MeasureSpec.getSize(i7);
        int iP4 = (a(r()) ? p() : 0) + s();
        if (this.h) {
            paddingTop = getPaddingLeft();
            paddingBottom = getPaddingRight();
        } else {
            paddingTop = getPaddingTop();
            paddingBottom = getPaddingBottom();
        }
        int i8 = iP4 + paddingBottom + paddingTop;
        al6 al6Var = new al6(i8, 5);
        Iterator<View> it = ViewGroupKt.getChildren(this).iterator();
        int i9 = Integer.MIN_VALUE;
        while (true) {
            float f2 = f;
            if (!it.hasNext()) {
                int i10 = size;
                int i11 = mode;
                boolean z2 = this.h;
                int i12 = this.a;
                if (z2) {
                    a(iMakeMeasureSpec, 1879048304 & i12, getPaddingBottom() + getPaddingTop());
                } else {
                    a(i, 125829127 & i12, getPaddingRight() + getPaddingLeft());
                }
                if (this.h) {
                    iT = l();
                } else {
                    iT = t() + getPaddingRight() + getPaddingLeft();
                }
                if (this.h) {
                    iL = getPaddingBottom() + getPaddingTop() + t();
                } else {
                    iL = l();
                }
                int iCombineMeasuredStates = this.j;
                if (mode2 != 0 && size2 < iT) {
                    iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, 16777216);
                }
                this.j = iCombineMeasuredStates;
                int iResolveSizeAndState = View.resolveSizeAndState(a(mode2, size2, iT, !this.h), i, this.j);
                if (!this.h || j() == f2) {
                    i3 = i11;
                    iB = i10;
                } else {
                    i3 = 1073741824;
                    if (mode2 != 1073741824) {
                        iB = defpackage.w65.b((16777215 & iResolveSizeAndState) / j());
                        iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(iB, 1073741824);
                    } else {
                        i3 = i11;
                        iB = i10;
                    }
                }
                int iCombineMeasuredStates2 = this.j;
                if (i3 != 0 && iB < iL) {
                    iCombineMeasuredStates2 = View.combineMeasuredStates(iCombineMeasuredStates2, 256);
                }
                this.j = iCombineMeasuredStates2;
                setMeasuredDimension(iResolveSizeAndState, View.resolveSizeAndState(a(i3, iB, iL, this.h), iMakeMeasureSpec, this.j));
                return;
            }
            View next = it.next();
            int i13 = i6 + 1;
            if (i6 < 0) {
                u96.o();
                throw null;
            }
            View view = next;
            if (d(view)) {
                al6Var.i++;
                al6Var.c++;
                if (i6 == getChildCount() - 1 && al6Var.c - al6Var.i != 0) {
                    this.i.add(al6Var);
                    int i14 = al6Var.e;
                    if (i14 > 0) {
                        al6Var.d = Math.max(al6Var.d, i14 + al6Var.f);
                    }
                    this.x += al6Var.d;
                }
                i4 = mode3;
            } else {
                ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
                layoutParams.getClass();
                ro1 ro1Var = (ro1) layoutParams;
                int paddingRight = ((ViewGroup.MarginLayoutParams) ro1Var).leftMargin + ((ViewGroup.MarginLayoutParams) ro1Var).rightMargin + getPaddingRight() + getPaddingLeft();
                int paddingBottom2 = ((ViewGroup.MarginLayoutParams) ro1Var).topMargin + ((ViewGroup.MarginLayoutParams) ro1Var).bottomMargin + getPaddingBottom() + getPaddingTop();
                if (this.h) {
                    iP = (a(r()) ? p() : 0) + s() + paddingRight;
                    iP2 = paddingBottom2 + this.x;
                } else {
                    iP = paddingRight + this.x;
                    iP2 = (a(r()) ? p() : 0) + s() + paddingBottom2;
                }
                int i15 = iP;
                i4 = mode3;
                view.measure(wh2.a(i, i15, ((ViewGroup.MarginLayoutParams) ro1Var).width, view.getMinimumWidth(), ro1Var.h), wh2.a(iMakeMeasureSpec, iP2, ((ViewGroup.MarginLayoutParams) ro1Var).height, view.getMinimumHeight(), ro1Var.g));
                this.j = View.combineMeasuredStates(this.j, view.getMeasuredState());
                int measuredWidth = ((ViewGroup.MarginLayoutParams) ro1Var).leftMargin + ((ViewGroup.MarginLayoutParams) ro1Var).rightMargin + view.getMeasuredWidth();
                int measuredHeight = ((ViewGroup.MarginLayoutParams) ro1Var).topMargin + ((ViewGroup.MarginLayoutParams) ro1Var).bottomMargin + view.getMeasuredHeight();
                if (!this.h) {
                    measuredHeight = measuredWidth;
                    measuredWidth = measuredHeight;
                }
                int i16 = al6Var.b;
                if (al6Var.c != 0) {
                    iP3 = c(r()) ? p() : this.o;
                } else {
                    iP3 = 0;
                }
                int i17 = i16 + measuredWidth + iP3;
                if (i4 == 0 || size3 >= i17) {
                    if (al6Var.c > 0) {
                        al6Var.b = (c(r()) ? p() : this.o) + al6Var.b;
                    }
                    al6Var.c++;
                    i5 = i9;
                } else {
                    if (al6Var.c - al6Var.i > 0) {
                        this.i.add(al6Var);
                        int i18 = al6Var.e;
                        if (i18 > 0) {
                            al6Var.d = Math.max(al6Var.d, i18 + al6Var.f);
                        }
                        this.x += al6Var.d;
                    }
                    al6Var = new al6(i6, i8, 1);
                    i5 = Integer.MIN_VALUE;
                }
                if (this.h && ro1Var.b) {
                    al6Var.e = Math.max(al6Var.e, view.getBaseline() + ((ViewGroup.MarginLayoutParams) ro1Var).topMargin);
                    al6Var.f = Math.max(al6Var.f, (view.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) ro1Var).bottomMargin) - view.getBaseline());
                }
                al6Var.b += measuredWidth;
                int iMax = Math.max(i5, measuredHeight);
                al6Var.d = Math.max(al6Var.d, iMax);
                if (i6 == getChildCount() - 1 && al6Var.c - al6Var.i != 0) {
                    this.i.add(al6Var);
                    int i19 = al6Var.e;
                    if (i19 > 0) {
                        al6Var.d = Math.max(al6Var.d, i19 + al6Var.f);
                    }
                    this.x += al6Var.d;
                }
                i9 = iMax;
            }
            f = f2;
            i6 = i13;
            mode = mode;
            size = size;
            mode3 = i4;
            it = it;
        }
    }

    public final int p() {
        int intrinsicHeight;
        int i;
        if (this.h) {
            Drawable drawableO = o();
            intrinsicHeight = (drawableO != null ? drawableO.getIntrinsicWidth() : 0) + this.m;
            i = this.n;
        } else {
            Drawable drawableO2 = o();
            intrinsicHeight = (drawableO2 != null ? drawableO2.getIntrinsicHeight() : 0) + this.k;
            i = this.l;
        }
        return intrinsicHeight + i;
    }

    public final int q() {
        hp0 hp0Var = this.e;
        defpackage.ze4 ze4Var = z[1];
        hp0Var.getClass();
        return ((Number) hp0Var.a).intValue();
    }

    public final int r() {
        hp0 hp0Var = this.d;
        defpackage.ze4 ze4Var = z[0];
        hp0Var.getClass();
        return ((Number) hp0Var.a).intValue();
    }

    public final int s() {
        if (b(r())) {
            return p();
        }
        return 0;
    }

    @Override // yads.wj
    public void setAspectRatio(float f) {
        this.y.setValue(this, z[4], Float.valueOf(f));
    }

    public final void setItemSpacing(int i) {
        if (this.o != i) {
            this.o = i;
            requestLayout();
        }
    }

    public final void setLineSeparatorDrawable(Drawable drawable) {
        this.g.setValue(this, z[3], drawable);
    }

    public final void setLineSeparatorMargins(int i, int i2, int i3, int i4) {
        this.s = i;
        this.t = i3;
        this.q = i2;
        this.r = i4;
        requestLayout();
    }

    public final void setLineSpacing(int i) {
        if (this.p != i) {
            this.p = i;
            requestLayout();
        }
    }

    public final void setSeparatorDrawable(Drawable drawable) {
        this.f.setValue(this, z[2], drawable);
    }

    public final void setSeparatorMargins(int i, int i2, int i3, int i4) {
        this.m = i;
        this.n = i3;
        this.k = i2;
        this.l = i4;
        requestLayout();
    }

    public final void setShowLineSeparators(int i) {
        this.e.setValue(this, z[1], Integer.valueOf(i));
    }

    public final void setShowSeparators(int i) {
        this.d.setValue(this, z[0], Integer.valueOf(i));
    }

    public final void setWrapDirection(int i) {
        if (this.c != i) {
            this.c = i;
            boolean z2 = true;
            if (i != 0) {
                if (i != 1) {
                    defpackage.ah.f(defpackage.jh.b(i, "Invalid value for the wrap direction is set: "));
                    return;
                }
                z2 = false;
            }
            this.h = z2;
            requestLayout();
        }
    }

    public final int t() {
        Iterator it = this.i.iterator();
        int i = 0;
        while (it.hasNext()) {
            i += ((al6) it.next()).d;
        }
        return ((u() - 1) * (c(q()) ? n() : this.p)) + (a(q()) ? n() : 0) + (b(q()) ? n() : 0) + i;
    }

    public final int u() {
        ArrayList<al6> arrayList = this.i;
        int i = 0;
        if (arrayList != null && arrayList.isEmpty()) {
            return 0;
        }
        for (al6 al6Var : arrayList) {
            if (al6Var.c - al6Var.i > 0 && (i = i + 1) < 0) {
                u96.n();
                throw null;
            }
        }
        return i;
    }

    public static boolean b(int i) {
        return (i & 1) != 0;
    }

    public static boolean c(int i) {
        return (i & 2) != 0;
    }

    public static boolean a(int i) {
        return (i & 4) != 0;
    }

    public final int a(int i, int i2, int i3, boolean z2) {
        if (i == Integer.MIN_VALUE) {
            if (z2) {
                return Math.min(i2, i3);
            }
            return (i3 <= i2 && u() <= 1) ? i3 : i2;
        }
        if (i != 0) {
            if (i != 1073741824) {
                defpackage.ah.f(defpackage.jh.b(i, "Unknown size mode is set: "));
                return 0;
            }
        }
    }

    public final void a(Canvas canvas, int i, int i2, int i3, int i4) {
        a(m(), canvas, i + this.s, i2 - this.q, i3 - this.t, i4 + this.r);
    }

    public static void a(Drawable drawable, Canvas canvas, int i, int i2, int i3, int i4) {
        if (drawable != null) {
            float f = (i + i3) / 2.0f;
            float f2 = (i2 + i4) / 2.0f;
            float intrinsicWidth = drawable.getIntrinsicWidth() / 2.0f;
            float intrinsicHeight = drawable.getIntrinsicHeight() / 2.0f;
            drawable.setBounds((int) (f - intrinsicWidth), (int) (f2 - intrinsicHeight), (int) (f + intrinsicWidth), (int) (f2 + intrinsicHeight));
            drawable.draw(canvas);
            j59 j59Var = j59.a;
        }
    }
}
