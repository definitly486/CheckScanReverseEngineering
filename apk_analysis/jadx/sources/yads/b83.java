package yads;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import com.yandex.mobile.ads.R$styleable;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class b83 extends yh2 {
    public final x73 c;
    public int d;
    public final boolean e;

    public b83(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.c = new x73(this);
        if (isInEditMode()) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.monetization_ads_divkit_GridContainer, i, 0);
            try {
                setColumnCount(typedArrayObtainStyledAttributes.getInt(R$styleable.monetization_ads_divkit_GridContainer_android_columnCount, 1));
                setGravity(typedArrayObtainStyledAttributes.getInt(R$styleable.monetization_ads_divkit_GridContainer_android_gravity, 8388659));
                typedArrayObtainStyledAttributes.recycle();
            } catch (Throwable th) {
                typedArrayObtainStyledAttributes.recycle();
                throw th;
            }
        }
        this.e = true;
    }

    public static void a(View view, int i, int i2, int i3, int i4, int i5, int i6) {
        int iA;
        int iA2;
        if (i3 == -1) {
            iA = View.MeasureSpec.makeMeasureSpec(i5, 1073741824);
        } else {
            int minimumWidth = view.getMinimumWidth();
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            layoutParams.getClass();
            iA = wh2.a(i, 0, i3, minimumWidth, ((ro1) layoutParams).h);
        }
        if (i4 == -1) {
            iA2 = View.MeasureSpec.makeMeasureSpec(i6, 1073741824);
        } else {
            int minimumHeight = view.getMinimumHeight();
            ViewGroup.LayoutParams layoutParams2 = view.getLayoutParams();
            layoutParams2.getClass();
            iA2 = wh2.a(i2, 0, i4, minimumHeight, ((ro1) layoutParams2).g);
        }
        view.measure(iA, iA2);
    }

    public final void j() {
        int i = this.d;
        int iHashCode = 223;
        if (i != 0) {
            int childCount = getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = getChildAt(i2);
                if (childAt.getVisibility() != 8) {
                    ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
                    layoutParams.getClass();
                    iHashCode = ((ro1) layoutParams).hashCode() + (iHashCode * 31);
                }
            }
            if (i != iHashCode) {
                this.d = 0;
                this.c.b();
                j();
                return;
            }
            return;
        }
        int childCount2 = getChildCount();
        for (int i3 = 0; i3 < childCount2; i3++) {
            ViewGroup.LayoutParams layoutParams2 = getChildAt(i3).getLayoutParams();
            layoutParams2.getClass();
            ro1 ro1Var = (ro1) layoutParams2;
            if (ro1Var.a() < 0 || ro1Var.c() < 0) {
                defpackage.ah.f("Negative spans are not supported.");
                return;
            } else {
                if (ro1Var.d < 0.0f || ro1Var.c < 0.0f) {
                    defpackage.ah.f("Negative weights are not supported.");
                    return;
                }
            }
        }
        int childCount3 = getChildCount();
        for (int i4 = 0; i4 < childCount3; i4++) {
            View childAt2 = getChildAt(i4);
            if (childAt2.getVisibility() != 8) {
                ViewGroup.LayoutParams layoutParams3 = childAt2.getLayoutParams();
                layoutParams3.getClass();
                iHashCode = ((ro1) layoutParams3).hashCode() + (iHashCode * 31);
            }
        }
        this.d = iHashCode;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int iB;
        int iB2;
        int i5;
        char c;
        char c2;
        b83 b83Var = this;
        SystemClock.elapsedRealtime();
        b83Var.j();
        List list = (List) b83Var.c.c.a();
        List list2 = (List) b83Var.c.d.a();
        List list3 = (List) b83Var.c.b.a();
        int i6 = b83Var.a & 7;
        x73 x73Var = b83Var.c;
        int i7 = 0;
        int iA = x73Var.c.b() ? x73.a((List) x73Var.c.a()) : 0;
        int measuredWidth = (b83Var.getMeasuredWidth() - b83Var.getPaddingLeft()) - b83Var.getPaddingRight();
        int i8 = 2;
        int i9 = 1;
        if (i6 != 1) {
            iB = i6 != 5 ? b83Var.getPaddingLeft() : (b83Var.getPaddingLeft() + measuredWidth) - iA;
        } else {
            iB = defpackage.k.b(measuredWidth, iA, 2, b83Var.getPaddingLeft());
        }
        int i10 = b83Var.a & 112;
        x73 x73Var2 = b83Var.c;
        int iA2 = x73Var2.d.b() ? x73.a((List) x73Var2.d.a()) : 0;
        int measuredHeight = (b83Var.getMeasuredHeight() - b83Var.getPaddingTop()) - b83Var.getPaddingBottom();
        char c3 = 16;
        if (i10 != 16) {
            iB2 = i10 != 80 ? b83Var.getPaddingTop() : (b83Var.getPaddingTop() + measuredHeight) - iA2;
        } else {
            iB2 = defpackage.k.b(measuredHeight, iA2, 2, b83Var.getPaddingTop());
        }
        int childCount = b83Var.getChildCount();
        int i11 = 0;
        while (i7 < childCount) {
            View childAt = b83Var.getChildAt(i7);
            if (childAt.getVisibility() != 8) {
                ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
                layoutParams.getClass();
                ro1 ro1Var = (ro1) layoutParams;
                v73 v73Var = (v73) list3.get(i11);
                int iA3 = ((y73) list.get(v73Var.b)).a() + ((ViewGroup.MarginLayoutParams) ro1Var).leftMargin;
                int iA4 = ((y73) list2.get(v73Var.c)).a() + ((ViewGroup.MarginLayoutParams) ro1Var).topMargin;
                int i12 = i9;
                y73 y73Var = (y73) list.get((v73Var.b + v73Var.d) - 1);
                int iB3 = ((y73Var.b() + y73Var.a()) - iA3) - ((ViewGroup.MarginLayoutParams) ro1Var).rightMargin;
                y73 y73Var2 = (y73) list2.get((v73Var.c + v73Var.e) - 1);
                int iB4 = ((y73Var2.b() + y73Var2.a()) - iA4) - ((ViewGroup.MarginLayoutParams) ro1Var).bottomMargin;
                int measuredWidth2 = childAt.getMeasuredWidth();
                int iB5 = ro1Var.b() & 7;
                if (iB5 != i12) {
                    if (iB5 == 5) {
                        iA3 = (iA3 + iB3) - measuredWidth2;
                    }
                    i5 = 2;
                } else {
                    i5 = 2;
                    iA3 = defpackage.k.b(iB3, measuredWidth2, 2, iA3);
                }
                int measuredHeight2 = childAt.getMeasuredHeight();
                int iB6 = ro1Var.b() & 112;
                c = 16;
                c2 = 'P';
                if (iB6 == 16) {
                    iA4 = defpackage.k.b(iB4, measuredHeight2, i5, iA4);
                } else if (iB6 == 80) {
                    iA4 = (iA4 + iB4) - measuredHeight2;
                }
                int i13 = iA3 + iB;
                int i14 = iA4 + iB2;
                childAt.layout(i13, i14, childAt.getMeasuredWidth() + i13, childAt.getMeasuredHeight() + i14);
                i11++;
            } else {
                i5 = i8;
                c = c3;
                c2 = 'P';
            }
            i7++;
            i8 = i5;
            c3 = c;
            list = list;
            i9 = 1;
            b83Var = this;
        }
        SystemClock.elapsedRealtime();
        int i15 = cr3.a;
        vj5[] vj5VarArr = vj5.b;
        cr3.a();
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        int i3;
        int i4;
        List list;
        int i5;
        SystemClock.elapsedRealtime();
        j();
        this.c.a();
        int paddingRight = getPaddingRight() + getPaddingLeft();
        int paddingBottom = getPaddingBottom() + getPaddingTop();
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i - paddingRight), View.MeasureSpec.getMode(i));
        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i2 - paddingBottom), View.MeasureSpec.getMode(i2));
        int childCount = getChildCount();
        int i6 = 0;
        int i7 = 0;
        while (true) {
            i3 = 8;
            if (i7 >= childCount) {
                break;
            }
            View childAt = getChildAt(i7);
            if (childAt.getVisibility() != 8) {
                ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
                layoutParams.getClass();
                ro1 ro1Var = (ro1) layoutParams;
                int i8 = ((ViewGroup.MarginLayoutParams) ro1Var).width;
                if (i8 == -1) {
                    i8 = 0;
                }
                int i9 = ((ViewGroup.MarginLayoutParams) ro1Var).height;
                if (i9 == -1) {
                    i9 = 0;
                }
                int minimumWidth = childAt.getMinimumWidth();
                ViewGroup.LayoutParams layoutParams2 = childAt.getLayoutParams();
                layoutParams2.getClass();
                int iA = wh2.a(iMakeMeasureSpec, 0, i8, minimumWidth, ((ro1) layoutParams2).h);
                int minimumHeight = childAt.getMinimumHeight();
                ViewGroup.LayoutParams layoutParams3 = childAt.getLayoutParams();
                layoutParams3.getClass();
                childAt.measure(iA, wh2.a(iMakeMeasureSpec2, 0, i9, minimumHeight, ((ro1) layoutParams3).g));
            }
            i7++;
        }
        x73 x73Var = this.c;
        z73 z73Var = x73Var.e;
        z73Var.getClass();
        int mode = View.MeasureSpec.getMode(iMakeMeasureSpec);
        int size = View.MeasureSpec.getSize(iMakeMeasureSpec);
        int i10 = 1073741824;
        if (mode == Integer.MIN_VALUE) {
            z73Var.a = 0;
            z73Var.b = size;
        } else if (mode == 0) {
            z73Var.a = 0;
            z73Var.b = 32768;
        } else if (mode == 1073741824) {
            z73Var.a = size;
            z73Var.b = size;
        }
        int iMax = Math.max(x73Var.e.a, Math.min(x73.a((List) x73Var.c.a()), x73Var.e.b));
        List list2 = (List) this.c.b.a();
        List list3 = (List) this.c.c.a();
        int childCount2 = getChildCount();
        int i11 = 0;
        while (i6 < childCount2) {
            View childAt2 = getChildAt(i6);
            if (childAt2.getVisibility() != i3) {
                ViewGroup.LayoutParams layoutParams4 = childAt2.getLayoutParams();
                layoutParams4.getClass();
                ro1 ro1Var2 = (ro1) layoutParams4;
                if (((ViewGroup.MarginLayoutParams) ro1Var2).width != -1) {
                    i11++;
                    list = list3;
                    i5 = 1073741824;
                } else {
                    v73 v73Var = (v73) list2.get(i11);
                    y73 y73Var = (y73) list3.get((v73Var.b + v73Var.d) - 1);
                    int i12 = ((y73Var.a + y73Var.c) - ((y73) list3.get(v73Var.b)).a) - (((ViewGroup.MarginLayoutParams) ro1Var2).leftMargin + ((ViewGroup.MarginLayoutParams) ro1Var2).rightMargin);
                    list = list3;
                    i5 = 1073741824;
                    a(childAt2, iMakeMeasureSpec, iMakeMeasureSpec2, ((ViewGroup.MarginLayoutParams) ro1Var2).width, ((ViewGroup.MarginLayoutParams) ro1Var2).height, i12, 0);
                    i11++;
                }
            } else {
                list = list3;
                i5 = i10;
            }
            i6++;
            i10 = i5;
            list3 = list;
            childCount2 = childCount2;
            list2 = list2;
            iMax = iMax;
            i3 = 8;
        }
        int i13 = iMax;
        int i14 = i10;
        x73 x73Var2 = this.c;
        z73 z73Var2 = x73Var2.f;
        z73Var2.getClass();
        int mode2 = View.MeasureSpec.getMode(iMakeMeasureSpec2);
        int size2 = View.MeasureSpec.getSize(iMakeMeasureSpec2);
        if (mode2 == Integer.MIN_VALUE) {
            z73Var2.a = 0;
            z73Var2.b = size2;
        } else if (mode2 == 0) {
            z73Var2.a = 0;
            z73Var2.b = 32768;
        } else if (mode2 == i14) {
            z73Var2.a = size2;
            z73Var2.b = size2;
        }
        int iMax2 = Math.max(x73Var2.f.a, Math.min(x73.a((List) x73Var2.d.a()), x73Var2.f.b));
        List list4 = (List) this.c.b.a();
        List list5 = (List) this.c.c.a();
        List list6 = (List) this.c.d.a();
        int childCount3 = getChildCount();
        int i15 = 0;
        int i16 = 0;
        while (i15 < childCount3) {
            int i17 = childCount3;
            View childAt3 = getChildAt(i15);
            int i18 = iMax2;
            if (childAt3.getVisibility() != 8) {
                ViewGroup.LayoutParams layoutParams5 = childAt3.getLayoutParams();
                layoutParams5.getClass();
                ro1 ro1Var3 = (ro1) layoutParams5;
                i4 = paddingRight;
                if (((ViewGroup.MarginLayoutParams) ro1Var3).height != -1) {
                    i16++;
                } else {
                    v73 v73Var2 = (v73) list4.get(i16);
                    y73 y73Var2 = (y73) list5.get((v73Var2.b + v73Var2.d) - 1);
                    paddingBottom = paddingBottom;
                    int i19 = ((y73Var2.a + y73Var2.c) - ((y73) list5.get(v73Var2.b)).a) - (((ViewGroup.MarginLayoutParams) ro1Var3).leftMargin + ((ViewGroup.MarginLayoutParams) ro1Var3).rightMargin);
                    y73 y73Var3 = (y73) list6.get((v73Var2.c + v73Var2.e) - 1);
                    int i20 = ((y73Var3.a + y73Var3.c) - ((y73) list6.get(v73Var2.c)).a) - (((ViewGroup.MarginLayoutParams) ro1Var3).topMargin + ((ViewGroup.MarginLayoutParams) ro1Var3).bottomMargin);
                    i15 = i15;
                    a(childAt3, iMakeMeasureSpec, iMakeMeasureSpec2, ((ViewGroup.MarginLayoutParams) ro1Var3).width, ((ViewGroup.MarginLayoutParams) ro1Var3).height, i19, i20);
                    i16++;
                }
                i15++;
                childCount3 = i17;
                iMax2 = i18;
                paddingRight = i4;
                paddingBottom = paddingBottom;
            } else {
                i4 = paddingRight;
            }
            i15++;
            childCount3 = i17;
            iMax2 = i18;
            paddingRight = i4;
            paddingBottom = paddingBottom;
        }
        setMeasuredDimension(View.resolveSizeAndState(Math.max(i13 + paddingRight, getSuggestedMinimumWidth()), i, 0), View.resolveSizeAndState(Math.max(iMax2 + paddingBottom, getSuggestedMinimumHeight()), i2, 0));
        SystemClock.elapsedRealtime();
        int i21 = cr3.a;
        vj5[] vj5VarArr = vj5.b;
        cr3.a();
    }

    @Override // android.view.ViewGroup
    public final void onViewAdded(View view) {
        super.onViewAdded(view);
        this.d = 0;
        this.c.b();
    }

    @Override // android.view.ViewGroup
    public void onViewRemoved(View view) {
        super.onViewRemoved(view);
        this.d = 0;
        this.c.b();
    }

    @Override // android.view.View, android.view.ViewParent
    public final void requestLayout() {
        super.requestLayout();
        if (this.e) {
            this.c.a();
        }
    }

    public final void setColumnCount(int i) {
        x73 x73Var = this.c;
        if (i <= 0) {
            x73Var.getClass();
        } else if (x73Var.a != i) {
            x73Var.a = i;
            x73Var.b();
        }
        this.d = 0;
        this.c.b();
        requestLayout();
    }

    public b83(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 4, 0);
    }

    public /* synthetic */ b83(Context context, AttributeSet attributeSet, int i, int i2) {
        this(context, (i & 2) != 0 ? null : attributeSet, 0);
    }

    public b83(Context context) {
        this(context, null, 6, 0);
    }
}
