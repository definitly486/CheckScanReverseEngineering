package yads;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.ViewGroupKt;
import com.tapjoy.TJAdUnitConstants;
import defpackage.j59;
import defpackage.u96;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;

/* JADX INFO: loaded from: classes6.dex */
public class gt3 extends yh2 implements wj {
    public static final /* synthetic */ defpackage.ze4[] B = {mo.a(gt3.class, TJAdUnitConstants.String.ORIENTATION, "getOrientation()I", 0), mo.a(gt3.class, "aspectRatio", "getAspectRatio()F", 0), mo.a(gt3.class, "showDividers", "getShowDividers()I", 0)};
    public float A;
    public int c;
    public int d;
    public final hp0 e;
    public int f;
    public int g;
    public int h;
    public int i;
    public final hp0 j;
    public int k;
    public int l;
    public int m;
    public int n;
    public int o;
    public int p;
    public int q;
    public final xh2 r;
    public int s;
    public int t;
    public Drawable u;
    public final hp0 v;
    public final ArrayList w;
    public final LinkedHashSet x;
    public int y;
    public final LinkedHashSet z;

    public gt3(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.c = -1;
        this.d = -1;
        this.e = nh6.a((Object) 0);
        this.j = vj.a();
        this.r = new xh2();
        this.s = -1;
        this.t = -1;
        this.v = nh6.a((Object) 0);
        this.w = new ArrayList();
        this.x = new LinkedHashSet();
        this.z = new LinkedHashSet();
    }

