package com.google.android.flexbox;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.view.ViewCompat;
import defpackage.ah;
import defpackage.fg;
import defpackage.j2;
import defpackage.jh;
import defpackage.pc3;
import defpackage.tw6;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class FlexboxLayout extends ViewGroup implements pc3 {
    public int b;
    public int c;
    public int d;
    public int e;
    public int f;
    public int g;
    public Drawable h;
    public Drawable i;
    public int j;
    public int k;
    public int l;
    public int m;
    public int[] n;
    public SparseIntArray o;
    public final b p;
    public List<a> q;
    public final b.a r;

    public static class LayoutParams extends ViewGroup.MarginLayoutParams implements FlexItem {
        public static final Parcelable.Creator<LayoutParams> CREATOR = new a();
        public int b;
        public float c;
        public float d;
        public int e;
        public float f;
        public int g;
        public int h;
        public int i;
        public int j;
        public boolean k;

        public class a implements Parcelable.Creator<LayoutParams> {
            @Override // android.os.Parcelable.Creator
            public final LayoutParams createFromParcel(Parcel parcel) {
                LayoutParams layoutParams = new LayoutParams(0, 0);
                layoutParams.b = 1;
                layoutParams.c = 0.0f;
                layoutParams.d = 1.0f;
                layoutParams.e = -1;
                layoutParams.f = -1.0f;
                layoutParams.g = -1;
                layoutParams.h = -1;
                layoutParams.i = ViewCompat.MEASURED_SIZE_MASK;
                layoutParams.j = ViewCompat.MEASURED_SIZE_MASK;
                layoutParams.b = parcel.readInt();
                layoutParams.c = parcel.readFloat();
                layoutParams.d = parcel.readFloat();
                layoutParams.e = parcel.readInt();
                layoutParams.f = parcel.readFloat();
                layoutParams.g = parcel.readInt();
                layoutParams.h = parcel.readInt();
                layoutParams.i = parcel.readInt();
                layoutParams.j = parcel.readInt();
                layoutParams.k = parcel.readByte() != 0;
                ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin = parcel.readInt();
                ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin = parcel.readInt();
                ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin = parcel.readInt();
                ((ViewGroup.MarginLayoutParams) layoutParams).topMargin = parcel.readInt();
                ((ViewGroup.MarginLayoutParams) layoutParams).height = parcel.readInt();
                ((ViewGroup.MarginLayoutParams) layoutParams).width = parcel.readInt();
                return layoutParams;
            }

            @Override // android.os.Parcelable.Creator
            public final LayoutParams[] newArray(int i) {
                return new LayoutParams[i];
            }
        }

        @Override // com.google.android.flexbox.FlexItem
        public final int E() {
            return ((ViewGroup.MarginLayoutParams) this).bottomMargin;
        }

        @Override // com.google.android.flexbox.FlexItem
        public final int P() {
            return this.e;
        }

        @Override // com.google.android.flexbox.FlexItem
        public final float Q() {
            return this.d;
        }

        @Override // com.google.android.flexbox.FlexItem
        public final void U(int i) {
            this.h = i;
        }

        @Override // com.google.android.flexbox.FlexItem
        public final float V() {
            return this.c;
        }

        @Override // com.google.android.flexbox.FlexItem
        public final float X() {
            return this.f;
        }

        @Override // com.google.android.flexbox.FlexItem
        public final boolean Z() {
            return this.k;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        @Override // com.google.android.flexbox.FlexItem
        public final int e0() {
            return this.i;
        }

        @Override // com.google.android.flexbox.FlexItem
        public final int getHeight() {
            return ((ViewGroup.MarginLayoutParams) this).height;
        }

        @Override // com.google.android.flexbox.FlexItem
        public final int getOrder() {
            return this.b;
        }

        @Override // com.google.android.flexbox.FlexItem
        public final int getWidth() {
            return ((ViewGroup.MarginLayoutParams) this).width;
        }

        @Override // com.google.android.flexbox.FlexItem
        public final void k0(int i) {
            this.g = i;
        }

        @Override // com.google.android.flexbox.FlexItem
        public final int n0() {
            return ((ViewGroup.MarginLayoutParams) this).leftMargin;
        }

        @Override // com.google.android.flexbox.FlexItem
        public final int q0() {
            return ((ViewGroup.MarginLayoutParams) this).rightMargin;
        }

        @Override // com.google.android.flexbox.FlexItem
        public final int r0() {
            return this.h;
        }

        @Override // com.google.android.flexbox.FlexItem
        public final int u0() {
            return this.j;
        }

        @Override // com.google.android.flexbox.FlexItem
        public final int v() {
            return this.g;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.b);
            parcel.writeFloat(this.c);
            parcel.writeFloat(this.d);
            parcel.writeInt(this.e);
            parcel.writeFloat(this.f);
            parcel.writeInt(this.g);
            parcel.writeInt(this.h);
            parcel.writeInt(this.i);
            parcel.writeInt(this.j);
            parcel.writeByte(this.k ? (byte) 1 : (byte) 0);
            parcel.writeInt(((ViewGroup.MarginLayoutParams) this).bottomMargin);
            parcel.writeInt(((ViewGroup.MarginLayoutParams) this).leftMargin);
            parcel.writeInt(((ViewGroup.MarginLayoutParams) this).rightMargin);
            parcel.writeInt(((ViewGroup.MarginLayoutParams) this).topMargin);
            parcel.writeInt(((ViewGroup.MarginLayoutParams) this).height);
            parcel.writeInt(((ViewGroup.MarginLayoutParams) this).width);
        }

        @Override // com.google.android.flexbox.FlexItem
        public final int y() {
            return ((ViewGroup.MarginLayoutParams) this).topMargin;
        }
    }

    public FlexboxLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.g = -1;
        this.p = new b(this);
        this.q = new ArrayList();
        this.r = new b.a();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, tw6.a, i, 0);
        this.b = typedArrayObtainStyledAttributes.getInt(5, 0);
        this.c = typedArrayObtainStyledAttributes.getInt(6, 0);
        this.d = typedArrayObtainStyledAttributes.getInt(7, 0);
        this.e = typedArrayObtainStyledAttributes.getInt(1, 0);
        this.f = typedArrayObtainStyledAttributes.getInt(0, 0);
        this.g = typedArrayObtainStyledAttributes.getInt(8, -1);
        Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(2);
        if (drawable != null) {
            setDividerDrawableHorizontal(drawable);
            setDividerDrawableVertical(drawable);
        }
        Drawable drawable2 = typedArrayObtainStyledAttributes.getDrawable(3);
        if (drawable2 != null) {
            setDividerDrawableHorizontal(drawable2);
        }
        Drawable drawable3 = typedArrayObtainStyledAttributes.getDrawable(4);
        if (drawable3 != null) {
            setDividerDrawableVertical(drawable3);
        }
        int i2 = typedArrayObtainStyledAttributes.getInt(9, 0);
        if (i2 != 0) {
            this.k = i2;
            this.j = i2;
        }
        int i3 = typedArrayObtainStyledAttributes.getInt(11, 0);
        if (i3 != 0) {
            this.k = i3;
        }
        int i4 = typedArrayObtainStyledAttributes.getInt(10, 0);
        if (i4 != 0) {
            this.j = i4;
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // defpackage.pc3
    public final void a(View view, int i, int i2, a aVar) {
        if (p(i, i2)) {
            boolean zM = m();
            int i3 = aVar.e;
            if (zM) {
                int i4 = this.m;
                aVar.e = i3 + i4;
                aVar.f += i4;
            } else {
                int i5 = this.l;
                aVar.e = i3 + i5;
                aVar.f += i5;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.view.ViewGroup
    public final void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        SparseIntArray sparseIntArray = this.o;
        if (sparseIntArray == null) {
            sparseIntArray = new SparseIntArray(getChildCount());
            this.o = sparseIntArray;
        }
        b bVar = this.p;
        pc3 pc3Var = bVar.a;
        int flexItemCount = pc3Var.getFlexItemCount();
        ArrayList arrayListF = bVar.f(flexItemCount);
        b.C0129b c0129b = new b.C0129b();
        if (view == null || !(layoutParams instanceof FlexItem)) {
            c0129b.c = 1;
        } else {
            c0129b.c = ((FlexItem) layoutParams).getOrder();
        }
        if (i == -1 || i == flexItemCount || i >= pc3Var.getFlexItemCount()) {
            c0129b.b = flexItemCount;
        } else {
            c0129b.b = i;
            for (int i2 = i; i2 < flexItemCount; i2++) {
                ((b.C0129b) arrayListF.get(i2)).b++;
            }
        }
        arrayListF.add(c0129b);
        this.n = b.r(flexItemCount + 1, arrayListF, sparseIntArray);
        super.addView(view, i, layoutParams);
    }

    public final void b(Canvas canvas, boolean z, boolean z2) {
        int paddingLeft = getPaddingLeft();
        int iMax = Math.max(0, (getWidth() - getPaddingRight()) - paddingLeft);
        int size = this.q.size();
        for (int i = 0; i < size; i++) {
            a aVar = this.q.get(i);
            for (int i2 = 0; i2 < aVar.h; i2++) {
                int i3 = aVar.o + i2;
                View viewO = o(i3);
                if (viewO != null && viewO.getVisibility() != 8) {
                    LayoutParams layoutParams = (LayoutParams) viewO.getLayoutParams();
                    if (p(i3, i2)) {
                        n(canvas, z ? viewO.getRight() + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin : (viewO.getLeft() - ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin) - this.m, aVar.b, aVar.g);
                    }
                    if (i2 == aVar.h - 1 && (this.k & 4) > 0) {
                        n(canvas, z ? (viewO.getLeft() - ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin) - this.m : viewO.getRight() + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin, aVar.b, aVar.g);
                    }
                }
            }
            if (q(i)) {
                l(canvas, paddingLeft, z2 ? aVar.d : aVar.b - this.l, iMax);
            }
            if (r(i) && (this.j & 4) > 0) {
                l(canvas, paddingLeft, z2 ? aVar.b - this.l : aVar.d, iMax);
            }
        }
    }

    public final void c(Canvas canvas, boolean z, boolean z2) {
        int paddingTop = getPaddingTop();
        int iMax = Math.max(0, (getHeight() - getPaddingBottom()) - paddingTop);
        int size = this.q.size();
        for (int i = 0; i < size; i++) {
            a aVar = this.q.get(i);
            for (int i2 = 0; i2 < aVar.h; i2++) {
                int i3 = aVar.o + i2;
                View viewO = o(i3);
                if (viewO != null && viewO.getVisibility() != 8) {
                    LayoutParams layoutParams = (LayoutParams) viewO.getLayoutParams();
                    if (p(i3, i2)) {
                        l(canvas, aVar.a, z2 ? viewO.getBottom() + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin : (viewO.getTop() - ((ViewGroup.MarginLayoutParams) layoutParams).topMargin) - this.l, aVar.g);
                    }
                    if (i2 == aVar.h - 1 && (this.j & 4) > 0) {
                        l(canvas, aVar.a, z2 ? (viewO.getTop() - ((ViewGroup.MarginLayoutParams) layoutParams).topMargin) - this.l : viewO.getBottom() + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin, aVar.g);
                    }
                }
            }
            if (q(i)) {
                n(canvas, z ? aVar.c : aVar.a - this.m, paddingTop, iMax);
            }
            if (r(i) && (this.k & 4) > 0) {
                n(canvas, z ? aVar.a - this.m : aVar.c, paddingTop, iMax);
            }
        }
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    @Override // defpackage.pc3
    public final View d(int i) {
        return getChildAt(i);
    }

    @Override // defpackage.pc3
    public final int e(int i, int i2, int i3) {
        return ViewGroup.getChildMeasureSpec(i, i2, i3);
    }

    @Override // defpackage.pc3
    public final int f(View view) {
        return 0;
    }

    @Override // defpackage.pc3
    public final View g(int i) {
        return o(i);
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof LayoutParams) {
            LayoutParams layoutParams2 = (LayoutParams) layoutParams;
            LayoutParams layoutParams3 = new LayoutParams(layoutParams2);
            layoutParams3.b = 1;
            layoutParams3.c = 0.0f;
            layoutParams3.d = 1.0f;
            layoutParams3.e = -1;
            layoutParams3.f = -1.0f;
            layoutParams3.g = -1;
            layoutParams3.h = -1;
            layoutParams3.i = ViewCompat.MEASURED_SIZE_MASK;
            layoutParams3.j = ViewCompat.MEASURED_SIZE_MASK;
            layoutParams3.b = layoutParams2.b;
            layoutParams3.c = layoutParams2.c;
            layoutParams3.d = layoutParams2.d;
            layoutParams3.e = layoutParams2.e;
            layoutParams3.f = layoutParams2.f;
            layoutParams3.g = layoutParams2.g;
            layoutParams3.h = layoutParams2.h;
            layoutParams3.i = layoutParams2.i;
            layoutParams3.j = layoutParams2.j;
            layoutParams3.k = layoutParams2.k;
            return layoutParams3;
        }
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            LayoutParams layoutParams4 = new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams);
            layoutParams4.b = 1;
            layoutParams4.c = 0.0f;
            layoutParams4.d = 1.0f;
            layoutParams4.e = -1;
            layoutParams4.f = -1.0f;
            layoutParams4.g = -1;
            layoutParams4.h = -1;
            layoutParams4.i = ViewCompat.MEASURED_SIZE_MASK;
            layoutParams4.j = ViewCompat.MEASURED_SIZE_MASK;
            return layoutParams4;
        }
        LayoutParams layoutParams5 = new LayoutParams(layoutParams);
        layoutParams5.b = 1;
        layoutParams5.c = 0.0f;
        layoutParams5.d = 1.0f;
        layoutParams5.e = -1;
        layoutParams5.f = -1.0f;
        layoutParams5.g = -1;
        layoutParams5.h = -1;
        layoutParams5.i = ViewCompat.MEASURED_SIZE_MASK;
        layoutParams5.j = ViewCompat.MEASURED_SIZE_MASK;
        return layoutParams5;
    }

    @Override // defpackage.pc3
    public int getAlignContent() {
        return this.f;
    }

    @Override // defpackage.pc3
    public int getAlignItems() {
        return this.e;
    }

    public Drawable getDividerDrawableHorizontal() {
        return this.h;
    }

    public Drawable getDividerDrawableVertical() {
        return this.i;
    }

    @Override // defpackage.pc3
    public int getFlexDirection() {
        return this.b;
    }

    @Override // defpackage.pc3
    public int getFlexItemCount() {
        return getChildCount();
    }

    public List<a> getFlexLines() {
        ArrayList arrayList = new ArrayList(this.q.size());
        for (a aVar : this.q) {
            if (aVar.a() != 0) {
                arrayList.add(aVar);
            }
        }
        return arrayList;
    }

    @Override // defpackage.pc3
    public List<a> getFlexLinesInternal() {
        return this.q;
    }

    @Override // defpackage.pc3
    public int getFlexWrap() {
        return this.c;
    }

    public int getJustifyContent() {
        return this.d;
    }

    @Override // defpackage.pc3
    public int getLargestMainSize() {
        Iterator<a> it = this.q.iterator();
        int iMax = Integer.MIN_VALUE;
        while (it.hasNext()) {
            iMax = Math.max(iMax, it.next().e);
        }
        return iMax;
    }

    @Override // defpackage.pc3
    public int getMaxLine() {
        return this.g;
    }

    public int getShowDividerHorizontal() {
        return this.j;
    }

    public int getShowDividerVertical() {
        return this.k;
    }

    @Override // defpackage.pc3
    public int getSumOfCrossSize() {
        int size = this.q.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            a aVar = this.q.get(i2);
            if (q(i2)) {
                i += m() ? this.l : this.m;
            }
            if (r(i2)) {
                i += m() ? this.l : this.m;
            }
            i += aVar.g;
        }
        return i;
    }

    @Override // defpackage.pc3
    public final int h(View view, int i, int i2) {
        int i3;
        int i4;
        if (m()) {
            i3 = p(i, i2) ? this.m : 0;
            if ((this.k & 4) <= 0) {
                return i3;
            }
            i4 = this.m;
        } else {
            i3 = p(i, i2) ? this.l : 0;
            if ((this.j & 4) <= 0) {
                return i3;
            }
            i4 = this.l;
        }
        return i3 + i4;
    }

    @Override // defpackage.pc3
    public final int i(int i, int i2, int i3) {
        return ViewGroup.getChildMeasureSpec(i, i2, i3);
    }

    @Override // defpackage.pc3
    public final void j(a aVar) {
        if (m()) {
            if ((this.k & 4) > 0) {
                int i = aVar.e;
                int i2 = this.m;
                aVar.e = i + i2;
                aVar.f += i2;
                return;
            }
            return;
        }
        if ((this.j & 4) > 0) {
            int i3 = aVar.e;
            int i4 = this.l;
            aVar.e = i3 + i4;
            aVar.f += i4;
        }
    }

    @Override // defpackage.pc3
    public final void k(int i, View view) {
    }

    public final void l(Canvas canvas, int i, int i2, int i3) {
        Drawable drawable = this.h;
        if (drawable == null) {
            return;
        }
        drawable.setBounds(i, i2, i3 + i, this.l + i2);
        this.h.draw(canvas);
    }

    @Override // defpackage.pc3
    public final boolean m() {
        int i = this.b;
        return i == 0 || i == 1;
    }

    public final void n(Canvas canvas, int i, int i2, int i3) {
        Drawable drawable = this.i;
        if (drawable == null) {
            return;
        }
        drawable.setBounds(i, i2, this.m + i, i3 + i2);
        this.i.draw(canvas);
    }

    public final View o(int i) {
        if (i < 0) {
            return null;
        }
        int[] iArr = this.n;
        if (i >= iArr.length) {
            return null;
        }
        return getChildAt(iArr[i]);
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        if (this.i == null && this.h == null) {
            return;
        }
        if (this.j == 0 && this.k == 0) {
            return;
        }
        int layoutDirection = ViewCompat.getLayoutDirection(this);
        int i = this.b;
        if (i == 0) {
            b(canvas, layoutDirection == 1, this.c == 2);
            return;
        }
        if (i == 1) {
            b(canvas, layoutDirection != 1, this.c == 2);
            return;
        }
        if (i == 2) {
            boolean z = layoutDirection == 1;
            if (this.c == 2) {
                z = !z;
            }
            c(canvas, z, false);
            return;
        }
        if (i != 3) {
            return;
        }
        boolean z2 = layoutDirection == 1;
        if (this.c == 2) {
            z2 = !z2;
        }
        c(canvas, z2, true);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        boolean z2;
        int layoutDirection = ViewCompat.getLayoutDirection(this);
        int i5 = this.b;
        if (i5 == 0) {
            s(layoutDirection == 1, i, i2, i3, i4);
            return;
        }
        if (i5 == 1) {
            s(layoutDirection != 1, i, i2, i3, i4);
            return;
        }
        if (i5 == 2) {
            z2 = layoutDirection == 1;
            if (this.c == 2) {
                z2 = !z2;
            }
            t(i, i2, i3, i4, z2, false);
            return;
        }
        if (i5 != 3) {
            j2.c(this.b, "Invalid flex direction is set: ");
            return;
        }
        z2 = layoutDirection == 1;
        if (this.c == 2) {
            z2 = !z2;
        }
        t(i, i2, i3, i4, z2, true);
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        SparseIntArray sparseIntArray = this.o;
        if (sparseIntArray == null) {
            sparseIntArray = new SparseIntArray(getChildCount());
            this.o = sparseIntArray;
        }
        b bVar = this.p;
        pc3 pc3Var = bVar.a;
        int flexItemCount = pc3Var.getFlexItemCount();
        if (sparseIntArray.size() != flexItemCount) {
            SparseIntArray sparseIntArray2 = this.o;
            int flexItemCount2 = bVar.a.getFlexItemCount();
            this.n = b.r(flexItemCount2, bVar.f(flexItemCount2), sparseIntArray2);
            break;
        }
        for (int i3 = 0; i3 < flexItemCount; i3++) {
            View viewD = pc3Var.d(i3);
            if (viewD != null && ((FlexItem) viewD.getLayoutParams()).getOrder() != sparseIntArray.get(i3)) {
                SparseIntArray sparseIntArray3 = this.o;
                int flexItemCount3 = bVar.a.getFlexItemCount();
                this.n = b.r(flexItemCount3, bVar.f(flexItemCount3), sparseIntArray3);
                break;
            }
        }
        int i4 = this.b;
        b.a aVar = this.r;
        if (i4 != 0 && i4 != 1) {
            if (i4 != 2 && i4 != 3) {
                j2.c(this.b, "Invalid value for the flex direction is set: ");
                return;
            }
            this.q.clear();
            aVar.a = null;
            aVar.b = 0;
            this.p.b(this.r, i2, i, Integer.MAX_VALUE, 0, -1, null);
            this.q = aVar.a;
            bVar.h(i, i2, 0);
            bVar.g(i, i2, getPaddingRight() + getPaddingLeft());
            bVar.u(0);
            u(this.b, i, i2, aVar.b);
            return;
        }
        this.q.clear();
        aVar.a = null;
        aVar.b = 0;
        this.p.b(this.r, i, i2, Integer.MAX_VALUE, 0, -1, null);
        this.q = aVar.a;
        bVar.h(i, i2, 0);
        if (this.e == 3) {
            for (a aVar2 : this.q) {
                int iMax = Integer.MIN_VALUE;
                for (int i5 = 0; i5 < aVar2.h; i5++) {
                    View viewO = o(aVar2.o + i5);
                    if (viewO != null && viewO.getVisibility() != 8) {
                        LayoutParams layoutParams = (LayoutParams) viewO.getLayoutParams();
                        int i6 = this.c;
                        int i7 = aVar2.l;
                        iMax = i6 != 2 ? Math.max(iMax, viewO.getMeasuredHeight() + Math.max(i7 - viewO.getBaseline(), ((ViewGroup.MarginLayoutParams) layoutParams).topMargin) + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin) : Math.max(iMax, viewO.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + Math.max(viewO.getBaseline() + (i7 - viewO.getMeasuredHeight()), ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin));
                    }
                }
                aVar2.g = iMax;
            }
        }
        bVar.g(i, i2, getPaddingBottom() + getPaddingTop());
        bVar.u(0);
        u(this.b, i, i2, aVar.b);
    }

    public final boolean p(int i, int i2) {
        for (int i3 = 1; i3 <= i2; i3++) {
            View viewO = o(i - i3);
            if (viewO != null && viewO.getVisibility() != 8) {
                if (m()) {
                    return (this.k & 2) != 0;
                }
                return (this.j & 2) != 0;
            }
        }
        if (m()) {
            return (this.k & 1) != 0;
        }
        return (this.j & 1) != 0;
    }

    public final boolean q(int i) {
        if (i >= 0 && i < this.q.size()) {
            for (int i2 = 0; i2 < i; i2++) {
                if (this.q.get(i2).a() > 0) {
                    if (m()) {
                        return (this.j & 2) != 0;
                    }
                    return (this.k & 2) != 0;
                }
            }
            if (m()) {
                return (this.j & 1) != 0;
            }
            if ((this.k & 1) != 0) {
                return true;
            }
        }
        return false;
    }

    public final boolean r(int i) {
        if (i >= 0 && i < this.q.size()) {
            for (int i2 = i + 1; i2 < this.q.size(); i2++) {
                if (this.q.get(i2).a() > 0) {
                    return false;
                }
            }
            if (m()) {
                return (this.j & 4) != 0;
            }
            if ((this.k & 4) != 0) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:41:0x00c6  */
    /* JADX WARN: Code duplicated, block: B:43:0x00d1  */
    /* JADX WARN: Code duplicated, block: B:45:0x00db  */
    /* JADX WARN: Code duplicated, block: B:47:0x00e5  */
    /* JADX WARN: Code duplicated, block: B:49:0x00f9  */
    /* JADX WARN: Code duplicated, block: B:51:0x0103  */
    /* JADX WARN: Code duplicated, block: B:57:0x0117  */
    /* JADX WARN: Code duplicated, block: B:60:0x011d  */
    /* JADX WARN: Code duplicated, block: B:62:0x0122  */
    /* JADX WARN: Code duplicated, block: B:64:0x0147  */
    /* JADX WARN: Code duplicated, block: B:65:0x0169  */
    /* JADX WARN: Code duplicated, block: B:67:0x0179  */
    /* JADX WARN: Code duplicated, block: B:68:0x0191  */
    /* JADX WARN: Code duplicated, block: B:71:0x01c2  */
    /* JADX WARN: Code duplicated, block: B:73:0x01ce  */
    /* JADX WARN: Code duplicated, block: B:75:0x01df  */
    public final void s(boolean z, int i, int i2, int i3, int i4) {
        float measuredWidth;
        float f;
        float f2;
        float fMax;
        int i5;
        int i6;
        View viewO;
        boolean z2;
        int i7;
        int i8;
        float f3;
        float f4;
        int i9;
        float f5;
        int i10;
        View view;
        b bVar;
        a aVar;
        b bVar2;
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        int i11 = i3 - i;
        int paddingBottom = (i4 - i2) - getPaddingBottom();
        int paddingTop = getPaddingTop();
        int size = this.q.size();
        for (int i12 = 0; i12 < size; i12++) {
            a aVar2 = this.q.get(i12);
            if (q(i12)) {
                int i13 = this.l;
                paddingBottom -= i13;
                paddingTop += i13;
            }
            int i14 = paddingBottom;
            int i15 = this.d;
            char c = 4;
            int i16 = 2;
            boolean z3 = true;
            if (i15 == 0) {
                measuredWidth = paddingLeft;
                f = i11 - paddingRight;
            } else if (i15 != 1) {
                if (i15 == 2) {
                    int i17 = aVar2.e;
                    measuredWidth = paddingLeft + ((i11 - i17) / 2.0f);
                    f = (i11 - paddingRight) - ((i11 - i17) / 2.0f);
                } else if (i15 == 3) {
                    measuredWidth = paddingLeft;
                    int iA = aVar2.a();
                    f2 = (i11 - aVar2.e) / (iA != 1 ? iA - 1 : 1.0f);
                    f = i11 - paddingRight;
                } else if (i15 == 4) {
                    int iA2 = aVar2.a();
                    float f6 = iA2 != 0 ? (i11 - aVar2.e) / iA2 : 0.0f;
                    float f7 = f6 / 2.0f;
                    measuredWidth = paddingLeft + f7;
                    float f8 = (i11 - paddingRight) - f7;
                    f2 = f6;
                    f = f8;
                } else {
                    if (i15 != 5) {
                        j2.c(this.d, "Invalid justifyContent is set: ");
                        return;
                    }
                    int iA3 = aVar2.a();
                    f2 = iA3 != 0 ? (i11 - aVar2.e) / (iA3 + 1) : 0.0f;
                    measuredWidth = paddingLeft + f2;
                    f = (i11 - paddingRight) - f2;
                }
                fMax = Math.max(f2, 0.0f);
                i5 = 0;
                while (i5 < aVar2.h) {
                    i6 = aVar2.o + i5;
                    viewO = o(i6);
                    char c2 = c;
                    if (viewO != null) {
                        z2 = z3;
                        if (viewO.getVisibility() == 8) {
                            z2 = z2;
                        } else {
                            LayoutParams layoutParams = (LayoutParams) viewO.getLayoutParams();
                            f3 = measuredWidth + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
                            f4 = f - ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
                            if (p(i6, i5)) {
                                int i18 = this.m;
                                float f9 = i18;
                                f3 += f9;
                                f4 -= f9;
                                i9 = i18;
                            } else {
                                i9 = 0;
                            }
                            f5 = f4;
                            if (i5 == aVar2.h - 1 || (this.k & 4) <= 0) {
                                i10 = 0;
                            } else {
                                i10 = this.m;
                            }
                            if (this.c == i16) {
                                i8 = i16;
                                bVar2 = this.p;
                                if (z) {
                                    view = viewO;
                                    bVar2.o(view, aVar2, Math.round(f5) - viewO.getMeasuredWidth(), i14 - viewO.getMeasuredHeight(), Math.round(f5), i14);
                                } else {
                                    view = viewO;
                                    bVar2.o(view, aVar2, Math.round(f3), i14 - view.getMeasuredHeight(), view.getMeasuredWidth() + Math.round(f3), i14);
                                }
                                i7 = i14;
                            } else {
                                i5 = i5;
                                view = viewO;
                                z2 = z2;
                                i8 = i16;
                                i7 = i14;
                                bVar = this.p;
                                if (z) {
                                    bVar.o(view, aVar2, Math.round(f5) - view.getMeasuredWidth(), paddingTop, Math.round(f5), view.getMeasuredHeight() + paddingTop);
                                } else {
                                    int i19 = paddingTop;
                                    bVar.o(view, aVar2, Math.round(f3), i19, view.getMeasuredWidth() + Math.round(f3), view.getMeasuredHeight() + i19);
                                    paddingTop = i19;
                                }
                            }
                            measuredWidth = f3 + view.getMeasuredWidth() + fMax + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
                            float measuredWidth2 = f5 - ((view.getMeasuredWidth() + fMax) + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin);
                            if (z) {
                                aVar = aVar2;
                                aVar.b(view, i10, 0, i9, 0);
                            } else {
                                aVar = aVar2;
                                aVar.b(view, i9, 0, i10, 0);
                            }
                            aVar2 = aVar;
                            f = measuredWidth2;
                        }
                        i5++;
                        c = c2;
                        i16 = i8;
                        z3 = z2;
                        i14 = i7;
                    } else {
                        z2 = z3;
                    }
                    i8 = i16;
                    i5 = i5;
                    i7 = i14;
                    i5++;
                    c = c2;
                    i16 = i8;
                    z3 = z2;
                    i14 = i7;
                }
                int i20 = aVar2.g;
                paddingTop += i20;
                paddingBottom = i14 - i20;
            } else {
                int i21 = aVar2.e;
                f = i21 - paddingLeft;
                measuredWidth = (i11 - i21) + paddingRight;
            }
            f2 = 0.0f;
            fMax = Math.max(f2, 0.0f);
            i5 = 0;
            while (i5 < aVar2.h) {
                i6 = aVar2.o + i5;
                viewO = o(i6);
                char c3 = c;
                if (viewO != null) {
                    z2 = z3;
                    if (viewO.getVisibility() == 8) {
                        z2 = z2;
                    } else {
                        LayoutParams layoutParams2 = (LayoutParams) viewO.getLayoutParams();
                        f3 = measuredWidth + ((ViewGroup.MarginLayoutParams) layoutParams2).leftMargin;
                        f4 = f - ((ViewGroup.MarginLayoutParams) layoutParams2).rightMargin;
                        if (p(i6, i5)) {
                            int i110 = this.m;
                            float f10 = i110;
                            f3 += f10;
                            f4 -= f10;
                            i9 = i110;
                        } else {
                            i9 = 0;
                        }
                        f5 = f4;
                        if (i5 == aVar2.h - 1) {
                            i10 = 0;
                        } else {
                            i10 = 0;
                        }
                        if (this.c == i16) {
                            i8 = i16;
                            bVar2 = this.p;
                            if (z) {
                                view = viewO;
                                bVar2.o(view, aVar2, Math.round(f5) - viewO.getMeasuredWidth(), i14 - viewO.getMeasuredHeight(), Math.round(f5), i14);
                            } else {
                                view = viewO;
                                bVar2.o(view, aVar2, Math.round(f3), i14 - view.getMeasuredHeight(), view.getMeasuredWidth() + Math.round(f3), i14);
                            }
                            i7 = i14;
                        } else {
                            i5 = i5;
                            view = viewO;
                            z2 = z2;
                            i8 = i16;
                            i7 = i14;
                            bVar = this.p;
                            if (z) {
                                bVar.o(view, aVar2, Math.round(f5) - view.getMeasuredWidth(), paddingTop, Math.round(f5), view.getMeasuredHeight() + paddingTop);
                            } else {
                                int i111 = paddingTop;
                                bVar.o(view, aVar2, Math.round(f3), i111, view.getMeasuredWidth() + Math.round(f3), view.getMeasuredHeight() + i111);
                                paddingTop = i111;
                            }
                        }
                        measuredWidth = f3 + view.getMeasuredWidth() + fMax + ((ViewGroup.MarginLayoutParams) layoutParams2).rightMargin;
                        float measuredWidth3 = f5 - ((view.getMeasuredWidth() + fMax) + ((ViewGroup.MarginLayoutParams) layoutParams2).leftMargin);
                        if (z) {
                            aVar = aVar2;
                            aVar.b(view, i10, 0, i9, 0);
                        } else {
                            aVar = aVar2;
                            aVar.b(view, i9, 0, i10, 0);
                        }
                        aVar2 = aVar;
                        f = measuredWidth3;
                    }
                    i5++;
                    c = c3;
                    i16 = i8;
                    z3 = z2;
                    i14 = i7;
                } else {
                    z2 = z3;
                }
                i8 = i16;
                i5 = i5;
                i7 = i14;
                i5++;
                c = c3;
                i16 = i8;
                z3 = z2;
                i14 = i7;
            }
            int i22 = aVar2.g;
            paddingTop += i22;
            paddingBottom = i14 - i22;
        }
    }

    public void setAlignContent(int i) {
        if (this.f != i) {
            this.f = i;
            requestLayout();
        }
    }

    public void setAlignItems(int i) {
        if (this.e != i) {
            this.e = i;
            requestLayout();
        }
    }

    public void setDividerDrawable(Drawable drawable) {
        setDividerDrawableHorizontal(drawable);
        setDividerDrawableVertical(drawable);
    }

    public void setDividerDrawableHorizontal(Drawable drawable) {
        if (drawable == this.h) {
            return;
        }
        this.h = drawable;
        if (drawable != null) {
            this.l = drawable.getIntrinsicHeight();
        } else {
            this.l = 0;
        }
        if (this.h == null && this.i == null) {
            setWillNotDraw(true);
        } else {
            setWillNotDraw(false);
        }
        requestLayout();
    }

    public void setDividerDrawableVertical(Drawable drawable) {
        if (drawable == this.i) {
            return;
        }
        this.i = drawable;
        if (drawable != null) {
            this.m = drawable.getIntrinsicWidth();
        } else {
            this.m = 0;
        }
        if (this.h == null && this.i == null) {
            setWillNotDraw(true);
        } else {
            setWillNotDraw(false);
        }
        requestLayout();
    }

    public void setFlexDirection(int i) {
        if (this.b != i) {
            this.b = i;
            requestLayout();
        }
    }

    @Override // defpackage.pc3
    public void setFlexLines(List<a> list) {
        this.q = list;
    }

    public void setFlexWrap(int i) {
        if (this.c != i) {
            this.c = i;
            requestLayout();
        }
    }

    public void setJustifyContent(int i) {
        if (this.d != i) {
            this.d = i;
            requestLayout();
        }
    }

    public void setMaxLine(int i) {
        if (this.g != i) {
            this.g = i;
            requestLayout();
        }
    }

    public void setShowDivider(int i) {
        setShowDividerVertical(i);
        setShowDividerHorizontal(i);
    }

    public void setShowDividerHorizontal(int i) {
        if (i != this.j) {
            this.j = i;
            requestLayout();
        }
    }

    public void setShowDividerVertical(int i) {
        if (i != this.k) {
            this.k = i;
            requestLayout();
        }
    }

    /* JADX WARN: Code duplicated, block: B:41:0x00c2  */
    /* JADX WARN: Code duplicated, block: B:43:0x00cc  */
    /* JADX WARN: Code duplicated, block: B:46:0x00de  */
    /* JADX WARN: Code duplicated, block: B:48:0x00f2  */
    /* JADX WARN: Code duplicated, block: B:50:0x00fa  */
    /* JADX WARN: Code duplicated, block: B:57:0x010d  */
    /* JADX WARN: Code duplicated, block: B:60:0x0114 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:61:0x0116  */
    /* JADX WARN: Code duplicated, block: B:63:0x0137  */
    /* JADX WARN: Code duplicated, block: B:64:0x0154  */
    /* JADX WARN: Code duplicated, block: B:66:0x015c  */
    /* JADX WARN: Code duplicated, block: B:67:0x0176  */
    /* JADX WARN: Code duplicated, block: B:70:0x01ab  */
    /* JADX WARN: Code duplicated, block: B:72:0x01b6  */
    /* JADX WARN: Code duplicated, block: B:74:0x01c3  */
    public final void t(int i, int i2, int i3, int i4, boolean z, boolean z2) {
        float measuredHeight;
        float f;
        float f2;
        float fMax;
        int i5;
        int i6;
        int i7;
        View viewO;
        char c;
        int i8;
        int i9;
        float f3;
        float f4;
        int i10;
        float f5;
        int i11;
        b bVar;
        a aVar;
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int paddingRight = getPaddingRight();
        int paddingLeft = getPaddingLeft();
        int i12 = i4 - i2;
        int i13 = (i3 - i) - paddingRight;
        int size = this.q.size();
        for (int i14 = 0; i14 < size; i14++) {
            a aVar2 = this.q.get(i14);
            if (q(i14)) {
                int i15 = this.m;
                paddingLeft += i15;
                i13 -= i15;
            }
            int i16 = i13;
            int i17 = this.d;
            char c2 = 4;
            int i18 = 1;
            if (i17 == 0) {
                measuredHeight = paddingTop;
                f = i12 - paddingBottom;
            } else if (i17 != 1) {
                if (i17 == 2) {
                    float f6 = (i12 - aVar2.e) / 2.0f;
                    measuredHeight = paddingTop + f6;
                    f = (i12 - paddingBottom) - f6;
                } else if (i17 == 3) {
                    measuredHeight = paddingTop;
                    int iA = aVar2.a();
                    f2 = (i12 - aVar2.e) / (iA != 1 ? iA - 1 : 1.0f);
                    f = i12 - paddingBottom;
                } else if (i17 == 4) {
                    int iA2 = aVar2.a();
                    f2 = iA2 != 0 ? (i12 - aVar2.e) / iA2 : 0.0f;
                    float f7 = f2 / 2.0f;
                    measuredHeight = paddingTop + f7;
                    f = (i12 - paddingBottom) - f7;
                } else {
                    if (i17 != 5) {
                        j2.c(this.d, "Invalid justifyContent is set: ");
                        return;
                    }
                    int iA3 = aVar2.a();
                    f2 = iA3 != 0 ? (i12 - aVar2.e) / (iA3 + 1) : 0.0f;
                    measuredHeight = paddingTop + f2;
                    f = (i12 - paddingBottom) - f2;
                }
                fMax = Math.max(f2, 0.0f);
                i5 = 0;
                while (i5 < aVar2.h) {
                    i6 = aVar2.o + i5;
                    i7 = i18;
                    viewO = o(i6);
                    if (viewO != null) {
                        c = c2;
                        if (viewO.getVisibility() == 8) {
                            LayoutParams layoutParams = (LayoutParams) viewO.getLayoutParams();
                            f3 = measuredHeight + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
                            f4 = f - ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
                            if (p(i6, i5)) {
                                i10 = this.l;
                                float f8 = i10;
                                f3 += f8;
                                f4 -= f8;
                            } else {
                                i10 = 0;
                            }
                            f5 = f4;
                            if (i5 == aVar2.h - i7 || (this.j & 4) <= 0) {
                                i11 = 0;
                            } else {
                                i11 = this.l;
                            }
                            i9 = i5;
                            bVar = this.p;
                            if (z) {
                                if (z2) {
                                    bVar.p(viewO, aVar2, true, i16 - viewO.getMeasuredWidth(), Math.round(f5) - viewO.getMeasuredHeight(), i16, Math.round(f5));
                                } else {
                                    bVar.p(viewO, aVar2, true, i16 - viewO.getMeasuredWidth(), Math.round(f3), i16, viewO.getMeasuredHeight() + Math.round(f3));
                                }
                                i8 = i16;
                            } else {
                                i9 = i9;
                                i7 = i7;
                                i8 = i16;
                                if (z2) {
                                    bVar.p(viewO, aVar2, false, paddingLeft, Math.round(f5) - viewO.getMeasuredHeight(), viewO.getMeasuredWidth() + paddingLeft, Math.round(f5));
                                } else {
                                    int i19 = paddingLeft;
                                    bVar.p(viewO, aVar2, false, i19, Math.round(f3), viewO.getMeasuredWidth() + i19, viewO.getMeasuredHeight() + Math.round(f3));
                                    paddingLeft = i19;
                                }
                            }
                            measuredHeight = f3 + viewO.getMeasuredHeight() + fMax + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
                            float measuredHeight2 = f5 - ((viewO.getMeasuredHeight() + fMax) + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin);
                            if (z2) {
                                aVar = aVar2;
                                aVar.b(viewO, 0, i11, 0, i10);
                            } else {
                                aVar = aVar2;
                                aVar.b(viewO, 0, i10, 0, i11);
                            }
                            aVar2 = aVar;
                            f = measuredHeight2;
                        }
                        i5 = i9 + 1;
                        c2 = c;
                        i18 = i7;
                        i16 = i8;
                    } else {
                        c = c2;
                    }
                    i9 = i5;
                    i7 = i7;
                    i8 = i16;
                    i5 = i9 + 1;
                    c2 = c;
                    i18 = i7;
                    i16 = i8;
                }
                int i20 = aVar2.g;
                paddingLeft += i20;
                i13 = i16 - i20;
            } else {
                int i21 = aVar2.e;
                f = i21 - paddingTop;
                measuredHeight = (i12 - i21) + paddingBottom;
            }
            f2 = 0.0f;
            fMax = Math.max(f2, 0.0f);
            i5 = 0;
            while (i5 < aVar2.h) {
                i6 = aVar2.o + i5;
                i7 = i18;
                viewO = o(i6);
                if (viewO != null) {
                    c = c2;
                    if (viewO.getVisibility() == 8) {
                        LayoutParams layoutParams2 = (LayoutParams) viewO.getLayoutParams();
                        f3 = measuredHeight + ((ViewGroup.MarginLayoutParams) layoutParams2).topMargin;
                        f4 = f - ((ViewGroup.MarginLayoutParams) layoutParams2).bottomMargin;
                        if (p(i6, i5)) {
                            i10 = this.l;
                            float f9 = i10;
                            f3 += f9;
                            f4 -= f9;
                        } else {
                            i10 = 0;
                        }
                        f5 = f4;
                        if (i5 == aVar2.h - i7) {
                            i11 = 0;
                        } else {
                            i11 = 0;
                        }
                        i9 = i5;
                        bVar = this.p;
                        if (z) {
                            if (z2) {
                                bVar.p(viewO, aVar2, true, i16 - viewO.getMeasuredWidth(), Math.round(f5) - viewO.getMeasuredHeight(), i16, Math.round(f5));
                            } else {
                                bVar.p(viewO, aVar2, true, i16 - viewO.getMeasuredWidth(), Math.round(f3), i16, viewO.getMeasuredHeight() + Math.round(f3));
                            }
                            i8 = i16;
                        } else {
                            i9 = i9;
                            i7 = i7;
                            i8 = i16;
                            if (z2) {
                                bVar.p(viewO, aVar2, false, paddingLeft, Math.round(f5) - viewO.getMeasuredHeight(), viewO.getMeasuredWidth() + paddingLeft, Math.round(f5));
                            } else {
                                int i110 = paddingLeft;
                                bVar.p(viewO, aVar2, false, i110, Math.round(f3), viewO.getMeasuredWidth() + i110, viewO.getMeasuredHeight() + Math.round(f3));
                                paddingLeft = i110;
                            }
                        }
                        measuredHeight = f3 + viewO.getMeasuredHeight() + fMax + ((ViewGroup.MarginLayoutParams) layoutParams2).bottomMargin;
                        float measuredHeight3 = f5 - ((viewO.getMeasuredHeight() + fMax) + ((ViewGroup.MarginLayoutParams) layoutParams2).topMargin);
                        if (z2) {
                            aVar = aVar2;
                            aVar.b(viewO, 0, i11, 0, i10);
                        } else {
                            aVar = aVar2;
                            aVar.b(viewO, 0, i10, 0, i11);
                        }
                        aVar2 = aVar;
                        f = measuredHeight3;
                    }
                    i5 = i9 + 1;
                    c2 = c;
                    i18 = i7;
                    i16 = i8;
                } else {
                    c = c2;
                }
                i9 = i5;
                i7 = i7;
                i8 = i16;
                i5 = i9 + 1;
                c2 = c;
                i18 = i7;
                i16 = i8;
            }
            int i22 = aVar2.g;
            paddingLeft += i22;
            i13 = i16 - i22;
        }
    }

    public final void u(int i, int i2, int i3, int i4) {
        int paddingBottom;
        int largestMainSize;
        int iResolveSizeAndState;
        int iResolveSizeAndState2;
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        int mode2 = View.MeasureSpec.getMode(i3);
        int size2 = View.MeasureSpec.getSize(i3);
        if (i == 0 || i == 1) {
            paddingBottom = getPaddingBottom() + getPaddingTop() + getSumOfCrossSize();
            largestMainSize = getLargestMainSize();
        } else {
            if (i != 2 && i != 3) {
                fg.c(jh.b(i, "Invalid flex direction: "));
                return;
            }
            paddingBottom = getLargestMainSize();
            largestMainSize = getPaddingRight() + getPaddingLeft() + getSumOfCrossSize();
        }
        if (mode == Integer.MIN_VALUE) {
            if (size < largestMainSize) {
                i4 = View.combineMeasuredStates(i4, 16777216);
            } else {
                size = largestMainSize;
            }
            iResolveSizeAndState = View.resolveSizeAndState(size, i2, i4);
        } else if (mode == 0) {
            iResolveSizeAndState = View.resolveSizeAndState(largestMainSize, i2, i4);
        } else if (mode != 1073741824) {
            ah.f(jh.b(mode, "Unknown width mode is set: "));
            return;
        } else {
            if (size < largestMainSize) {
                i4 = View.combineMeasuredStates(i4, 16777216);
            }
            iResolveSizeAndState = View.resolveSizeAndState(size, i2, i4);
        }
        if (mode2 == Integer.MIN_VALUE) {
            if (size2 < paddingBottom) {
                i4 = View.combineMeasuredStates(i4, 256);
            } else {
                size2 = paddingBottom;
            }
            iResolveSizeAndState2 = View.resolveSizeAndState(size2, i3, i4);
        } else if (mode2 == 0) {
            iResolveSizeAndState2 = View.resolveSizeAndState(paddingBottom, i3, i4);
        } else if (mode2 != 1073741824) {
            ah.f(jh.b(mode2, "Unknown height mode is set: "));
            return;
        } else {
            if (size2 < paddingBottom) {
                i4 = View.combineMeasuredStates(i4, 256);
            }
            iResolveSizeAndState2 = View.resolveSizeAndState(size2, i3, i4);
        }
        setMeasuredDimension(iResolveSizeAndState, iResolveSizeAndState2);
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        Context context = getContext();
        LayoutParams layoutParams = new LayoutParams(context, attributeSet);
        layoutParams.b = 1;
        layoutParams.c = 0.0f;
        layoutParams.d = 1.0f;
        layoutParams.e = -1;
        layoutParams.f = -1.0f;
        layoutParams.g = -1;
        layoutParams.h = -1;
        layoutParams.i = ViewCompat.MEASURED_SIZE_MASK;
        layoutParams.j = ViewCompat.MEASURED_SIZE_MASK;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, tw6.b);
        layoutParams.b = typedArrayObtainStyledAttributes.getInt(8, 1);
        layoutParams.c = typedArrayObtainStyledAttributes.getFloat(2, 0.0f);
        layoutParams.d = typedArrayObtainStyledAttributes.getFloat(3, 1.0f);
        layoutParams.e = typedArrayObtainStyledAttributes.getInt(0, -1);
        layoutParams.f = typedArrayObtainStyledAttributes.getFraction(1, 1, 1, -1.0f);
        layoutParams.g = typedArrayObtainStyledAttributes.getDimensionPixelSize(7, -1);
        layoutParams.h = typedArrayObtainStyledAttributes.getDimensionPixelSize(6, -1);
        layoutParams.i = typedArrayObtainStyledAttributes.getDimensionPixelSize(5, ViewCompat.MEASURED_SIZE_MASK);
        layoutParams.j = typedArrayObtainStyledAttributes.getDimensionPixelSize(4, ViewCompat.MEASURED_SIZE_MASK);
        layoutParams.k = typedArrayObtainStyledAttributes.getBoolean(9, false);
        typedArrayObtainStyledAttributes.recycle();
        return layoutParams;
    }

    public FlexboxLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public FlexboxLayout(Context context) {
        this(context, null);
    }
}