    /* JADX WARN: Code duplicated, block: B:65:? A[RETURN, SYNTHETIC] */
    public final void a(int i, int i2, int i3, int i4) {
        int i5 = i2 - this.f;
        ArrayList arrayList = this.w;
        if (arrayList == null || !arrayList.isEmpty()) {
            Iterator it = arrayList.iterator();
            while (true) {
                if (it.hasNext()) {
                    ViewGroup.LayoutParams layoutParams = ((View) it.next()).getLayoutParams();
                    layoutParams.getClass();
                    if (((ro1) layoutParams).g != Integer.MAX_VALUE) {
                    }
                } else if (!b(i5, i3)) {
                    return;
                }
            }
        } else if (!b(i5, i3)) {
            return;
        }
        this.f = 0;
        int iA = a(i5, i3);
        ArrayList<View> arrayList2 = this.w;
        if (iA >= 0) {
            for (View view : arrayList2) {
                ViewGroup.LayoutParams layoutParams2 = view.getLayoutParams();
                layoutParams2.getClass();
                if (((ro1) layoutParams2).g != Integer.MAX_VALUE) {
                    int i6 = this.y;
                    int measuredHeight = view.getMeasuredHeight();
                    ViewGroup.LayoutParams layoutParams3 = view.getLayoutParams();
                    layoutParams3.getClass();
                    a(view, i, i6, Math.min(measuredHeight, ((ro1) layoutParams3).g));
                }
            }
        } else {
            if (arrayList2.size() > 1) {
                defpackage.nn1.J(new et3(), arrayList2);
            }
            for (View view2 : this.w) {
                ViewGroup.LayoutParams layoutParams4 = view2.getLayoutParams();
                layoutParams4.getClass();
                ro1 ro1Var = (ro1) layoutParams4;
                int measuredHeight2 = view2.getMeasuredHeight();
                int i7 = ((ViewGroup.MarginLayoutParams) ro1Var).topMargin + ((ViewGroup.MarginLayoutParams) ro1Var).bottomMargin + measuredHeight2;
                int iB = defpackage.w65.b((i7 / this.g) * iA) + measuredHeight2;
                int minimumHeight = view2.getMinimumHeight();
                if (iB < minimumHeight) {
                    iB = minimumHeight;
                }
                int i8 = ro1Var.g;
                if (iB > i8) {
                    iB = i8;
                }
                a(view2, i, this.y, iB);
                this.i = View.combineMeasuredStates(this.i, view2.getMeasuredState() & 16777216);
                this.g -= i7;
                iA -= view2.getMeasuredHeight() - measuredHeight2;
            }
        }
        int iA2 = a(i5, i3);
        float fA = this.A;
        int i9 = this.y;
        this.y = 0;
        int childCount = getChildCount();
        int i10 = iA2;
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = getChildAt(i11);
            if (childAt.getVisibility() != 8) {
                ViewGroup.LayoutParams layoutParams5 = childAt.getLayoutParams();
                layoutParams5.getClass();
                ro1 ro1Var2 = (ro1) layoutParams5;
                int i12 = ((ViewGroup.MarginLayoutParams) ro1Var2).height;
                if (i12 == -1) {
                    if (iA2 > 0) {
                        int iA3 = (int) ((a(i12, ro1Var2.c) * i10) / fA);
                        fA -= a(((ViewGroup.MarginLayoutParams) ro1Var2).height, ro1Var2.c);
                        i10 -= iA3;
                        a(childAt, i, i9, iA3);
                    } else if (this.x.contains(childAt)) {
                        a(childAt, i, i9, Math.max(childAt.getMinimumHeight(), 0));
                    }
                }
                c(i, ((ViewGroup.MarginLayoutParams) ro1Var2).leftMargin + ((ViewGroup.MarginLayoutParams) ro1Var2).rightMargin + childAt.getMeasuredWidth());
                int i13 = this.f;
                this.f = Math.max(i13, ((ViewGroup.MarginLayoutParams) ro1Var2).topMargin + ((ViewGroup.MarginLayoutParams) ro1Var2).bottomMargin + childAt.getMeasuredHeight() + i13);
            }
        }
        this.y = Math.max(i4, getPaddingRight() + getPaddingLeft() + this.y);
        this.f = getPaddingBottom() + getPaddingTop() + this.f;
    }

    public final boolean b(int i) {
        if (i == this.s) {
            hp0 hp0Var = this.v;
            defpackage.ze4 ze4Var = B[2];
            hp0Var.getClass();
            if ((((Number) hp0Var.a).intValue() & 1) == 0) {
                return false;
            }
        } else {
            int i2 = this.t;
            hp0 hp0Var2 = this.v;
            if (i <= i2) {
                defpackage.ze4 ze4Var2 = B[2];
                hp0Var2.getClass();
                if ((((Number) hp0Var2.a).intValue() & 2) == 0) {
                    return false;
                }
                for (int i3 = i - 1; -1 < i3; i3--) {
                    if (getChildAt(i).getVisibility() != 8) {
                        return true;
                    }
                }
                return false;
            }
            defpackage.ze4 ze4Var3 = B[2];
            hp0Var2.getClass();
            if ((((Number) hp0Var2.a).intValue() & 4) == 0) {
                return false;
            }
        }
        return true;
    }

    public final void c(int i, int i2) {
        if (nh6.a(i)) {
            return;
        }
        this.y = Math.max(this.y, i2);
    }

    @Override // yads.yh2, android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return k() ? new ro1(-1, -2) : new ro1(-2, -2);
    }

    @Override // android.view.View
    public final int getBaseline() {
        if (!k()) {
            int i = this.c;
            return i != -1 ? getPaddingTop() + i : super.getBaseline();
        }
        View childAt = getChildAt(0);
        if (childAt == null) {
            return super.getBaseline();
        }
        int baseline = childAt.getBaseline();
        ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
        layoutParams.getClass();
        return getPaddingTop() + baseline + ((ViewGroup.MarginLayoutParams) ((ro1) layoutParams)).topMargin;
    }

    public final float j() {
        hp0 hp0Var = this.j;
        defpackage.ze4 ze4Var = B[1];
        hp0Var.getClass();
        return ((Number) hp0Var.a).floatValue();
    }

    public final boolean k() {
        hp0 hp0Var = this.e;
        defpackage.ze4 ze4Var = B[0];
        hp0Var.getClass();
        return ((Number) hp0Var.a).intValue() == 1;
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        int paddingLeft;
        int i;
        int width;
        int i2;
        int i3;
        int i4;
        int height;
        if (this.u == null) {
            return;
        }
        if (k()) {
            int childCount = getChildCount();
            int i5 = 0;
            while (i5 < childCount) {
                View childAt = getChildAt(i5);
                if (childAt.getVisibility() != 8 && b(i5)) {
                    int top = childAt.getTop();
                    ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
                    layoutParams.getClass();
                    int i6 = ((top - ((ViewGroup.MarginLayoutParams) ((ro1) layoutParams)).topMargin) - this.l) - this.n;
                    int i7 = this.s;
                    xh2 xh2Var = this.r;
                    int i8 = i6 - (i5 == i7 ? xh2Var.c : (int) (xh2Var.b / 2.0f));
                    a(canvas, this.o + getPaddingLeft(), i8, (getWidth() - getPaddingRight()) - this.p, i8 + this.l);
                }
                i5++;
            }
            if (b(getChildCount())) {
                View childAt2 = getChildAt(getChildCount() - 1);
                if (childAt2 != null) {
                    int bottom = childAt2.getBottom();
                    ViewGroup.LayoutParams layoutParams2 = childAt2.getLayoutParams();
                    layoutParams2.getClass();
                    height = bottom + ((ViewGroup.MarginLayoutParams) ((ro1) layoutParams2)).bottomMargin + this.m + this.r.c;
                } else {
                    height = (((getHeight() - getPaddingBottom()) - this.l) - this.n) - this.r.c;
                }
                int i9 = height;
                a(canvas, this.o + getPaddingLeft(), i9, (getWidth() - getPaddingRight()) - this.p, i9 + this.l);
                return;
            }
            return;
        }
        boolean zB = oh6.b(this);
        int childCount2 = getChildCount();
        int i10 = 0;
        while (i10 < childCount2) {
            View childAt3 = getChildAt(i10);
            if (childAt3.getVisibility() != 8 && b(i10)) {
                int i11 = this.s;
                xh2 xh2Var2 = this.r;
                int i12 = i10 == i11 ? xh2Var2.c : (int) (xh2Var2.b / 2.0f);
                if (zB) {
                    int right = childAt3.getRight();
                    ViewGroup.LayoutParams layoutParams3 = childAt3.getLayoutParams();
                    layoutParams3.getClass();
                    i4 = right + ((ViewGroup.MarginLayoutParams) ((ro1) layoutParams3)).rightMargin + this.o + i12;
                } else {
                    int left = childAt3.getLeft();
                    ViewGroup.LayoutParams layoutParams4 = childAt3.getLayoutParams();
                    layoutParams4.getClass();
                    i4 = (((left - ((ViewGroup.MarginLayoutParams) ((ro1) layoutParams4)).leftMargin) - this.k) - this.p) - i12;
                }
                int i13 = i4;
                a(canvas, i13, this.m + getPaddingTop(), i13 + this.k, (getHeight() - getPaddingBottom()) - this.n);
            }
            i10++;
        }
        if (b(getChildCount())) {
            View childAt4 = getChildAt(getChildCount() - 1);
            if (childAt4 != null || !zB) {
                if (childAt4 == null) {
                    width = ((getWidth() - getPaddingRight()) - this.k) - this.p;
                    i2 = this.r.c;
                } else if (zB) {
                    int left2 = childAt4.getLeft();
                    ViewGroup.LayoutParams layoutParams5 = childAt4.getLayoutParams();
                    layoutParams5.getClass();
                    width = ((left2 - ((ViewGroup.MarginLayoutParams) ((ro1) layoutParams5)).leftMargin) - this.k) - this.p;
                    i2 = this.r.c;
                } else {
                    int right2 = childAt4.getRight();
                    ViewGroup.LayoutParams layoutParams6 = childAt4.getLayoutParams();
                    layoutParams6.getClass();
                    paddingLeft = this.o + right2 + ((ViewGroup.MarginLayoutParams) ((ro1) layoutParams6)).rightMargin;
                    i = this.r.c;
                }
                i3 = width - i2;
                int i14 = i3;
                a(canvas, i14, this.m + getPaddingTop(), i14 + this.k, (getHeight() - getPaddingBottom()) - this.n);
            }
            paddingLeft = getPaddingLeft() + this.o;
            i = this.r.c;
            i3 = paddingLeft + i;
            int i15 = i3;
            a(canvas, i15, this.m + getPaddingTop(), i15 + this.k, (getHeight() - getPaddingBottom()) - this.n);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        int baseline;
        if (k()) {
            int paddingRight = (i3 - i) - (getPaddingRight() + getPaddingLeft());
            float f = (i4 - i2) - this.f;
            float paddingTop = getPaddingTop();
            xh2 xh2Var = this.r;
            int i7 = this.a & 1879048304;
            Iterator<View> it = ViewGroupKt.getChildren(this).iterator();
            int i8 = 0;
            while (it.hasNext()) {
                if (it.next().getVisibility() != 8 && (i8 = i8 + 1) < 0) {
                    u96.n();
                    throw null;
                }
            }
            xh2Var.a(i7, f, i8);
            float f2 = paddingTop + this.r.a;
            int childCount = getChildCount();
            for (int i9 = 0; i9 < childCount; i9++) {
                View childAt = getChildAt(i9);
                if (childAt.getVisibility() != 8) {
                    int measuredWidth = childAt.getMeasuredWidth();
                    int measuredHeight = childAt.getMeasuredHeight();
                    ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
                    layoutParams.getClass();
                    ro1 ro1Var = (ro1) layoutParams;
                    int i10 = ro1Var.a & 125829127;
                    if (i10 < 0) {
                        i10 = this.a & 125829127;
                    }
                    int layoutDirection = getLayoutDirection();
                    int paddingLeft = getPaddingLeft();
                    int absoluteGravity = GravityCompat.getAbsoluteGravity(i10, layoutDirection);
                    int i11 = absoluteGravity != 1 ? (absoluteGravity == 3 || absoluteGravity != 5) ? ((ViewGroup.MarginLayoutParams) ro1Var).leftMargin : (paddingRight - measuredWidth) - ((ViewGroup.MarginLayoutParams) ro1Var).rightMargin : (((paddingRight - measuredWidth) + ((ViewGroup.MarginLayoutParams) ro1Var).leftMargin) - ((ViewGroup.MarginLayoutParams) ro1Var).rightMargin) / 2;
                    int i12 = paddingLeft + i11;
                    float fA = f2 + a(i9) + ((ViewGroup.MarginLayoutParams) ro1Var).topMargin;
                    int iB = defpackage.w65.b(fA);
                    childAt.layout(i12, iB, measuredWidth + i12, iB + measuredHeight);
                    f2 = measuredHeight + ((ViewGroup.MarginLayoutParams) ro1Var).bottomMargin + this.r.b + fA;
                }
            }
            return;
        }
        int paddingBottom = (i4 - i2) - (getPaddingBottom() + getPaddingTop());
        int layoutDirection2 = getLayoutDirection();
        float f3 = (i3 - i) - this.f;
        float paddingLeft2 = getPaddingLeft();
        int absoluteGravity2 = GravityCompat.getAbsoluteGravity(this.a & 125829127, layoutDirection2);
        xh2 xh2Var2 = this.r;
        Iterator<View> it2 = ViewGroupKt.getChildren(this).iterator();
        int i13 = 0;
        while (it2.hasNext()) {
            if (it2.next().getVisibility() != 8 && (i13 = i13 + 1) < 0) {
                u96.n();
                throw null;
            }
        }
        xh2Var2.a(absoluteGravity2, f3, i13);
        float f4 = paddingLeft2 + this.r.a;
        defpackage.w74 w74VarA = oh6.a(this, 0, getChildCount());
        int i14 = w74VarA.b;
        int i15 = w74VarA.c;
        int i16 = w74VarA.d;
        if ((i16 <= 0 || i14 > i15) && (i16 >= 0 || i15 > i14)) {
            return;
        }
        while (true) {
            View childAt2 = getChildAt(i14);
            if (childAt2 != null && childAt2.getVisibility() != 8) {
                int measuredWidth2 = childAt2.getMeasuredWidth();
                int measuredHeight2 = childAt2.getMeasuredHeight();
                ViewGroup.LayoutParams layoutParams2 = childAt2.getLayoutParams();
                layoutParams2.getClass();
                ro1 ro1Var2 = (ro1) layoutParams2;
                int i17 = ro1Var2.a & 1879048304;
                if (i17 < 0) {
                    i17 = this.a & 1879048304;
                }
                int paddingTop2 = getPaddingTop();
                if (i17 == 16) {
                    i5 = (((paddingBottom - measuredHeight2) + ((ViewGroup.MarginLayoutParams) ro1Var2).topMargin) - ((ViewGroup.MarginLayoutParams) ro1Var2).bottomMargin) / 2;
                } else if (i17 != 48) {
                    if (i17 != 80) {
                        i5 = 0;
                    } else {
                        i6 = paddingBottom - measuredHeight2;
                        baseline = ((ViewGroup.MarginLayoutParams) ro1Var2).bottomMargin;
                        i5 = i6 - baseline;
                    }
                } else if (!ro1Var2.b || ((ViewGroup.MarginLayoutParams) ro1Var2).height == -1 || childAt2.getBaseline() == -1) {
                    i5 = ((ViewGroup.MarginLayoutParams) ro1Var2).topMargin;
                } else {
                    i6 = this.c;
                    baseline = childAt2.getBaseline();
                    i5 = i6 - baseline;
                }
                int i18 = paddingTop2 + i5;
                float fA2 = f4 + a(oh6.b(this) ? i14 + 1 : i14) + ((ViewGroup.MarginLayoutParams) ro1Var2).leftMargin;
                int iB2 = defpackage.w65.b(fA2);
                childAt2.layout(iB2, i18, iB2 + measuredWidth2, measuredHeight2 + i18);
                f4 = measuredWidth2 + ((ViewGroup.MarginLayoutParams) ro1Var2).rightMargin + this.r.b + fA2;
            }
            if (i14 == i15) {
                return;
            } else {
                i14 += i16;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:131:0x0337  */
    /* JADX WARN: Code duplicated, block: B:186:0x050e  */
    /* JADX WARN: Code duplicated, block: B:189:0x0518  */
    /* JADX WARN: Code duplicated, block: B:192:0x0542  */
    /* JADX WARN: Code duplicated, block: B:194:0x0549  */
    /* JADX WARN: Code duplicated, block: B:198:0x055d  */
    /* JADX WARN: Code duplicated, block: B:200:0x0588  */
    /* JADX WARN: Code duplicated, block: B:203:0x058d  */
    /* JADX WARN: Code duplicated, block: B:207:0x05c4  */
    /* JADX WARN: Code duplicated, block: B:209:0x05d0  */
    /* JADX WARN: Code duplicated, block: B:211:0x05dd A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:212:0x05df  */
    /* JADX WARN: Code duplicated, block: B:213:0x05f6 A[PHI: r6 r8
      0x05f6: PHI (r6v19 float) = (r6v17 float), (r6v21 float) binds: [B:210:0x05db, B:212:0x05df] A[DONT_GENERATE, DONT_INLINE]
      0x05f6: PHI (r8v21 int) = (r8v19 int), (r8v23 int) binds: [B:210:0x05db, B:212:0x05df] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:214:0x05f8  */
    /* JADX WARN: Code duplicated, block: B:298:0x052b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:300:0x0512 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:304:0x0655 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:309:0x058e A[SYNTHETIC] */
    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        int i3;
        int i4;
        int i5;
        int iA;
        ArrayList<View> arrayList;
        int iB;
        int minimumWidth;
        int i6;
        int iA2;
        int childCount;
        int i7;
        float fA;
        int i8;
        View childAt;
        ro1 ro1Var;
        int i9;
        ro1 ro1Var2;
        int baseline;
        ViewGroup.LayoutParams layoutParams;
        int i10;
        int i11;
        int baseline2;
        int i12;
        float f;
        gt3 gt3Var = this;
        gt3Var.f = 0;
        gt3Var.y = 0;
        gt3Var.g = 0;
        gt3Var.h = 0;
        float f2 = 0.0f;
        gt3Var.A = 0.0f;
        gt3Var.i = 0;
        Iterator<View> it = ViewGroupKt.getChildren(gt3Var).iterator();
        int i13 = 0;
        while (true) {
            i3 = 8;
            i4 = -1;
            if (!it.hasNext()) {
                i13 = -1;
                break;
            }
            View next = it.next();
            if (i13 < 0) {
                u96.o();
                throw null;
            }
            if (next.getVisibility() != 8) {
                break;
            } else {
                i13++;
            }
        }
        gt3Var.s = i13;
        int i14 = 0;
        int i15 = -1;
        for (View view : ViewGroupKt.getChildren(gt3Var)) {
            if (i14 < 0) {
                u96.o();
                throw null;
            }
            if (view.getVisibility() != 8) {
                i15 = i14;
            }
            i14++;
        }
        gt3Var.t = i15;
        boolean zK = gt3Var.k();
        int i16 = ViewCompat.MEASURED_SIZE_MASK;
        if (zK) {
            int size = View.MeasureSpec.getSize(i);
            boolean z = View.MeasureSpec.getMode(i) == 1073741824;
            int iMakeMeasureSpec = gt3Var.j() == 0.0f ? i2 : z ? View.MeasureSpec.makeMeasureSpec(defpackage.w65.b(size / gt3Var.j()), 1073741824) : View.MeasureSpec.makeMeasureSpec(0, 1073741824);
            if (!z) {
                size = Math.max(gt3Var.getSuggestedMinimumWidth(), gt3Var.getPaddingRight() + gt3Var.getPaddingLeft());
            }
            int i17 = size < 0 ? 0 : size;
            int childCount2 = gt3Var.getChildCount();
            int i18 = 0;
            while (i18 < childCount2) {
                View childAt2 = gt3Var.getChildAt(i18);
                if (childAt2.getVisibility() != 8) {
                    gt3Var.f = gt3Var.a(i18) + gt3Var.f;
                    float f3 = gt3Var.A;
                    ViewGroup.LayoutParams layoutParams2 = childAt2.getLayoutParams();
                    layoutParams2.getClass();
                    ro1 ro1Var3 = (ro1) layoutParams2;
                    f = f2;
                    gt3Var.A = a(((ViewGroup.MarginLayoutParams) ro1Var3).height, ro1Var3.c) + f3;
                    ViewGroup.LayoutParams layoutParams3 = childAt2.getLayoutParams();
                    layoutParams3.getClass();
                    ro1 ro1Var4 = (ro1) layoutParams3;
                    boolean zA = nh6.a(i);
                    ViewGroup.LayoutParams layoutParams4 = childAt2.getLayoutParams();
                    layoutParams4.getClass();
                    boolean z2 = (((ViewGroup.MarginLayoutParams) ((ro1) layoutParams4)).height == -1 && nh6.a(iMakeMeasureSpec)) ? false : true;
                    if (zA ? z2 : ((ViewGroup.MarginLayoutParams) ro1Var4).width != -1) {
                        i12 = i18;
                        gt3Var.a(childAt2, i, iMakeMeasureSpec, true, true);
                    } else {
                        i12 = i18;
                        if (!zA) {
                            gt3Var.z.add(childAt2);
                        }
                        if (!z2) {
                            gt3Var.x.add(childAt2);
                            int i19 = gt3Var.f;
                            ViewGroup.LayoutParams layoutParams5 = childAt2.getLayoutParams();
                            layoutParams5.getClass();
                            ro1 ro1Var5 = (ro1) layoutParams5;
                            gt3Var.f = Math.max(i19, ((ViewGroup.MarginLayoutParams) ro1Var5).topMargin + ((ViewGroup.MarginLayoutParams) ro1Var5).bottomMargin + i19);
                        }
                    }
                } else {
                    i12 = i18;
                    f = f2;
                }
                i18 = i12 + 1;
                f2 = f;
            }
            float f4 = f2;
            if (!nh6.a(i)) {
                int i20 = gt3Var.y;
                LinkedHashSet<View> linkedHashSet = gt3Var.z;
                if (i20 != 0) {
                    for (View view2 : linkedHashSet) {
                        int i21 = gt3Var.y;
                        int minimumWidth2 = view2.getMinimumWidth();
                        ViewGroup.LayoutParams layoutParams6 = view2.getLayoutParams();
                        layoutParams6.getClass();
                        ro1 ro1Var6 = (ro1) layoutParams6;
                        gt3Var.y = Math.max(i21, ((ViewGroup.MarginLayoutParams) ro1Var6).leftMargin + ((ViewGroup.MarginLayoutParams) ro1Var6).rightMargin + minimumWidth2);
                    }
                } else {
                    for (View view3 : linkedHashSet) {
                        gt3Var.a(view3, i, iMakeMeasureSpec, true, false);
                        gt3Var.x.remove(view3);
                    }
                }
            }
            for (View view4 : gt3Var.z) {
                ViewGroup.LayoutParams layoutParams7 = view4.getLayoutParams();
                layoutParams7.getClass();
                if (((ViewGroup.MarginLayoutParams) ((ro1) layoutParams7)).height != -1 || !nh6.a(iMakeMeasureSpec)) {
                    gt3Var.a(view4, View.MeasureSpec.makeMeasureSpec(gt3Var.getPaddingRight() + gt3Var.getPaddingLeft() + gt3Var.y, 1073741824), iMakeMeasureSpec, false, true);
                    gt3Var.x.remove(view4);
                }
            }
            if (gt3Var.f > 0 && gt3Var.b(gt3Var.getChildCount())) {
                gt3Var.f = gt3Var.l + gt3Var.m + gt3Var.n + gt3Var.f;
            }
            gt3Var.f = gt3Var.getPaddingBottom() + gt3Var.getPaddingTop() + gt3Var.f;
            gt3Var.y = Math.max(i17, gt3Var.getPaddingRight() + gt3Var.getPaddingLeft() + gt3Var.y);
            int size2 = View.MeasureSpec.getSize(iMakeMeasureSpec);
            if (gt3Var.j() != f4 && !z) {
                size2 = defpackage.w65.b((View.resolveSizeAndState(gt3Var.y, i, gt3Var.i) & ViewCompat.MEASURED_SIZE_MASK) / gt3Var.j());
                iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(size2, 1073741824);
                gt3Var.a(i, size2, iMakeMeasureSpec, i17);
            } else if (gt3Var.j() != f4 || nh6.a(iMakeMeasureSpec)) {
                gt3Var.a(i, size2, iMakeMeasureSpec, i17);
            } else {
                gt3Var.a(i, Math.max(gt3Var.f, gt3Var.getSuggestedMinimumHeight()), iMakeMeasureSpec, i17);
                size2 = Math.max(gt3Var.f, gt3Var.getSuggestedMinimumHeight());
            }
            gt3Var.setMeasuredDimension(View.resolveSizeAndState(gt3Var.y, i, gt3Var.i), View.resolveSizeAndState(size2, iMakeMeasureSpec, gt3Var.i << 16));
        } else {
            int i22 = i;
            gt3Var.c = -1;
            gt3Var.d = -1;
            boolean zA2 = nh6.a(i22);
            int iMakeMeasureSpec2 = gt3Var.j() == 0.0f ? i2 : zA2 ? View.MeasureSpec.makeMeasureSpec(defpackage.w65.b(View.MeasureSpec.getSize(i22) / gt3Var.j()), 1073741824) : View.MeasureSpec.makeMeasureSpec(0, 1073741824);
            int size3 = View.MeasureSpec.getSize(iMakeMeasureSpec2);
            boolean zA3 = nh6.a(iMakeMeasureSpec2);
            int iMax = zA3 ? size3 : Math.max(gt3Var.getSuggestedMinimumHeight(), gt3Var.getPaddingBottom() + gt3Var.getPaddingTop());
            if (iMax < 0) {
                iMax = 0;
            }
            int childCount3 = gt3Var.getChildCount();
            int i23 = 0;
            while (true) {
                i5 = i16;
                if (i23 >= childCount3) {
                    break;
                }
                int i24 = iMax;
                View childAt3 = gt3Var.getChildAt(i23);
                if (childAt3.getVisibility() != i3) {
                    gt3Var.f = gt3Var.a(i23) + gt3Var.f;
                    float f5 = gt3Var.A;
                    ViewGroup.LayoutParams layoutParams8 = childAt3.getLayoutParams();
                    layoutParams8.getClass();
                    ro1 ro1Var7 = (ro1) layoutParams8;
                    gt3Var.A = a(((ViewGroup.MarginLayoutParams) ro1Var7).width, ro1Var7.d) + f5;
                    ViewGroup.LayoutParams layoutParams9 = childAt3.getLayoutParams();
                    layoutParams9.getClass();
                    if (((ViewGroup.MarginLayoutParams) ((ro1) layoutParams9)).width == -1 && nh6.a(i22)) {
                        childCount3 = childCount3;
                        i10 = i22;
                        i24 = i24;
                        i11 = i23;
                    } else {
                        ViewGroup.LayoutParams layoutParams10 = childAt3.getLayoutParams();
                        layoutParams10.getClass();
                        ro1 ro1Var8 = (ro1) layoutParams10;
                        int i25 = ((ViewGroup.MarginLayoutParams) ro1Var8).width;
                        if (i25 != -3) {
                            if (i25 != -1) {
                                i11 = i23;
                                gt3Var.measureChildWithMargins(childAt3, i22, 0, iMakeMeasureSpec2, 0);
                                gt3Var = this;
                            } else {
                                i11 = i23;
                                ViewGroup.LayoutParams layoutParams11 = childAt3.getLayoutParams();
                                layoutParams11.getClass();
                                ro1 ro1Var9 = (ro1) layoutParams11;
                                ((ViewGroup.MarginLayoutParams) ro1Var9).width = -2;
                                gt3Var = this;
                                gt3Var.measureChildWithMargins(childAt3, i, 0, iMakeMeasureSpec2, 0);
                                ((ViewGroup.MarginLayoutParams) ro1Var9).width = -1;
                                int i26 = gt3Var.h;
                                gt3Var.h = Math.max(i26, ((ViewGroup.MarginLayoutParams) ro1Var9).leftMargin + ((ViewGroup.MarginLayoutParams) ro1Var9).rightMargin + childAt3.getMeasuredWidth() + i26);
                            }
                            i10 = i;
                        } else {
                            childCount3 = childCount3;
                            i24 = i24;
                            i11 = i23;
                            ViewGroup.LayoutParams layoutParams12 = childAt3.getLayoutParams();
                            layoutParams12.getClass();
                            ro1 ro1Var10 = (ro1) layoutParams12;
                            int i27 = ro1Var10.h;
                            ((ViewGroup.MarginLayoutParams) ro1Var10).width = -2;
                            ro1Var10.h = Integer.MAX_VALUE;
                            i10 = i;
                            gt3Var.measureChildWithMargins(childAt3, i10, 0, iMakeMeasureSpec2, 0);
                            ((ViewGroup.MarginLayoutParams) ro1Var10).width = -3;
                            ro1Var10.h = i27;
                            int i28 = gt3Var.g;
                            gt3Var.g = Math.max(i28, ((ViewGroup.MarginLayoutParams) ro1Var10).leftMargin + ((ViewGroup.MarginLayoutParams) ro1Var10).rightMargin + childAt3.getMeasuredWidth() + i28);
                            gt3Var.w.add(childAt3);
                        }
                        gt3Var.i = View.combineMeasuredStates(gt3Var.i, childAt3.getMeasuredState());
                        gt3Var.c(iMakeMeasureSpec2, ((ViewGroup.MarginLayoutParams) ro1Var8).topMargin + ((ViewGroup.MarginLayoutParams) ro1Var8).bottomMargin + childAt3.getMeasuredHeight());
                        ViewGroup.LayoutParams layoutParams13 = childAt3.getLayoutParams();
                        layoutParams13.getClass();
                        ro1 ro1Var11 = (ro1) layoutParams13;
                        if (ro1Var11.b && (baseline2 = childAt3.getBaseline()) != -1) {
                            gt3Var.c = Math.max(gt3Var.c, ((ViewGroup.MarginLayoutParams) ro1Var11).topMargin + baseline2);
                            gt3Var.d = Math.max(gt3Var.d, (childAt3.getMeasuredHeight() - baseline2) - ((ViewGroup.MarginLayoutParams) ro1Var11).topMargin);
                        }
                        int i29 = gt3Var.f;
                        gt3Var.f = Math.max(i29, ((ViewGroup.MarginLayoutParams) ro1Var8).leftMargin + ((ViewGroup.MarginLayoutParams) ro1Var8).rightMargin + childAt3.getMeasuredWidth() + i29);
                    }
                } else {
                    childCount3 = childCount3;
                    i10 = i22;
                    i24 = i24;
                    i11 = i23;
                }
                i23 = i11 + 1;
                iMax = i24;
                i16 = i5;
                i3 = 8;
                i22 = i10;
                childCount3 = childCount3;
            }
            int i30 = i22;
            int i31 = iMax;
            int childCount4 = gt3Var.getChildCount();
            for (int i32 = 0; i32 < childCount4; i32++) {
                View childAt4 = gt3Var.getChildAt(i32);
                if (childAt4.getVisibility() != 8) {
                    ViewGroup.LayoutParams layoutParams14 = childAt4.getLayoutParams();
                    layoutParams14.getClass();
                    if (((ViewGroup.MarginLayoutParams) ((ro1) layoutParams14)).width == -1 && nh6.a(i30)) {
                        int i33 = gt3Var.f;
                        ViewGroup.LayoutParams layoutParams15 = childAt4.getLayoutParams();
                        layoutParams15.getClass();
                        ro1 ro1Var12 = (ro1) layoutParams15;
                        gt3Var.f = Math.max(i33, ((ViewGroup.MarginLayoutParams) ro1Var12).leftMargin + ((ViewGroup.MarginLayoutParams) ro1Var12).rightMargin + i33);
                    }
                }
            }
            if (gt3Var.f > 0 && gt3Var.b(gt3Var.getChildCount())) {
                gt3Var.f = gt3Var.k + gt3Var.p + gt3Var.o + gt3Var.f;
            }
            gt3Var.f = gt3Var.getPaddingRight() + gt3Var.getPaddingLeft() + gt3Var.f;
            int iResolveSizeAndState = View.resolveSizeAndState(Math.max(gt3Var.getSuggestedMinimumWidth(), gt3Var.f), i30, gt3Var.i) & i5;
            if (!zA2 && gt3Var.j() != 0.0f) {
                size3 = defpackage.w65.b(iResolveSizeAndState / gt3Var.j());
                iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(size3, 1073741824);
            }
            int i34 = iResolveSizeAndState - gt3Var.f;
            ArrayList arrayList2 = gt3Var.w;
            if (arrayList2 == null || !arrayList2.isEmpty()) {
                Iterator it2 = arrayList2.iterator();
                while (true) {
                    if (it2.hasNext()) {
                        ViewGroup.LayoutParams layoutParams16 = ((View) it2.next()).getLayoutParams();
                        layoutParams16.getClass();
                        if (((ro1) layoutParams16).h != Integer.MAX_VALUE) {
                        }
                    } else if (gt3Var.b(i34, i30)) {
                    }
                    gt3Var.f = 0;
                    iA = gt3Var.a(i34, i30);
                    arrayList = gt3Var.w;
                    if (iA >= 0) {
                        for (View view5 : arrayList) {
                            layoutParams = view5.getLayoutParams();
                            layoutParams.getClass();
                            if (((ro1) layoutParams).h != Integer.MAX_VALUE) {
                                int measuredWidth = view5.getMeasuredWidth();
                                ViewGroup.LayoutParams layoutParams17 = view5.getLayoutParams();
                                layoutParams17.getClass();
                                gt3Var.b(view5, iMakeMeasureSpec2, Math.min(measuredWidth, ((ro1) layoutParams17).h));
                            }
                        }
                    } else {
                        if (arrayList.size() > 1) {
                            defpackage.nn1.J(new ft3(), arrayList);
                        }
                        for (View view6 : gt3Var.w) {
                            ViewGroup.LayoutParams layoutParams18 = view6.getLayoutParams();
                            layoutParams18.getClass();
                            ro1 ro1Var13 = (ro1) layoutParams18;
                            int measuredWidth2 = view6.getMeasuredWidth();
                            int i35 = ((ViewGroup.MarginLayoutParams) ro1Var13).leftMargin + ((ViewGroup.MarginLayoutParams) ro1Var13).rightMargin + measuredWidth2;
                            iB = defpackage.w65.b((i35 / gt3Var.g) * iA) + measuredWidth2;
                            minimumWidth = view6.getMinimumWidth();
                            if (iB < minimumWidth) {
                                iB = minimumWidth;
                            }
                            i6 = ro1Var13.h;
                            if (iB > i6) {
                                iB = i6;
                            }
                            gt3Var.b(view6, iMakeMeasureSpec2, iB);
                            gt3Var.i = View.combineMeasuredStates(gt3Var.i, view6.getMeasuredState() & 16777216);
                            gt3Var.g -= i35;
                            iA -= view6.getMeasuredWidth() - measuredWidth2;
                        }
                    }
                    iA2 = gt3Var.a(i34, i30);
                    float f6 = gt3Var.A;
                    gt3Var.y = 0;
                    gt3Var.c = -1;
                    gt3Var.d = -1;
                    childCount = gt3Var.getChildCount();
                    i7 = iA2;
                    fA = f6;
                    i8 = 0;
                    while (i8 < childCount) {
                        childAt = gt3Var.getChildAt(i8);
                        if (childAt.getVisibility() != 8) {
                            ViewGroup.LayoutParams layoutParams19 = childAt.getLayoutParams();
                            layoutParams19.getClass();
                            ro1Var = (ro1) layoutParams19;
                            i9 = ((ViewGroup.MarginLayoutParams) ro1Var).width;
                            if (i9 != i4) {
                                if (iA2 > 0) {
                                    int iA3 = (int) ((a(i9, ro1Var.d) * i7) / fA);
                                    fA -= a(((ViewGroup.MarginLayoutParams) ro1Var).width, ro1Var.d);
                                    i7 -= iA3;
                                    gt3Var.b(childAt, iMakeMeasureSpec2, iA3);
                                } else {
                                    gt3Var.b(childAt, iMakeMeasureSpec2, Math.max(childAt.getMinimumWidth(), 0));
                                }
                            }
                            gt3Var.c(iMakeMeasureSpec2, ((ViewGroup.MarginLayoutParams) ro1Var).topMargin + ((ViewGroup.MarginLayoutParams) ro1Var).bottomMargin + childAt.getMeasuredHeight());
                            int i36 = gt3Var.f;
                            gt3Var.f = Math.max(i36, ((ViewGroup.MarginLayoutParams) ro1Var).leftMargin + ((ViewGroup.MarginLayoutParams) ro1Var).rightMargin + childAt.getMeasuredWidth() + i36);
                            ViewGroup.LayoutParams layoutParams20 = childAt.getLayoutParams();
                            layoutParams20.getClass();
                            ro1Var2 = (ro1) layoutParams20;
                            if (ro1Var2.b && (baseline = childAt.getBaseline()) != -1) {
                                gt3Var.c = Math.max(gt3Var.c, ((ViewGroup.MarginLayoutParams) ro1Var2).topMargin + baseline);
                                gt3Var.d = Math.max(gt3Var.d, (childAt.getMeasuredHeight() - baseline) - ((ViewGroup.MarginLayoutParams) ro1Var2).topMargin);
                            }
                        }
                        i8++;
                        i4 = -1;
                    }
                    gt3Var.f = gt3Var.getPaddingRight() + gt3Var.getPaddingLeft() + gt3Var.f;
                }
            } else if (gt3Var.b(i34, i30)) {
                gt3Var.f = 0;
                iA = gt3Var.a(i34, i30);
                arrayList = gt3Var.w;
                if (iA >= 0) {
                    while (r3.hasNext()) {
                        layoutParams = view5.getLayoutParams();
                        layoutParams.getClass();
                        if (((ro1) layoutParams).h != Integer.MAX_VALUE) {
                            int measuredWidth3 = view5.getMeasuredWidth();
                            ViewGroup.LayoutParams layoutParams110 = view5.getLayoutParams();
                            layoutParams110.getClass();
                            gt3Var.b(view5, iMakeMeasureSpec2, Math.min(measuredWidth3, ((ro1) layoutParams110).h));
                        }
                    }
                } else {
                    if (arrayList.size() > 1) {
                        defpackage.nn1.J(new ft3(), arrayList);
                    }
                    while (r5.hasNext()) {
                        ViewGroup.LayoutParams layoutParams111 = view6.getLayoutParams();
                        layoutParams111.getClass();
                        ro1 ro1Var14 = (ro1) layoutParams111;
                        int measuredWidth4 = view6.getMeasuredWidth();
                        int i37 = ((ViewGroup.MarginLayoutParams) ro1Var14).leftMargin + ((ViewGroup.MarginLayoutParams) ro1Var14).rightMargin + measuredWidth4;
                        iB = defpackage.w65.b((i37 / gt3Var.g) * iA) + measuredWidth4;
                        minimumWidth = view6.getMinimumWidth();
                        if (iB < minimumWidth) {
                            iB = minimumWidth;
                        }
                        i6 = ro1Var14.h;
                        if (iB > i6) {
                            iB = i6;
                        }
                        gt3Var.b(view6, iMakeMeasureSpec2, iB);
                        gt3Var.i = View.combineMeasuredStates(gt3Var.i, view6.getMeasuredState() & 16777216);
                        gt3Var.g -= i37;
                        iA -= view6.getMeasuredWidth() - measuredWidth4;
                    }
                }
                iA2 = gt3Var.a(i34, i30);
                float f7 = gt3Var.A;
                gt3Var.y = 0;
                gt3Var.c = -1;
                gt3Var.d = -1;
                childCount = gt3Var.getChildCount();
                i7 = iA2;
                fA = f7;
                i8 = 0;
                while (i8 < childCount) {
                    childAt = gt3Var.getChildAt(i8);
                    if (childAt.getVisibility() != 8) {
                        ViewGroup.LayoutParams layoutParams112 = childAt.getLayoutParams();
                        layoutParams112.getClass();
                        ro1Var = (ro1) layoutParams112;
                        i9 = ((ViewGroup.MarginLayoutParams) ro1Var).width;
                        if (i9 != i4) {
                            if (iA2 > 0) {
                                int iA4 = (int) ((a(i9, ro1Var.d) * i7) / fA);
                                fA -= a(((ViewGroup.MarginLayoutParams) ro1Var).width, ro1Var.d);
                                i7 -= iA4;
                                gt3Var.b(childAt, iMakeMeasureSpec2, iA4);
                            } else {
                                gt3Var.b(childAt, iMakeMeasureSpec2, Math.max(childAt.getMinimumWidth(), 0));
                            }
                        }
                        gt3Var.c(iMakeMeasureSpec2, ((ViewGroup.MarginLayoutParams) ro1Var).topMargin + ((ViewGroup.MarginLayoutParams) ro1Var).bottomMargin + childAt.getMeasuredHeight());
                        int i38 = gt3Var.f;
                        gt3Var.f = Math.max(i38, ((ViewGroup.MarginLayoutParams) ro1Var).leftMargin + ((ViewGroup.MarginLayoutParams) ro1Var).rightMargin + childAt.getMeasuredWidth() + i38);
                        ViewGroup.LayoutParams layoutParams21 = childAt.getLayoutParams();
                        layoutParams21.getClass();
                        ro1Var2 = (ro1) layoutParams21;
                        if (ro1Var2.b) {
                            gt3Var.c = Math.max(gt3Var.c, ((ViewGroup.MarginLayoutParams) ro1Var2).topMargin + baseline);
                            gt3Var.d = Math.max(gt3Var.d, (childAt.getMeasuredHeight() - baseline) - ((ViewGroup.MarginLayoutParams) ro1Var2).topMargin);
                        }
                    }
                    i8++;
                    i4 = -1;
                }
                gt3Var.f = gt3Var.getPaddingRight() + gt3Var.getPaddingLeft() + gt3Var.f;
            }
            if (!zA3 && gt3Var.j() == 0.0f) {
                int childCount5 = gt3Var.getChildCount();
                for (int i39 = 0; i39 < childCount5; i39++) {
                    View childAt5 = gt3Var.getChildAt(i39);
                    if (childAt5.getVisibility() != 8) {
                        boolean z3 = gt3Var.y == 0;
                        ViewGroup.LayoutParams layoutParams22 = childAt5.getLayoutParams();
                        layoutParams22.getClass();
                        ro1 ro1Var15 = (ro1) layoutParams22;
                        if (((ViewGroup.MarginLayoutParams) ro1Var15).height == -1) {
                            if (z3) {
                                gt3Var.y = Math.max(gt3Var.y, ((ViewGroup.MarginLayoutParams) ro1Var15).topMargin + ((ViewGroup.MarginLayoutParams) ro1Var15).bottomMargin + childAt5.getMinimumHeight());
                            } else {
                                gt3Var.b(childAt5, iMakeMeasureSpec2, childAt5.getMeasuredWidth());
                                gt3Var.c(iMakeMeasureSpec2, ((ViewGroup.MarginLayoutParams) ro1Var15).topMargin + ((ViewGroup.MarginLayoutParams) ro1Var15).bottomMargin + childAt5.getMeasuredHeight());
                            }
                        }
                    }
                }
                gt3Var.y = Math.max(i31, gt3Var.getPaddingBottom() + gt3Var.getPaddingTop() + gt3Var.y);
                int i40 = gt3Var.c;
                if (i40 != -1) {
                    gt3Var.c(iMakeMeasureSpec2, i40 + gt3Var.d);
                }
                size3 = View.resolveSize(gt3Var.y, iMakeMeasureSpec2);
            }
            int childCount6 = gt3Var.getChildCount();
            for (int i41 = 0; i41 < childCount6; i41++) {
                View childAt6 = gt3Var.getChildAt(i41);
                if (childAt6.getVisibility() != 8) {
                    int iMakeMeasureSpec3 = View.MeasureSpec.makeMeasureSpec(size3, 1073741824);
                    ViewGroup.LayoutParams layoutParams23 = childAt6.getLayoutParams();
                    layoutParams23.getClass();
                    int i42 = ((ViewGroup.MarginLayoutParams) ((ro1) layoutParams23)).height;
                    if (i42 == -1 || i42 == -3) {
                        gt3Var.b(childAt6, iMakeMeasureSpec3, childAt6.getMeasuredWidth());
                    }
                }
            }
            gt3Var.setMeasuredDimension(View.resolveSizeAndState(Math.max(gt3Var.getSuggestedMinimumWidth(), gt3Var.f), i30, gt3Var.i), View.resolveSizeAndState(size3, iMakeMeasureSpec2, gt3Var.i << 16));
        }
        gt3Var.w.clear();
        gt3Var.z.clear();
        gt3Var.x.clear();
    }

    @Override // yads.wj
    public void setAspectRatio(float f) {
        this.j.setValue(this, B[1], Float.valueOf(f));
    }

    public final void setDividerDrawable(Drawable drawable) {
        if (defpackage.aa4.e(this.u, drawable)) {
            return;
        }
        this.u = drawable;
        this.k = drawable != null ? drawable.getIntrinsicWidth() : 0;
        this.l = drawable != null ? drawable.getIntrinsicHeight() : 0;
        setWillNotDraw(drawable == null);
        requestLayout();
    }

    public final void setDividerMargins(int i, int i2, int i3, int i4) {
        this.o = i;
        this.p = i3;
        this.m = i2;
        this.n = i4;
        requestLayout();
    }

    public final void setItemSpacing(int i) {
        if (this.q != i) {
            this.q = i;
            requestLayout();
        }
    }

    public final void setOrientation(int i) {
        this.e.setValue(this, B[0], Integer.valueOf(i));
    }

    public final void setShowDividers(int i) {
        this.v.setValue(this, B[2], Integer.valueOf(i));
    }

    @Override // android.view.ViewGroup
    public final boolean shouldDelayChildPressedState() {
        return false;
    }

    public gt3(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 4, 0);
    }

    public /* synthetic */ gt3(Context context, AttributeSet attributeSet, int i, int i2) {
        this(context, (i & 2) != 0 ? null : attributeSet, 0);
    }

    public gt3(Context context) {
        this(context, null, 6, 0);
    }

    public final boolean b(int i, int i2) {
        if (!this.x.isEmpty()) {
            return true;
        }
        if (View.MeasureSpec.getMode(i2) == 0) {
            return false;
        }
        if (i < 0) {
            return this.g > 0 || this.A > 0.0f;
        }
        return nh6.a(i2) && i > 0 && this.A > 0.0f;
    }

    public final void b(View view, int i, int i2) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        layoutParams.getClass();
        ro1 ro1Var = (ro1) layoutParams;
        view.measure(View.MeasureSpec.makeMeasureSpec(i2, 1073741824), wh2.a(i, ((ViewGroup.MarginLayoutParams) ro1Var).topMargin + ((ViewGroup.MarginLayoutParams) ro1Var).bottomMargin + getPaddingBottom() + getPaddingTop(), ((ViewGroup.MarginLayoutParams) ro1Var).height, view.getMinimumHeight(), ro1Var.g));
        View.combineMeasuredStates(this.i, view.getMeasuredState() & (-16777216));
    }

    public final int a(int i) {
        int i2;
        int i3;
        if (k()) {
            i2 = this.l + this.m;
            i3 = this.n;
        } else {
            i2 = this.k + this.p;
            i3 = this.o;
        }
        int i4 = i2 + i3;
        if (b(i)) {
            return i4;
        }
        if (i == this.s) {
            return 0;
        }
        return this.q;
    }

    public final j59 a(Canvas canvas, int i, int i2, int i3, int i4) {
        Drawable drawable = this.u;
        if (drawable == null) {
            return null;
        }
        float f = (i + i3) / 2.0f;
        float f2 = (i2 + i4) / 2.0f;
        float f3 = this.k / 2.0f;
        float f4 = this.l / 2.0f;
        drawable.setBounds(Math.max((int) (f - f3), i), Math.max((int) (f2 - f4), i2), Math.min((int) (f + f3), i3), Math.min((int) (f2 + f4), i4));
        drawable.draw(canvas);
        return j59.a;
    }

    public static float a(int i, float f) {
        if (f > 0.0f) {
            return f;
        }
        return i == -1 ? 1.0f : 0.0f;
    }

    public final int a(int i, int i2) {
        int i3;
        if (i >= 0 || (i3 = this.h) <= 0) {
            return (i < 0 || !nh6.a(i2)) ? i : i + this.h;
        }
        int i4 = i + i3;
        if (i4 < 0) {
            return 0;
        }
        return i4;
    }

    public final void a(View view, int i, int i2, boolean z, boolean z2) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        layoutParams.getClass();
        ro1 ro1Var = (ro1) layoutParams;
        int i3 = ((ViewGroup.MarginLayoutParams) ro1Var).height;
        if (i3 == -3) {
            ViewGroup.LayoutParams layoutParams2 = view.getLayoutParams();
            layoutParams2.getClass();
            ro1 ro1Var2 = (ro1) layoutParams2;
            int i4 = ro1Var2.g;
            ((ViewGroup.MarginLayoutParams) ro1Var2).height = -2;
            ro1Var2.g = Integer.MAX_VALUE;
            measureChildWithMargins(view, i, 0, i2, 0);
            ((ViewGroup.MarginLayoutParams) ro1Var2).height = -3;
            ro1Var2.g = i4;
            if (z2) {
                int i5 = this.g;
                this.g = Math.max(i5, ((ViewGroup.MarginLayoutParams) ro1Var2).topMargin + ((ViewGroup.MarginLayoutParams) ro1Var2).bottomMargin + view.getMeasuredHeight() + i5);
                if (!this.w.contains(view)) {
                    this.w.add(view);
                }
            }
        } else if (i3 != -1) {
            measureChildWithMargins(view, i, 0, i2, 0);
        } else if (nh6.a(i2)) {
            measureChildWithMargins(view, i, 0, View.MeasureSpec.makeMeasureSpec(0, 1073741824), 0);
        } else {
            ViewGroup.LayoutParams layoutParams3 = view.getLayoutParams();
            layoutParams3.getClass();
            ro1 ro1Var3 = (ro1) layoutParams3;
            ((ViewGroup.MarginLayoutParams) ro1Var3).height = -2;
            measureChildWithMargins(view, i, 0, i2, 0);
            ((ViewGroup.MarginLayoutParams) ro1Var3).height = -1;
            if (z2) {
                int i6 = this.h;
                this.h = Math.max(i6, view.getMeasuredHeight() + i6);
            }
        }
        this.i = View.combineMeasuredStates(this.i, view.getMeasuredState());
        if (z) {
            c(i, ((ViewGroup.MarginLayoutParams) ro1Var).leftMargin + ((ViewGroup.MarginLayoutParams) ro1Var).rightMargin + view.getMeasuredWidth());
        }
        if (z2) {
            int i7 = this.f;
            this.f = Math.max(i7, ((ViewGroup.MarginLayoutParams) ro1Var).topMargin + ((ViewGroup.MarginLayoutParams) ro1Var).bottomMargin + view.getMeasuredHeight() + i7);
        }
    }

    public final void a(View view, int i, int i2, int i3) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        layoutParams.getClass();
        ro1 ro1Var = (ro1) layoutParams;
        int i4 = ((ViewGroup.MarginLayoutParams) ro1Var).width;
        if (i4 == -1) {
            if (i2 == 0) {
                ((ViewGroup.MarginLayoutParams) ro1Var).width = -3;
            } else {
                i = View.MeasureSpec.makeMeasureSpec(i2, 1073741824);
            }
        }
        int iA = wh2.a(i, ((ViewGroup.MarginLayoutParams) ro1Var).leftMargin + ((ViewGroup.MarginLayoutParams) ro1Var).rightMargin + getPaddingRight() + getPaddingLeft(), ((ViewGroup.MarginLayoutParams) ro1Var).width, view.getMinimumWidth(), ro1Var.h);
        ((ViewGroup.MarginLayoutParams) ro1Var).width = i4;
        view.measure(iA, View.MeasureSpec.makeMeasureSpec(i3, 1073741824));
        this.i = View.combineMeasuredStates(this.i, view.getMeasuredState() & (-256));
    }
}
