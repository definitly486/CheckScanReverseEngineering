package com.google.android.flexbox;

import android.content.Context;
import android.graphics.PointF;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.LinearSmoothScroller;
import androidx.recyclerview.widget.OrientationHelper;
import androidx.recyclerview.widget.RecyclerView;
import defpackage.j2;
import defpackage.pc3;
import defpackage.rg;
import defpackage.sg;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class FlexboxLayoutManager extends RecyclerView.LayoutManager implements pc3, RecyclerView.SmoothScroller.ScrollVectorProvider {
    public static final Rect D = new Rect();
    public View A;
    public int e;
    public int f;
    public int g;
    public int h;
    public boolean j;
    public boolean k;
    public RecyclerView.Recycler n;
    public RecyclerView.State o;
    public b p;
    public OrientationHelper r;
    public OrientationHelper s;
    public SavedState t;
    public final Context z;
    public final int i = -1;
    public List<com.google.android.flexbox.a> l = new ArrayList();
    public final com.google.android.flexbox.b m = new com.google.android.flexbox.b(this);
    public final a q = new a();
    public int u = -1;
    public int v = Integer.MIN_VALUE;
    public int w = Integer.MIN_VALUE;
    public int x = Integer.MIN_VALUE;
    public final SparseArray<View> y = new SparseArray<>();
    public int B = -1;
    public final com.google.android.flexbox.b.a C = new com.google.android.flexbox.b.a();

    /* JADX INFO: loaded from: classes.dex */
    public static class LayoutParams extends RecyclerView.LayoutParams implements FlexItem {
        public static final Parcelable.Creator<LayoutParams> CREATOR = new a();
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
                LayoutParams layoutParams = new LayoutParams(-2, -2);
                layoutParams.c = 0.0f;
                layoutParams.d = 1.0f;
                layoutParams.e = -1;
                layoutParams.f = -1.0f;
                layoutParams.i = ViewCompat.MEASURED_SIZE_MASK;
                layoutParams.j = ViewCompat.MEASURED_SIZE_MASK;
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

        public LayoutParams() {
            super(-2, -2);
            this.c = 0.0f;
            this.d = 1.0f;
            this.e = -1;
            this.f = -1.0f;
            this.i = ViewCompat.MEASURED_SIZE_MASK;
            this.j = ViewCompat.MEASURED_SIZE_MASK;
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
            return 1;
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

    /* JADX INFO: loaded from: classes.dex */
    public static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();
        public int b;
        public int c;

        public class a implements Parcelable.Creator<SavedState> {
            @Override // android.os.Parcelable.Creator
            public final SavedState createFromParcel(Parcel parcel) {
                SavedState savedState = new SavedState();
                savedState.b = parcel.readInt();
                savedState.c = parcel.readInt();
                return savedState;
            }

            @Override // android.os.Parcelable.Creator
            public final SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("SavedState{mAnchorPosition=");
            sb.append(this.b);
            sb.append(", mAnchorOffset=");
            return rg.h(sb, this.c, '}');
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.b);
            parcel.writeInt(this.c);
        }
    }

    public class a {
        public int a;
        public int b;
        public int c;
        public int d = 0;
        public boolean e;
        public boolean f;
        public boolean g;

        public a() {
        }

        public final void a() {
            FlexboxLayoutManager flexboxLayoutManager = FlexboxLayoutManager.this;
            if (!flexboxLayoutManager.m() && flexboxLayoutManager.j) {
                this.c = this.e ? flexboxLayoutManager.r.getEndAfterPadding() : flexboxLayoutManager.getWidth() - flexboxLayoutManager.r.getStartAfterPadding();
                return;
            }
            boolean z = this.e;
            OrientationHelper orientationHelper = flexboxLayoutManager.r;
            this.c = z ? orientationHelper.getEndAfterPadding() : orientationHelper.getStartAfterPadding();
        }

        public final void b() {
            this.a = -1;
            this.b = -1;
            this.c = Integer.MIN_VALUE;
            this.f = false;
            this.g = false;
            FlexboxLayoutManager flexboxLayoutManager = FlexboxLayoutManager.this;
            boolean zM = flexboxLayoutManager.m();
            int i = flexboxLayoutManager.f;
            if (zM) {
                if (i == 0) {
                    this.e = flexboxLayoutManager.e == 1;
                    return;
                } else {
                    this.e = i == 2;
                    return;
                }
            }
            if (i == 0) {
                this.e = flexboxLayoutManager.e == 3;
            } else {
                this.e = i == 2;
            }
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("AnchorInfo{mPosition=");
            sb.append(this.a);
            sb.append(", mFlexLinePosition=");
            sb.append(this.b);
            sb.append(", mCoordinate=");
            sb.append(this.c);
            sb.append(", mPerpendicularCoordinate=");
            sb.append(this.d);
            sb.append(", mLayoutFromEnd=");
            sb.append(this.e);
            sb.append(", mValid=");
            sb.append(this.f);
            sb.append(", mAssignedFromSavedState=");
            return sg.d(sb, this.g, '}');
        }
    }

    public static class b {
        public int a;
        public boolean b;
        public int c;
        public int d;
        public int e;
        public int f;
        public int g;
        public int h;
        public boolean i;

        public final String toString() {
            StringBuilder sb = new StringBuilder("LayoutState{mAvailable=");
            sb.append(this.a);
            sb.append(", mFlexLinePosition=");
            sb.append(this.c);
            sb.append(", mPosition=");
            sb.append(this.d);
            sb.append(", mOffset=");
            sb.append(this.e);
            sb.append(", mScrollingOffset=");
            sb.append(this.f);
            sb.append(", mLastScrollDelta=");
            sb.append(this.g);
            sb.append(", mItemDirection=1, mLayoutDirection=");
            return rg.h(sb, this.h, '}');
        }
    }

    public FlexboxLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        RecyclerView.LayoutManager.Properties properties = RecyclerView.LayoutManager.getProperties(context, attributeSet, i, i2);
        int i3 = properties.orientation;
        if (i3 != 0) {
            if (i3 == 1) {
                if (properties.reverseLayout) {
                    B(3);
                } else {
                    B(2);
                }
            }
        } else if (properties.reverseLayout) {
            B(1);
        } else {
            B(0);
        }
        C(1);
        A(4);
        this.z = context;
    }

    public static boolean isMeasurementUpToDate(int i, int i2, int i3) {
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        if (i3 > 0 && i != i3) {
            return false;
        }
        if (mode == Integer.MIN_VALUE) {
            return size >= i;
        }
        if (mode != 0) {
            return mode == 1073741824 && size == i;
        }
        return true;
    }

    public final void A(int i) {
        int i2 = this.h;
        if (i2 != i) {
            if (i2 == 4 || i == 4) {
                removeAllViews();
                this.l.clear();
                a aVar = this.q;
                aVar.b();
                aVar.d = 0;
            }
            this.h = i;
            requestLayout();
        }
    }

    public final void B(int i) {
        if (this.e != i) {
            removeAllViews();
            this.e = i;
            this.r = null;
            this.s = null;
            this.l.clear();
            a aVar = this.q;
            aVar.b();
            aVar.d = 0;
            requestLayout();
        }
    }

    public final void C(int i) {
        int i2 = this.f;
        if (i2 != 1) {
            if (i2 == 0) {
                removeAllViews();
                this.l.clear();
                a aVar = this.q;
                aVar.b();
                aVar.d = 0;
            }
            this.f = 1;
            this.r = null;
            this.s = null;
            requestLayout();
        }
    }

    public final void D(int i) {
        if (this.g != i) {
            this.g = i;
            requestLayout();
        }
    }

    public final boolean E(View view, int i, int i2, LayoutParams layoutParams) {
        return (!view.isLayoutRequested() && isMeasurementCacheEnabled() && isMeasurementUpToDate(view.getWidth(), i, ((ViewGroup.MarginLayoutParams) layoutParams).width) && isMeasurementUpToDate(view.getHeight(), i2, ((ViewGroup.MarginLayoutParams) layoutParams).height)) ? false : true;
    }

    public final void F(int i) {
        View viewT = t(getChildCount() - 1, -1);
        if (i >= (viewT != null ? getPosition(viewT) : -1)) {
            return;
        }
        int childCount = getChildCount();
        com.google.android.flexbox.b bVar = this.m;
        bVar.j(childCount);
        bVar.k(childCount);
        bVar.i(childCount);
        if (i >= bVar.c.length) {
            return;
        }
        this.B = i;
        View childAt = getChildAt(0);
        if (childAt == null) {
            return;
        }
        this.u = getPosition(childAt);
        if (m() || !this.j) {
            this.v = this.r.getDecoratedStart(childAt) - this.r.getStartAfterPadding();
        } else {
            this.v = this.r.getEndPadding() + this.r.getDecoratedEnd(childAt);
        }
    }

    public final void G(a aVar, boolean z, boolean z2) {
        int i;
        if (z2) {
            z();
        } else {
            this.p.b = false;
        }
        if (m() || !this.j) {
            this.p.a = this.r.getEndAfterPadding() - aVar.c;
        } else {
            this.p.a = aVar.c - getPaddingRight();
        }
        b bVar = this.p;
        bVar.d = aVar.a;
        bVar.h = 1;
        bVar.e = aVar.c;
        bVar.f = Integer.MIN_VALUE;
        bVar.c = aVar.b;
        if (!z || this.l.size() <= 1 || (i = aVar.b) < 0 || i >= this.l.size() - 1) {
            return;
        }
        com.google.android.flexbox.a aVar2 = this.l.get(aVar.b);
        b bVar2 = this.p;
        bVar2.c++;
        bVar2.d += aVar2.h;
    }

    public final void H(a aVar, boolean z, boolean z2) {
        if (z2) {
            z();
        } else {
            this.p.b = false;
        }
        if (m() || !this.j) {
            this.p.a = aVar.c - this.r.getStartAfterPadding();
        } else {
            this.p.a = (this.A.getWidth() - aVar.c) - this.r.getStartAfterPadding();
        }
        b bVar = this.p;
        bVar.d = aVar.a;
        bVar.h = -1;
        bVar.e = aVar.c;
        bVar.f = Integer.MIN_VALUE;
        int i = aVar.b;
        bVar.c = i;
        if (!z || i <= 0) {
            return;
        }
        int size = this.l.size();
        int i2 = aVar.b;
        if (size > i2) {
            com.google.android.flexbox.a aVar2 = this.l.get(i2);
            b bVar2 = this.p;
            bVar2.c--;
            bVar2.d -= aVar2.h;
        }
    }

    @Override // defpackage.pc3
    public final void a(View view, int i, int i2, com.google.android.flexbox.a aVar) {
        calculateItemDecorationsForChild(view, D);
        if (m()) {
            int rightDecorationWidth = getRightDecorationWidth(view) + getLeftDecorationWidth(view);
            aVar.e += rightDecorationWidth;
            aVar.f += rightDecorationWidth;
            return;
        }
        int bottomDecorationHeight = getBottomDecorationHeight(view) + getTopDecorationHeight(view);
        aVar.e += bottomDecorationHeight;
        aVar.f += bottomDecorationHeight;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean canScrollHorizontally() {
        if (this.f == 0) {
            return m();
        }
        if (!m()) {
            return true;
        }
        int width = getWidth();
        View view = this.A;
        return width > (view != null ? view.getWidth() : 0);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean canScrollVertically() {
        if (this.f == 0) {
            return !m();
        }
        if (!m()) {
            int height = getHeight();
            View view = this.A;
            if (height <= (view != null ? view.getHeight() : 0)) {
                return false;
            }
        }
        return true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final boolean checkLayoutParams(RecyclerView.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int computeHorizontalScrollExtent(RecyclerView.State state) {
        return computeScrollExtent(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int computeHorizontalScrollOffset(RecyclerView.State state) {
        return computeScrollOffset(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int computeHorizontalScrollRange(RecyclerView.State state) {
        return computeScrollRange(state);
    }

    public final int computeScrollExtent(RecyclerView.State state) {
        if (getChildCount() == 0) {
            return 0;
        }
        int itemCount = state.getItemCount();
        n();
        View viewP = p(itemCount);
        View viewR = r(itemCount);
        if (state.getItemCount() == 0 || viewP == null || viewR == null) {
            return 0;
        }
        return Math.min(this.r.getTotalSpace(), this.r.getDecoratedEnd(viewR) - this.r.getDecoratedStart(viewP));
    }

    public final int computeScrollOffset(RecyclerView.State state) {
        if (getChildCount() == 0) {
            return 0;
        }
        int itemCount = state.getItemCount();
        View viewP = p(itemCount);
        View viewR = r(itemCount);
        if (state.getItemCount() != 0 && viewP != null && viewR != null) {
            int position = getPosition(viewP);
            int position2 = getPosition(viewR);
            int iAbs = Math.abs(this.r.getDecoratedEnd(viewR) - this.r.getDecoratedStart(viewP));
            int[] iArr = this.m.c;
            int i = iArr[position];
            if (i != 0 && i != -1) {
                return Math.round((i * (iAbs / ((iArr[position2] - i) + 1))) + (this.r.getStartAfterPadding() - this.r.getDecoratedStart(viewP)));
            }
        }
        return 0;
    }

    public final int computeScrollRange(RecyclerView.State state) {
        if (getChildCount() != 0) {
            int itemCount = state.getItemCount();
            View viewP = p(itemCount);
            View viewR = r(itemCount);
            if (state.getItemCount() != 0 && viewP != null && viewR != null) {
                View viewT = t(0, getChildCount());
                int position = viewT == null ? -1 : getPosition(viewT);
                View viewT2 = t(getChildCount() - 1, -1);
                return (int) ((Math.abs(this.r.getDecoratedEnd(viewR) - this.r.getDecoratedStart(viewP)) / (((viewT2 != null ? getPosition(viewT2) : -1) - position) + 1)) * state.getItemCount());
            }
        }
        return 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.SmoothScroller.ScrollVectorProvider
    public final PointF computeScrollVectorForPosition(int i) {
        View childAt;
        if (getChildCount() == 0 || (childAt = getChildAt(0)) == null) {
            return null;
        }
        int i2 = i < getPosition(childAt) ? -1 : 1;
        return m() ? new PointF(0.0f, i2) : new PointF(i2, 0.0f);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int computeVerticalScrollExtent(RecyclerView.State state) {
        return computeScrollExtent(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int computeVerticalScrollOffset(RecyclerView.State state) {
        return computeScrollOffset(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int computeVerticalScrollRange(RecyclerView.State state) {
        return computeScrollRange(state);
    }

    @Override // defpackage.pc3
    public final View d(int i) {
        View view = this.y.get(i);
        return view != null ? view : this.n.getViewForPosition(i);
    }

    @Override // defpackage.pc3
    public final int e(int i, int i2, int i3) {
        return RecyclerView.LayoutManager.getChildMeasureSpec(getHeight(), getHeightMode(), i2, i3, canScrollVertically());
    }

    @Override // defpackage.pc3
    public final int f(View view) {
        int leftDecorationWidth;
        int rightDecorationWidth;
        if (m()) {
            leftDecorationWidth = getTopDecorationHeight(view);
            rightDecorationWidth = getBottomDecorationHeight(view);
        } else {
            leftDecorationWidth = getLeftDecorationWidth(view);
            rightDecorationWidth = getRightDecorationWidth(view);
        }
        return rightDecorationWidth + leftDecorationWidth;
    }

    public final int fixLayoutEndGap(int i, RecyclerView.Recycler recycler, RecyclerView.State state, boolean z) {
        int iW;
        int endAfterPadding;
        if (m() || !this.j) {
            int endAfterPadding2 = this.r.getEndAfterPadding() - i;
            if (endAfterPadding2 <= 0) {
                return 0;
            }
            iW = -w(-endAfterPadding2, recycler, state);
        } else {
            int startAfterPadding = i - this.r.getStartAfterPadding();
            if (startAfterPadding <= 0) {
                return 0;
            }
            iW = w(startAfterPadding, recycler, state);
        }
        int i2 = i + iW;
        if (!z || (endAfterPadding = this.r.getEndAfterPadding() - i2) <= 0) {
            return iW;
        }
        this.r.offsetChildren(endAfterPadding);
        return endAfterPadding + iW;
    }

    public final int fixLayoutStartGap(int i, RecyclerView.Recycler recycler, RecyclerView.State state, boolean z) {
        int iW;
        int startAfterPadding;
        if (m() || !this.j) {
            int startAfterPadding2 = i - this.r.getStartAfterPadding();
            if (startAfterPadding2 <= 0) {
                return 0;
            }
            iW = -w(startAfterPadding2, recycler, state);
        } else {
            int endAfterPadding = this.r.getEndAfterPadding() - i;
            if (endAfterPadding <= 0) {
                return 0;
            }
            iW = w(-endAfterPadding, recycler, state);
        }
        int i2 = i + iW;
        if (!z || (startAfterPadding = i2 - this.r.getStartAfterPadding()) <= 0) {
            return iW;
        }
        this.r.offsetChildren(-startAfterPadding);
        return iW - startAfterPadding;
    }

    @Override // defpackage.pc3
    public final View g(int i) {
        return d(i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final RecyclerView.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final RecyclerView.LayoutParams generateLayoutParams(Context context, AttributeSet attributeSet) {
        LayoutParams layoutParams = new LayoutParams(context, attributeSet);
        layoutParams.c = 0.0f;
        layoutParams.d = 1.0f;
        layoutParams.e = -1;
        layoutParams.f = -1.0f;
        layoutParams.i = ViewCompat.MEASURED_SIZE_MASK;
        layoutParams.j = ViewCompat.MEASURED_SIZE_MASK;
        return layoutParams;
    }

    @Override // defpackage.pc3
    public final int getAlignContent() {
        return 5;
    }

    @Override // defpackage.pc3
    public final int getAlignItems() {
        return this.h;
    }

    @Override // defpackage.pc3
    public final int getFlexDirection() {
        return this.e;
    }

    @Override // defpackage.pc3
    public final int getFlexItemCount() {
        return this.o.getItemCount();
    }

    @Override // defpackage.pc3
    public final List<com.google.android.flexbox.a> getFlexLinesInternal() {
        return this.l;
    }

    @Override // defpackage.pc3
    public final int getFlexWrap() {
        return this.f;
    }

    @Override // defpackage.pc3
    public final int getLargestMainSize() {
        if (this.l.size() == 0) {
            return 0;
        }
        int size = this.l.size();
        int iMax = Integer.MIN_VALUE;
        for (int i = 0; i < size; i++) {
            iMax = Math.max(iMax, this.l.get(i).e);
        }
        return iMax;
    }

    @Override // defpackage.pc3
    public final int getMaxLine() {
        return this.i;
    }

    @Override // defpackage.pc3
    public final int getSumOfCrossSize() {
        int size = this.l.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            i += this.l.get(i2).g;
        }
        return i;
    }

    @Override // defpackage.pc3
    public final int h(View view, int i, int i2) {
        int topDecorationHeight;
        int bottomDecorationHeight;
        if (m()) {
            topDecorationHeight = getLeftDecorationWidth(view);
            bottomDecorationHeight = getRightDecorationWidth(view);
        } else {
            topDecorationHeight = getTopDecorationHeight(view);
            bottomDecorationHeight = getBottomDecorationHeight(view);
        }
        return bottomDecorationHeight + topDecorationHeight;
    }

    @Override // defpackage.pc3
    public final int i(int i, int i2, int i3) {
        return RecyclerView.LayoutManager.getChildMeasureSpec(getWidth(), getWidthMode(), i2, i3, canScrollHorizontally());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final boolean isAutoMeasureEnabled() {
        return true;
    }

    @Override // defpackage.pc3
    public final void j(com.google.android.flexbox.a aVar) {
    }

    @Override // defpackage.pc3
    public final void k(int i, View view) {
        this.y.put(i, view);
    }

    @Override // defpackage.pc3
    public final boolean m() {
        int i = this.e;
        return i == 0 || i == 1;
    }

    public final void n() {
        if (this.r != null) {
            return;
        }
        boolean zM = m();
        int i = this.f;
        if (zM) {
            if (i == 0) {
                this.r = OrientationHelper.createHorizontalHelper(this);
                this.s = OrientationHelper.createVerticalHelper(this);
                return;
            } else {
                this.r = OrientationHelper.createVerticalHelper(this);
                this.s = OrientationHelper.createHorizontalHelper(this);
                return;
            }
        }
        if (i == 0) {
            this.r = OrientationHelper.createVerticalHelper(this);
            this.s = OrientationHelper.createHorizontalHelper(this);
        } else {
            this.r = OrientationHelper.createHorizontalHelper(this);
            this.s = OrientationHelper.createVerticalHelper(this);
        }
    }

    /* JADX WARN: Code duplicated, block: B:121:0x02b0  */
    /* JADX WARN: Code duplicated, block: B:123:0x02b7  */
    /* JADX WARN: Code duplicated, block: B:124:0x02c7  */
    /* JADX WARN: Code duplicated, block: B:126:0x02e3  */
    /* JADX WARN: Code duplicated, block: B:129:0x0304  */
    /* JADX WARN: Code duplicated, block: B:131:0x030f  */
    /* JADX WARN: Code duplicated, block: B:134:0x0331 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:135:0x0333  */
    /* JADX WARN: Code duplicated, block: B:136:0x0354  */
    /* JADX WARN: Code duplicated, block: B:137:0x0374  */
    /* JADX WARN: Code duplicated, block: B:139:0x037e  */
    /* JADX WARN: Code duplicated, block: B:140:0x0396  */
    /* JADX WARN: Code duplicated, block: B:63:0x011a  */
    /* JADX WARN: Code duplicated, block: B:65:0x0121  */
    /* JADX WARN: Code duplicated, block: B:66:0x012e  */
    /* JADX WARN: Code duplicated, block: B:68:0x0137  */
    /* JADX WARN: Code duplicated, block: B:69:0x013e  */
    /* JADX WARN: Code duplicated, block: B:72:0x015c  */
    /* JADX WARN: Code duplicated, block: B:75:0x0180  */
    /* JADX WARN: Code duplicated, block: B:76:0x01a3  */
    public final int o(RecyclerView.Recycler recycler, RecyclerView.State state, b bVar) {
        int i;
        int i2;
        boolean z;
        int i3;
        float f;
        float f2;
        float f3;
        float f4;
        float f5;
        float fMax;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        View viewD;
        int i9;
        int i10;
        int i11;
        LayoutParams layoutParams;
        float topDecorationHeight;
        float bottomDecorationHeight;
        Rect rect;
        int leftDecorationWidth;
        int rightDecorationWidth;
        int i12;
        boolean z2;
        boolean z3;
        int i13;
        com.google.android.flexbox.b bVar2;
        int i14;
        int i15;
        int i16;
        float bottomDecorationHeight2;
        float topDecorationHeight2;
        float f6;
        float f7;
        float f8;
        float f9;
        float leftDecorationWidth2;
        float fMax2;
        int i17;
        int i18;
        int i19;
        View viewD2;
        int i20;
        int i21;
        LayoutParams layoutParams2;
        float leftDecorationWidth3;
        float rightDecorationWidth2;
        int topDecorationHeight3;
        boolean z4;
        com.google.android.flexbox.b bVar3;
        Rect rect2;
        int i22 = bVar.f;
        if (i22 != Integer.MIN_VALUE) {
            int i23 = bVar.a;
            if (i23 < 0) {
                bVar.f = i22 + i23;
            }
            y(recycler, bVar);
        }
        int i24 = bVar.a;
        boolean zM = m();
        int i25 = i24;
        int i26 = 0;
        while (true) {
            if (i25 <= 0 && !this.p.b) {
                break;
            }
            List<com.google.android.flexbox.a> list = this.l;
            int i27 = bVar.d;
            if (i27 < 0 || i27 >= state.getItemCount() || (i = bVar.c) < 0 || i >= list.size()) {
                break;
            }
            com.google.android.flexbox.a aVar = this.l.get(bVar.c);
            bVar.d = aVar.o;
            boolean zM2 = m();
            a aVar2 = this.q;
            Rect rect3 = D;
            com.google.android.flexbox.b bVar4 = this.m;
            if (zM2) {
                int paddingLeft = getPaddingLeft();
                int paddingRight = getPaddingRight();
                int width = getWidth();
                int i28 = bVar.e;
                if (bVar.h == -1) {
                    i28 -= aVar.g;
                }
                int i29 = i28;
                int i30 = bVar.d;
                int i31 = this.g;
                if (i31 != 0) {
                    i2 = i24;
                    if (i31 != 1) {
                        if (i31 == 2) {
                            float f10 = paddingLeft;
                            float f11 = (width - aVar.e) / 2.0f;
                            f7 = (width - paddingRight) - f11;
                            f6 = f10 + f11;
                        } else if (i31 == 3) {
                            f6 = paddingLeft;
                            int i32 = aVar.h;
                            f8 = (width - aVar.e) / (i32 != 1 ? i32 - 1 : 1.0f);
                            f7 = width - paddingRight;
                        } else if (i31 == 4) {
                            int i33 = aVar.h;
                            f8 = i33 != 0 ? (width - aVar.e) / i33 : 0.0f;
                            float f12 = f8 / 2.0f;
                            f6 = paddingLeft + f12;
                            f7 = (width - paddingRight) - f12;
                        } else {
                            if (i31 != 5) {
                                j2.c(this.g, "Invalid justifyContent is set: ");
                                return 0;
                            }
                            int i34 = aVar.h;
                            f8 = i34 != 0 ? (width - aVar.e) / (i34 + 1) : 0.0f;
                            f6 = paddingLeft + f8;
                            f7 = (width - paddingRight) - f8;
                        }
                        float f13 = aVar2.d;
                        f9 = f6 - f13;
                        leftDecorationWidth2 = f7 - f13;
                        fMax2 = Math.max(f8, 0.0f);
                        i17 = aVar.h;
                        i18 = i30;
                        i19 = 0;
                        while (i18 < i30 + i17) {
                            int i35 = i30;
                            viewD2 = d(i18);
                            if (viewD2 == null) {
                                i18 = i18;
                                rect2 = rect3;
                            } else {
                                if (bVar.h == 1) {
                                    calculateItemDecorationsForChild(viewD2, rect3);
                                    addView(viewD2);
                                } else {
                                    calculateItemDecorationsForChild(viewD2, rect3);
                                    addView(viewD2, i19);
                                    i19++;
                                }
                                long j = bVar4.d[i18];
                                i20 = (int) j;
                                i21 = (int) (j >> 32);
                                layoutParams2 = (LayoutParams) viewD2.getLayoutParams();
                                if (E(viewD2, i20, i21, layoutParams2)) {
                                    viewD2.measure(i20, i21);
                                }
                                leftDecorationWidth3 = f9 + getLeftDecorationWidth(viewD2) + ((ViewGroup.MarginLayoutParams) layoutParams2).leftMargin;
                                rightDecorationWidth2 = leftDecorationWidth2 - (getRightDecorationWidth(viewD2) + ((ViewGroup.MarginLayoutParams) layoutParams2).rightMargin);
                                topDecorationHeight3 = getTopDecorationHeight(viewD2) + i29;
                                z4 = this.j;
                                bVar3 = this.m;
                                if (z4) {
                                    rect2 = rect3;
                                    bVar3.o(viewD2, aVar, Math.round(rightDecorationWidth2) - viewD2.getMeasuredWidth(), topDecorationHeight3, Math.round(rightDecorationWidth2), viewD2.getMeasuredHeight() + topDecorationHeight3);
                                } else {
                                    rect2 = rect3;
                                    bVar3.o(viewD2, aVar, Math.round(leftDecorationWidth3), topDecorationHeight3, viewD2.getMeasuredWidth() + Math.round(leftDecorationWidth3), viewD2.getMeasuredHeight() + topDecorationHeight3);
                                }
                                float rightDecorationWidth3 = getRightDecorationWidth(viewD2) + viewD2.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) layoutParams2).rightMargin + fMax2 + leftDecorationWidth3;
                                leftDecorationWidth2 = rightDecorationWidth2 - ((getLeftDecorationWidth(viewD2) + (viewD2.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) layoutParams2).leftMargin)) + fMax2);
                                f9 = rightDecorationWidth3;
                            }
                            i18++;
                            i30 = i35;
                            i17 = i17;
                            zM = zM;
                            bVar4 = bVar4;
                            rect3 = rect2;
                        }
                        z = zM;
                        bVar.c += this.p.h;
                        i7 = aVar.g;
                    } else {
                        int i36 = aVar.e;
                        float f14 = (width - i36) + paddingRight;
                        float f15 = i36 - paddingLeft;
                        f6 = f14;
                        f7 = f15;
                    }
                } else {
                    i2 = i24;
                    f6 = paddingLeft;
                    f7 = width - paddingRight;
                }
                f8 = 0.0f;
                float f16 = aVar2.d;
                f9 = f6 - f16;
                leftDecorationWidth2 = f7 - f16;
                fMax2 = Math.max(f8, 0.0f);
                i17 = aVar.h;
                i18 = i30;
                i19 = 0;
                while (i18 < i30 + i17) {
                    int i37 = i30;
                    viewD2 = d(i18);
                    if (viewD2 == null) {
                        i18 = i18;
                        rect2 = rect3;
                    } else {
                        if (bVar.h == 1) {
                            calculateItemDecorationsForChild(viewD2, rect3);
                            addView(viewD2);
                        } else {
                            calculateItemDecorationsForChild(viewD2, rect3);
                            addView(viewD2, i19);
                            i19++;
                        }
                        long j2 = bVar4.d[i18];
                        i20 = (int) j2;
                        i21 = (int) (j2 >> 32);
                        layoutParams2 = (LayoutParams) viewD2.getLayoutParams();
                        if (E(viewD2, i20, i21, layoutParams2)) {
                            viewD2.measure(i20, i21);
                        }
                        leftDecorationWidth3 = f9 + getLeftDecorationWidth(viewD2) + ((ViewGroup.MarginLayoutParams) layoutParams2).leftMargin;
                        rightDecorationWidth2 = leftDecorationWidth2 - (getRightDecorationWidth(viewD2) + ((ViewGroup.MarginLayoutParams) layoutParams2).rightMargin);
                        topDecorationHeight3 = getTopDecorationHeight(viewD2) + i29;
                        z4 = this.j;
                        bVar3 = this.m;
                        if (z4) {
                            rect2 = rect3;
                            bVar3.o(viewD2, aVar, Math.round(rightDecorationWidth2) - viewD2.getMeasuredWidth(), topDecorationHeight3, Math.round(rightDecorationWidth2), viewD2.getMeasuredHeight() + topDecorationHeight3);
                        } else {
                            rect2 = rect3;
                            bVar3.o(viewD2, aVar, Math.round(leftDecorationWidth3), topDecorationHeight3, viewD2.getMeasuredWidth() + Math.round(leftDecorationWidth3), viewD2.getMeasuredHeight() + topDecorationHeight3);
                        }
                        float rightDecorationWidth4 = getRightDecorationWidth(viewD2) + viewD2.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) layoutParams2).rightMargin + fMax2 + leftDecorationWidth3;
                        leftDecorationWidth2 = rightDecorationWidth2 - ((getLeftDecorationWidth(viewD2) + (viewD2.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) layoutParams2).leftMargin)) + fMax2);
                        f9 = rightDecorationWidth4;
                    }
                    i18++;
                    i30 = i37;
                    i17 = i17;
                    zM = zM;
                    bVar4 = bVar4;
                    rect3 = rect2;
                }
                z = zM;
                bVar.c += this.p.h;
                i7 = aVar.g;
            } else {
                i2 = i24;
                z = zM;
                Rect rect4 = rect3;
                int paddingTop = getPaddingTop();
                int paddingBottom = getPaddingBottom();
                int height = getHeight();
                int i38 = bVar.e;
                if (bVar.h == -1) {
                    int i39 = aVar.g;
                    int i40 = i38 - i39;
                    i3 = i38 + i39;
                    i38 = i40;
                } else {
                    i3 = i38;
                }
                int i41 = bVar.d;
                int i42 = this.g;
                if (i42 == 0) {
                    f = paddingTop;
                    f2 = height - paddingBottom;
                } else if (i42 != 1) {
                    if (i42 == 2) {
                        float f17 = (height - aVar.e) / 2.0f;
                        f = paddingTop + f17;
                        f2 = (height - paddingBottom) - f17;
                    } else if (i42 == 3) {
                        f = paddingTop;
                        int i43 = aVar.h;
                        f3 = (height - aVar.e) / (i43 != 1 ? i43 - 1 : 1.0f);
                        f2 = height - paddingBottom;
                    } else if (i42 == 4) {
                        int i44 = aVar.h;
                        f3 = i44 != 0 ? (height - aVar.e) / i44 : 0.0f;
                        float f18 = f3 / 2.0f;
                        f = paddingTop + f18;
                        f2 = (height - paddingBottom) - f18;
                    } else {
                        if (i42 != 5) {
                            j2.c(this.g, "Invalid justifyContent is set: ");
                            return 0;
                        }
                        int i45 = aVar.h;
                        f3 = i45 != 0 ? (height - aVar.e) / (i45 + 1) : 0.0f;
                        f = paddingTop + f3;
                        f2 = (height - paddingBottom) - f3;
                    }
                    float f19 = aVar2.d;
                    f4 = f - f19;
                    f5 = f2 - f19;
                    fMax = Math.max(f3, 0.0f);
                    i4 = aVar.h;
                    i5 = i41;
                    i6 = 0;
                    while (i5 < i41 + i4) {
                        i8 = i41;
                        viewD = d(i5);
                        if (viewD == null) {
                            i9 = i3;
                            topDecorationHeight2 = f5;
                            i15 = i4;
                            i14 = i5;
                            i16 = i8;
                            bottomDecorationHeight2 = f4;
                            rect = rect4;
                        } else {
                            float f20 = f4;
                            i9 = i3;
                            long j3 = bVar4.d[i5];
                            float f21 = f5;
                            i10 = (int) j3;
                            i11 = (int) (j3 >> 32);
                            layoutParams = (LayoutParams) viewD.getLayoutParams();
                            if (E(viewD, i10, i11, layoutParams)) {
                                viewD.measure(i10, i11);
                            }
                            topDecorationHeight = f20 + getTopDecorationHeight(viewD) + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
                            bottomDecorationHeight = f21 - (getBottomDecorationHeight(viewD) + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin);
                            if (bVar.h == 1) {
                                rect = rect4;
                                calculateItemDecorationsForChild(viewD, rect);
                                addView(viewD);
                            } else {
                                rect = rect4;
                                calculateItemDecorationsForChild(viewD, rect);
                                addView(viewD, i6);
                                i6++;
                            }
                            int i46 = i6;
                            leftDecorationWidth = getLeftDecorationWidth(viewD) + i38;
                            rightDecorationWidth = i9 - getRightDecorationWidth(viewD);
                            i12 = i5;
                            z2 = this.j;
                            z3 = this.k;
                            i13 = i4;
                            bVar2 = this.m;
                            if (z2) {
                                i14 = i12;
                                i15 = i13;
                                i16 = i8;
                                if (z3) {
                                    bVar2.p(viewD, aVar, z2, leftDecorationWidth, Math.round(bottomDecorationHeight) - viewD.getMeasuredHeight(), viewD.getMeasuredWidth() + leftDecorationWidth, Math.round(bottomDecorationHeight));
                                } else {
                                    bVar2.p(viewD, aVar, z2, leftDecorationWidth, Math.round(topDecorationHeight), viewD.getMeasuredWidth() + leftDecorationWidth, viewD.getMeasuredHeight() + Math.round(topDecorationHeight));
                                }
                            } else if (z3) {
                                i14 = i12;
                                i15 = i13;
                                i16 = i8;
                                bVar2.p(viewD, aVar, z2, rightDecorationWidth - viewD.getMeasuredWidth(), Math.round(bottomDecorationHeight) - viewD.getMeasuredHeight(), rightDecorationWidth, Math.round(bottomDecorationHeight));
                            } else {
                                i14 = i12;
                                i15 = i13;
                                i16 = i8;
                                bVar2.p(viewD, aVar, z2, rightDecorationWidth - viewD.getMeasuredWidth(), Math.round(topDecorationHeight), rightDecorationWidth, viewD.getMeasuredHeight() + Math.round(topDecorationHeight));
                            }
                            bottomDecorationHeight2 = getBottomDecorationHeight(viewD) + viewD.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + fMax + topDecorationHeight;
                            topDecorationHeight2 = bottomDecorationHeight - ((getTopDecorationHeight(viewD) + (viewD.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin)) + fMax);
                            i6 = i46;
                        }
                        i5 = i14 + 1;
                        rect4 = rect;
                        f4 = bottomDecorationHeight2;
                        i41 = i16;
                        i4 = i15;
                        f5 = topDecorationHeight2;
                        i3 = i9;
                    }
                    bVar.c += this.p.h;
                    i7 = aVar.g;
                } else {
                    int i47 = aVar.e;
                    float f22 = (height - i47) + paddingBottom;
                    f2 = i47 - paddingTop;
                    f = f22;
                }
                f3 = 0.0f;
                float f110 = aVar2.d;
                f4 = f - f110;
                f5 = f2 - f110;
                fMax = Math.max(f3, 0.0f);
                i4 = aVar.h;
                i5 = i41;
                i6 = 0;
                while (i5 < i41 + i4) {
                    i8 = i41;
                    viewD = d(i5);
                    if (viewD == null) {
                        i9 = i3;
                        topDecorationHeight2 = f5;
                        i15 = i4;
                        i14 = i5;
                        i16 = i8;
                        bottomDecorationHeight2 = f4;
                        rect = rect4;
                    } else {
                        float f23 = f4;
                        i9 = i3;
                        long j4 = bVar4.d[i5];
                        float f24 = f5;
                        i10 = (int) j4;
                        i11 = (int) (j4 >> 32);
                        layoutParams = (LayoutParams) viewD.getLayoutParams();
                        if (E(viewD, i10, i11, layoutParams)) {
                            viewD.measure(i10, i11);
                        }
                        topDecorationHeight = f23 + getTopDecorationHeight(viewD) + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
                        bottomDecorationHeight = f24 - (getBottomDecorationHeight(viewD) + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin);
                        if (bVar.h == 1) {
                            rect = rect4;
                            calculateItemDecorationsForChild(viewD, rect);
                            addView(viewD);
                        } else {
                            rect = rect4;
                            calculateItemDecorationsForChild(viewD, rect);
                            addView(viewD, i6);
                            i6++;
                        }
                        int i48 = i6;
                        leftDecorationWidth = getLeftDecorationWidth(viewD) + i38;
                        rightDecorationWidth = i9 - getRightDecorationWidth(viewD);
                        i12 = i5;
                        z2 = this.j;
                        z3 = this.k;
                        i13 = i4;
                        bVar2 = this.m;
                        if (z2) {
                            i14 = i12;
                            i15 = i13;
                            i16 = i8;
                            if (z3) {
                                bVar2.p(viewD, aVar, z2, leftDecorationWidth, Math.round(bottomDecorationHeight) - viewD.getMeasuredHeight(), viewD.getMeasuredWidth() + leftDecorationWidth, Math.round(bottomDecorationHeight));
                            } else {
                                bVar2.p(viewD, aVar, z2, leftDecorationWidth, Math.round(topDecorationHeight), viewD.getMeasuredWidth() + leftDecorationWidth, viewD.getMeasuredHeight() + Math.round(topDecorationHeight));
                            }
                        } else if (z3) {
                            i14 = i12;
                            i15 = i13;
                            i16 = i8;
                            bVar2.p(viewD, aVar, z2, rightDecorationWidth - viewD.getMeasuredWidth(), Math.round(bottomDecorationHeight) - viewD.getMeasuredHeight(), rightDecorationWidth, Math.round(bottomDecorationHeight));
                        } else {
                            i14 = i12;
                            i15 = i13;
                            i16 = i8;
                            bVar2.p(viewD, aVar, z2, rightDecorationWidth - viewD.getMeasuredWidth(), Math.round(topDecorationHeight), rightDecorationWidth, viewD.getMeasuredHeight() + Math.round(topDecorationHeight));
                        }
                        bottomDecorationHeight2 = getBottomDecorationHeight(viewD) + viewD.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + fMax + topDecorationHeight;
                        topDecorationHeight2 = bottomDecorationHeight - ((getTopDecorationHeight(viewD) + (viewD.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin)) + fMax);
                        i6 = i48;
                    }
                    i5 = i14 + 1;
                    rect4 = rect;
                    f4 = bottomDecorationHeight2;
                    i41 = i16;
                    i4 = i15;
                    f5 = topDecorationHeight2;
                    i3 = i9;
                }
                bVar.c += this.p.h;
                i7 = aVar.g;
            }
            int i49 = i7;
            i26 += i7;
            if (z || !this.j) {
                bVar.e += bVar.h * i49;
            } else {
                bVar.e -= bVar.h * i49;
            }
            i25 -= i49;
            zM = z;
            i24 = i2;
        }
        int i50 = i24;
        int i51 = bVar.a - i26;
        bVar.a = i51;
        int i52 = bVar.f;
        if (i52 != Integer.MIN_VALUE) {
            int i53 = i52 + i26;
            bVar.f = i53;
            if (i51 < 0) {
                bVar.f = i53 + i51;
            }
            y(recycler, bVar);
        }
        return i50 - bVar.a;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void onAdapterChanged(RecyclerView.Adapter adapter, RecyclerView.Adapter adapter2) {
        removeAllViews();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void onAttachedToWindow(RecyclerView recyclerView) {
        super.onAttachedToWindow(recyclerView);
        this.A = (View) recyclerView.getParent();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void onItemsAdded(RecyclerView recyclerView, int i, int i2) {
        super.onItemsAdded(recyclerView, i, i2);
        F(i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void onItemsMoved(RecyclerView recyclerView, int i, int i2, int i3) {
        super.onItemsMoved(recyclerView, i, i2, i3);
        F(Math.min(i, i2));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void onItemsRemoved(RecyclerView recyclerView, int i, int i2) {
        super.onItemsRemoved(recyclerView, i, i2);
        F(i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void onItemsUpdated(RecyclerView recyclerView, int i, int i2, Object obj) {
        super.onItemsUpdated(recyclerView, i, i2, obj);
        F(i);
    }

    /* JADX WARN: Code duplicated, block: B:101:0x017b  */
    /* JADX WARN: Code duplicated, block: B:106:0x0192  */
    /* JADX WARN: Code duplicated, block: B:111:0x01ab  */
    /* JADX WARN: Code duplicated, block: B:113:0x01af  */
    /* JADX WARN: Code duplicated, block: B:114:0x01b8  */
    /* JADX WARN: Code duplicated, block: B:116:0x01c2  */
    /* JADX WARN: Code duplicated, block: B:118:0x01c8  */
    /* JADX WARN: Code duplicated, block: B:119:0x01cb  */
    /* JADX WARN: Code duplicated, block: B:128:0x01ee  */
    /* JADX WARN: Code duplicated, block: B:130:0x01f2  */
    /* JADX WARN: Code duplicated, block: B:131:0x01fe  */
    /* JADX WARN: Code duplicated, block: B:135:0x0213  */
    /* JADX WARN: Code duplicated, block: B:139:0x0219  */
    /* JADX WARN: Code duplicated, block: B:142:0x0226  */
    /* JADX WARN: Code duplicated, block: B:153:0x0260  */
    /* JADX WARN: Code duplicated, block: B:154:0x0265  */
    /* JADX WARN: Code duplicated, block: B:156:0x026c  */
    /* JADX WARN: Code duplicated, block: B:73:0x00f0  */
    /* JADX WARN: Code duplicated, block: B:75:0x00f4  */
    /* JADX WARN: Code duplicated, block: B:77:0x00fc  */
    /* JADX WARN: Code duplicated, block: B:79:0x010a  */
    /* JADX WARN: Code duplicated, block: B:80:0x010f  */
    /* JADX WARN: Code duplicated, block: B:82:0x0120  */
    /* JADX WARN: Code duplicated, block: B:83:0x012a  */
    /* JADX WARN: Code duplicated, block: B:85:0x0137  */
    /* JADX WARN: Code duplicated, block: B:86:0x0143  */
    /* JADX WARN: Code duplicated, block: B:88:0x0149  */
    /* JADX WARN: Code duplicated, block: B:89:0x0155  */
    /* JADX WARN: Code duplicated, block: B:91:0x015d  */
    /* JADX WARN: Code duplicated, block: B:97:0x0171  */
    /* JADX WARN: Code duplicated, block: B:98:0x0173  */
    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void onLayoutChildren(RecyclerView.Recycler recycler, RecyclerView.State state) {
        View viewP;
        FlexboxLayoutManager flexboxLayoutManager;
        OrientationHelper orientationHelper;
        int position;
        int i;
        int size;
        int i2;
        boolean z;
        OrientationHelper orientationHelper2;
        int startAfterPadding;
        int i3;
        View viewFindViewByPosition;
        View childAt;
        boolean z2;
        int decoratedStart;
        OrientationHelper orientationHelper3;
        boolean z3;
        OrientationHelper orientationHelper4;
        int decoratedStart2;
        boolean z4;
        int i4;
        boolean z5;
        int i5;
        int i6;
        int i7;
        this.n = recycler;
        this.o = state;
        int itemCount = state.getItemCount();
        if (itemCount == 0 && state.isPreLayout()) {
            return;
        }
        int layoutDirection = getLayoutDirection();
        int i8 = this.e;
        if (i8 == 0) {
            this.j = layoutDirection == 1;
            this.k = this.f == 2;
        } else if (i8 == 1) {
            this.j = layoutDirection != 1;
            this.k = this.f == 2;
        } else if (i8 == 2) {
            boolean z6 = layoutDirection == 1;
            this.j = z6;
            if (this.f == 2) {
                this.j = !z6;
            }
            this.k = false;
        } else if (i8 != 3) {
            this.j = false;
            this.k = false;
        } else {
            boolean z7 = layoutDirection == 1;
            this.j = z7;
            if (this.f == 2) {
                this.j = !z7;
            }
            this.k = true;
        }
        n();
        if (this.p == null) {
            b bVar = new b();
            bVar.h = 1;
            this.p = bVar;
        }
        com.google.android.flexbox.b bVar2 = this.m;
        bVar2.j(itemCount);
        bVar2.k(itemCount);
        bVar2.i(itemCount);
        this.p.i = false;
        SavedState savedState = this.t;
        if (savedState != null && (i7 = savedState.b) >= 0 && i7 < itemCount) {
            this.u = i7;
        }
        a aVar = this.q;
        if (!aVar.f || this.u != -1 || savedState != null) {
            aVar.b();
            SavedState savedState2 = this.t;
            if (state.isPreLayout() || (i3 = this.u) == -1) {
                if (getChildCount() != 0) {
                    if (aVar.e) {
                        viewP = r(state.getItemCount());
                    } else {
                        viewP = p(state.getItemCount());
                    }
                    if (viewP != null) {
                        flexboxLayoutManager = FlexboxLayoutManager.this;
                        if (flexboxLayoutManager.f == 0) {
                            orientationHelper = flexboxLayoutManager.s;
                        } else {
                            orientationHelper = flexboxLayoutManager.r;
                        }
                        if (flexboxLayoutManager.m() && flexboxLayoutManager.j) {
                            if (aVar.e) {
                                aVar.c = orientationHelper.getTotalSpaceChange() + orientationHelper.getDecoratedStart(viewP);
                            } else {
                                aVar.c = orientationHelper.getDecoratedEnd(viewP);
                            }
                        } else if (aVar.e) {
                            aVar.c = orientationHelper.getTotalSpaceChange() + orientationHelper.getDecoratedEnd(viewP);
                        } else {
                            aVar.c = orientationHelper.getDecoratedStart(viewP);
                        }
                        position = flexboxLayoutManager.getPosition(viewP);
                        aVar.a = position;
                        aVar.g = false;
                        int[] iArr = flexboxLayoutManager.m.c;
                        if (position == -1) {
                            position = 0;
                        }
                        i = iArr[position];
                        if (i == -1) {
                            i = 0;
                        }
                        aVar.b = i;
                        size = flexboxLayoutManager.l.size();
                        i2 = aVar.b;
                        if (size > i2) {
                            aVar.a = flexboxLayoutManager.l.get(i2).o;
                        }
                        if (!state.isPreLayout() && supportsPredictiveItemAnimations() && (this.r.getDecoratedStart(viewP) >= this.r.getEndAfterPadding() || this.r.getDecoratedEnd(viewP) < this.r.getStartAfterPadding())) {
                            z = aVar.e;
                            orientationHelper2 = this.r;
                            if (z) {
                                startAfterPadding = orientationHelper2.getEndAfterPadding();
                            } else {
                                startAfterPadding = orientationHelper2.getStartAfterPadding();
                            }
                            aVar.c = startAfterPadding;
                        }
                    } else {
                        aVar.a();
                        aVar.a = 0;
                        aVar.b = 0;
                    }
                } else {
                    aVar.a();
                    aVar.a = 0;
                    aVar.b = 0;
                }
            } else if (i3 < 0 || i3 >= state.getItemCount()) {
                this.u = -1;
                this.v = Integer.MIN_VALUE;
                if (getChildCount() != 0) {
                    if (aVar.e) {
                        viewP = r(state.getItemCount());
                    } else {
                        viewP = p(state.getItemCount());
                    }
                    if (viewP != null) {
                        flexboxLayoutManager = FlexboxLayoutManager.this;
                        if (flexboxLayoutManager.f == 0) {
                            orientationHelper = flexboxLayoutManager.s;
                        } else {
                            orientationHelper = flexboxLayoutManager.r;
                        }
                        if (flexboxLayoutManager.m()) {
                            if (aVar.e) {
                                aVar.c = orientationHelper.getTotalSpaceChange() + orientationHelper.getDecoratedEnd(viewP);
                            } else {
                                aVar.c = orientationHelper.getDecoratedStart(viewP);
                            }
                        } else if (aVar.e) {
                            aVar.c = orientationHelper.getTotalSpaceChange() + orientationHelper.getDecoratedEnd(viewP);
                        } else {
                            aVar.c = orientationHelper.getDecoratedStart(viewP);
                        }
                        position = flexboxLayoutManager.getPosition(viewP);
                        aVar.a = position;
                        aVar.g = false;
                        int[] iArr2 = flexboxLayoutManager.m.c;
                        if (position == -1) {
                            position = 0;
                        }
                        i = iArr2[position];
                        if (i == -1) {
                            i = 0;
                        }
                        aVar.b = i;
                        size = flexboxLayoutManager.l.size();
                        i2 = aVar.b;
                        if (size > i2) {
                            aVar.a = flexboxLayoutManager.l.get(i2).o;
                        }
                        if (!state.isPreLayout()) {
                            z = aVar.e;
                            orientationHelper2 = this.r;
                            if (z) {
                                startAfterPadding = orientationHelper2.getEndAfterPadding();
                            } else {
                                startAfterPadding = orientationHelper2.getStartAfterPadding();
                            }
                            aVar.c = startAfterPadding;
                        }
                    } else {
                        aVar.a();
                        aVar.a = 0;
                        aVar.b = 0;
                    }
                } else {
                    aVar.a();
                    aVar.a = 0;
                    aVar.b = 0;
                }
            } else {
                int i9 = this.u;
                aVar.a = i9;
                aVar.b = bVar2.c[i9];
                SavedState savedState3 = this.t;
                if (savedState3 != null) {
                    int itemCount2 = state.getItemCount();
                    int i10 = savedState3.b;
                    if (i10 >= 0 && i10 < itemCount2) {
                        aVar.c = this.r.getStartAfterPadding() + savedState2.c;
                        aVar.g = true;
                        aVar.b = -1;
                    } else if (this.v == Integer.MIN_VALUE) {
                        viewFindViewByPosition = findViewByPosition(this.u);
                        if (viewFindViewByPosition != null) {
                            if (getChildCount() > 0 && (childAt = getChildAt(0)) != null) {
                                if (this.u < getPosition(childAt)) {
                                    z2 = true;
                                } else {
                                    z2 = false;
                                }
                                aVar.e = z2;
                            }
                            aVar.a();
                        } else if (this.r.getDecoratedMeasurement(viewFindViewByPosition) > this.r.getTotalSpace()) {
                            aVar.a();
                        } else {
                            decoratedStart = this.r.getDecoratedStart(viewFindViewByPosition) - this.r.getStartAfterPadding();
                            orientationHelper3 = this.r;
                            if (decoratedStart < 0) {
                                aVar.c = orientationHelper3.getStartAfterPadding();
                                aVar.e = false;
                            } else if (orientationHelper3.getEndAfterPadding() - this.r.getDecoratedEnd(viewFindViewByPosition) < 0) {
                                aVar.c = this.r.getEndAfterPadding();
                                aVar.e = true;
                            } else {
                                z3 = aVar.e;
                                orientationHelper4 = this.r;
                                if (z3) {
                                    decoratedStart2 = this.r.getTotalSpaceChange() + orientationHelper4.getDecoratedEnd(viewFindViewByPosition);
                                } else {
                                    decoratedStart2 = orientationHelper4.getDecoratedStart(viewFindViewByPosition);
                                }
                                aVar.c = decoratedStart2;
                            }
                        }
                    } else if (m() && this.j) {
                        aVar.c = this.v - this.r.getEndPadding();
                    } else {
                        aVar.c = this.r.getStartAfterPadding() + this.v;
                    }
                } else if (this.v == Integer.MIN_VALUE) {
                    viewFindViewByPosition = findViewByPosition(this.u);
                    if (viewFindViewByPosition != null) {
                        if (getChildCount() > 0) {
                            if (this.u < getPosition(childAt)) {
                                z2 = true;
                            } else {
                                z2 = false;
                            }
                            aVar.e = z2;
                        }
                        aVar.a();
                    } else if (this.r.getDecoratedMeasurement(viewFindViewByPosition) > this.r.getTotalSpace()) {
                        aVar.a();
                    } else {
                        decoratedStart = this.r.getDecoratedStart(viewFindViewByPosition) - this.r.getStartAfterPadding();
                        orientationHelper3 = this.r;
                        if (decoratedStart < 0) {
                            aVar.c = orientationHelper3.getStartAfterPadding();
                            aVar.e = false;
                        } else if (orientationHelper3.getEndAfterPadding() - this.r.getDecoratedEnd(viewFindViewByPosition) < 0) {
                            aVar.c = this.r.getEndAfterPadding();
                            aVar.e = true;
                        } else {
                            z3 = aVar.e;
                            orientationHelper4 = this.r;
                            if (z3) {
                                decoratedStart2 = this.r.getTotalSpaceChange() + orientationHelper4.getDecoratedEnd(viewFindViewByPosition);
                            } else {
                                decoratedStart2 = orientationHelper4.getDecoratedStart(viewFindViewByPosition);
                            }
                            aVar.c = decoratedStart2;
                        }
                    }
                } else if (m()) {
                    aVar.c = this.r.getStartAfterPadding() + this.v;
                } else {
                    aVar.c = this.r.getStartAfterPadding() + this.v;
                }
            }
            aVar.f = true;
        }
        detachAndScrapAttachedViews(recycler);
        if (aVar.e) {
            H(aVar, false, true);
        } else {
            G(aVar, false, true);
        }
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getWidth(), getWidthMode());
        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(getHeight(), getHeightMode());
        int width = getWidth();
        int height = getHeight();
        boolean zM = m();
        Context context = this.z;
        if (zM) {
            int i11 = this.w;
            z4 = (i11 == Integer.MIN_VALUE || i11 == width) ? false : true;
            b bVar3 = this.p;
            i4 = bVar3.b ? context.getResources().getDisplayMetrics().heightPixels : bVar3.a;
        } else {
            int i12 = this.x;
            z4 = (i12 == Integer.MIN_VALUE || i12 == height) ? false : true;
            b bVar4 = this.p;
            i4 = bVar4.b ? context.getResources().getDisplayMetrics().widthPixels : bVar4.a;
        }
        int i13 = i4;
        this.w = width;
        this.x = height;
        int i14 = this.B;
        com.google.android.flexbox.b.a aVar2 = this.C;
        if (i14 != -1 || (this.u == -1 && !z4)) {
            int iMin = aVar.a;
            if (i14 != -1) {
                iMin = Math.min(i14, iMin);
            }
            aVar2.a = null;
            aVar2.b = 0;
            boolean zM2 = m();
            List<com.google.android.flexbox.a> list = this.l;
            if (zM2) {
                if (list.size() > 0) {
                    bVar2.d(iMin, this.l);
                    this.m.b(this.C, iMakeMeasureSpec, iMakeMeasureSpec2, i13, iMin, aVar.a, this.l);
                } else {
                    bVar2.i(itemCount);
                    this.m.b(this.C, iMakeMeasureSpec, iMakeMeasureSpec2, i13, 0, -1, this.l);
                }
            } else if (list.size() > 0) {
                bVar2.d(iMin, this.l);
                int i15 = iMin;
                this.m.b(this.C, iMakeMeasureSpec2, iMakeMeasureSpec, i13, i15, aVar.a, this.l);
                iMakeMeasureSpec2 = iMakeMeasureSpec2;
                iMakeMeasureSpec = iMakeMeasureSpec;
                iMin = i15;
            } else {
                bVar2.i(itemCount);
                this.m.b(this.C, iMakeMeasureSpec2, iMakeMeasureSpec, i13, 0, -1, this.l);
                iMakeMeasureSpec2 = iMakeMeasureSpec2;
                iMakeMeasureSpec = iMakeMeasureSpec;
            }
            this.l = aVar2.a;
            bVar2.h(iMakeMeasureSpec, iMakeMeasureSpec2, iMin);
            bVar2.u(iMin);
        } else if (!aVar.e) {
            this.l.clear();
            aVar2.a = null;
            aVar2.b = 0;
            boolean zM3 = m();
            int i16 = aVar.a;
            com.google.android.flexbox.b bVar5 = this.m;
            com.google.android.flexbox.b.a aVar3 = this.C;
            if (zM3) {
                bVar5.b(aVar3, iMakeMeasureSpec, iMakeMeasureSpec2, i13, 0, i16, this.l);
            } else {
                bVar5.b(aVar3, iMakeMeasureSpec2, iMakeMeasureSpec, i13, 0, i16, this.l);
                iMakeMeasureSpec2 = iMakeMeasureSpec2;
                iMakeMeasureSpec = iMakeMeasureSpec;
            }
            this.l = aVar2.a;
            bVar2.h(iMakeMeasureSpec, iMakeMeasureSpec2, 0);
            bVar2.u(0);
            int i17 = bVar2.c[aVar.a];
            aVar.b = i17;
            this.p.c = i17;
        }
        o(recycler, state, this.p);
        boolean z8 = aVar.e;
        b bVar6 = this.p;
        if (z8) {
            i6 = bVar6.e;
            z5 = true;
            G(aVar, true, false);
            o(recycler, state, this.p);
            i5 = this.p.e;
        } else {
            z5 = true;
            i5 = bVar6.e;
            H(aVar, true, false);
            o(recycler, state, this.p);
            i6 = this.p.e;
        }
        if (getChildCount() > 0) {
            if (aVar.e) {
                fixLayoutStartGap(fixLayoutEndGap(i5, recycler, state, z5) + i6, recycler, state, false);
            } else {
                fixLayoutEndGap(fixLayoutStartGap(i6, recycler, state, z5) + i5, recycler, state, false);
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void onLayoutCompleted(RecyclerView.State state) {
        super.onLayoutCompleted(state);
        this.t = null;
        this.u = -1;
        this.v = Integer.MIN_VALUE;
        this.B = -1;
        this.q.b();
        this.y.clear();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            this.t = (SavedState) parcelable;
            requestLayout();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final Parcelable onSaveInstanceState() {
        SavedState savedState = this.t;
        if (savedState != null) {
            SavedState savedState2 = new SavedState();
            savedState2.b = savedState.b;
            savedState2.c = savedState.c;
            return savedState2;
        }
        SavedState savedState3 = new SavedState();
        if (getChildCount() <= 0) {
            savedState3.b = -1;
            return savedState3;
        }
        View childAt = getChildAt(0);
        savedState3.b = getPosition(childAt);
        savedState3.c = this.r.getDecoratedStart(childAt) - this.r.getStartAfterPadding();
        return savedState3;
    }

    public final View p(int i) {
        View viewU = u(0, getChildCount(), i);
        if (viewU == null) {
            return null;
        }
        int i2 = this.m.c[getPosition(viewU)];
        if (i2 == -1) {
            return null;
        }
        return q(viewU, this.l.get(i2));
    }

    /* JADX WARN: Code duplicated, block: B:17:0x003b  */
    public final View q(View view, com.google.android.flexbox.a aVar) {
        boolean zM = m();
        int i = aVar.h;
        for (int i2 = 1; i2 < i; i2++) {
            View childAt = getChildAt(i2);
            if (childAt != null && childAt.getVisibility() != 8) {
                if (!this.j || zM) {
                    if (this.r.getDecoratedStart(view) > this.r.getDecoratedStart(childAt)) {
                        view = childAt;
                    }
                } else if (this.r.getDecoratedEnd(view) < this.r.getDecoratedEnd(childAt)) {
                    view = childAt;
                }
            }
        }
        return view;
    }

    public final View r(int i) {
        View viewU = u(getChildCount() - 1, -1, i);
        if (viewU == null) {
            return null;
        }
        return s(viewU, this.l.get(this.m.c[getPosition(viewU)]));
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0047  */
    public final View s(View view, com.google.android.flexbox.a aVar) {
        boolean zM = m();
        int childCount = (getChildCount() - aVar.h) - 1;
        for (int childCount2 = getChildCount() - 2; childCount2 > childCount; childCount2--) {
            View childAt = getChildAt(childCount2);
            if (childAt != null && childAt.getVisibility() != 8) {
                if (!this.j || zM) {
                    if (this.r.getDecoratedEnd(view) < this.r.getDecoratedEnd(childAt)) {
                        view = childAt;
                    }
                } else if (this.r.getDecoratedStart(view) > this.r.getDecoratedStart(childAt)) {
                    view = childAt;
                }
            }
        }
        return view;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int scrollHorizontallyBy(int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (!m() || this.f == 0) {
            int iW = w(i, recycler, state);
            this.y.clear();
            return iW;
        }
        int iX = x(i);
        this.q.d += iX;
        this.s.offsetChildren(-iX);
        return iX;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void scrollToPosition(int i) {
        this.u = i;
        this.v = Integer.MIN_VALUE;
        SavedState savedState = this.t;
        if (savedState != null) {
            savedState.b = -1;
        }
        requestLayout();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int scrollVerticallyBy(int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (m() || (this.f == 0 && !m())) {
            int iW = w(i, recycler, state);
            this.y.clear();
            return iW;
        }
        int iX = x(i);
        this.q.d += iX;
        this.s.offsetChildren(-iX);
        return iX;
    }

    @Override // defpackage.pc3
    public final void setFlexLines(List<com.google.android.flexbox.a> list) {
        this.l = list;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void smoothScrollToPosition(RecyclerView recyclerView, RecyclerView.State state, int i) {
        LinearSmoothScroller linearSmoothScroller = new LinearSmoothScroller(recyclerView.getContext());
        linearSmoothScroller.setTargetPosition(i);
        startSmoothScroll(linearSmoothScroller);
    }

    public final View t(int i, int i2) {
        int i3 = i2 > i ? 1 : -1;
        while (i != i2) {
            View childAt = getChildAt(i);
            int paddingLeft = getPaddingLeft();
            int paddingTop = getPaddingTop();
            int width = getWidth() - getPaddingRight();
            int height = getHeight() - getPaddingBottom();
            int decoratedLeft = getDecoratedLeft(childAt) - ((ViewGroup.MarginLayoutParams) ((RecyclerView.LayoutParams) childAt.getLayoutParams())).leftMargin;
            int decoratedTop = getDecoratedTop(childAt) - ((ViewGroup.MarginLayoutParams) ((RecyclerView.LayoutParams) childAt.getLayoutParams())).topMargin;
            int decoratedRight = getDecoratedRight(childAt) + ((ViewGroup.MarginLayoutParams) ((RecyclerView.LayoutParams) childAt.getLayoutParams())).rightMargin;
            int decoratedBottom = getDecoratedBottom(childAt) + ((ViewGroup.MarginLayoutParams) ((RecyclerView.LayoutParams) childAt.getLayoutParams())).bottomMargin;
            boolean z = decoratedLeft >= width || decoratedRight >= paddingLeft;
            boolean z2 = decoratedTop >= height || decoratedBottom >= paddingTop;
            if (z && z2) {
                return childAt;
            }
            i += i3;
        }
        return null;
    }

    public final View u(int i, int i2, int i3) {
        int position;
        n();
        if (this.p == null) {
            b bVar = new b();
            bVar.h = 1;
            this.p = bVar;
        }
        int startAfterPadding = this.r.getStartAfterPadding();
        int endAfterPadding = this.r.getEndAfterPadding();
        int i4 = i2 <= i ? -1 : 1;
        View view = null;
        View view2 = null;
        while (i != i2) {
            View childAt = getChildAt(i);
            if (childAt != null && (position = getPosition(childAt)) >= 0 && position < i3) {
                if (((RecyclerView.LayoutParams) childAt.getLayoutParams()).isItemRemoved()) {
                    if (view2 == null) {
                        view2 = childAt;
                    }
                } else {
                    if (this.r.getDecoratedStart(childAt) >= startAfterPadding && this.r.getDecoratedEnd(childAt) <= endAfterPadding) {
                        return childAt;
                    }
                    if (view == null) {
                        view = childAt;
                    }
                }
            }
            i += i4;
        }
        return view != null ? view : view2;
    }

    public final List<com.google.android.flexbox.a> v() {
        ArrayList arrayList = new ArrayList(this.l.size());
        int size = this.l.size();
        for (int i = 0; i < size; i++) {
            com.google.android.flexbox.a aVar = this.l.get(i);
            if (aVar.h != 0) {
                arrayList.add(aVar);
            }
        }
        return arrayList;
    }

    /* JADX WARN: Code duplicated, block: B:74:0x01ed  */
    public final int w(int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
        int i2;
        if (getChildCount() != 0 && i != 0) {
            n();
            this.p.i = true;
            boolean z = !m() && this.j;
            int i3 = (!z ? i > 0 : i < 0) ? -1 : 1;
            int iAbs = Math.abs(i);
            this.p.h = i3;
            boolean zM = m();
            int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getWidth(), getWidthMode());
            int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(getHeight(), getHeightMode());
            boolean z2 = !zM && this.j;
            com.google.android.flexbox.b bVar = this.m;
            if (i3 == 1) {
                View childAt = getChildAt(getChildCount() - 1);
                if (childAt != null) {
                    this.p.e = this.r.getDecoratedEnd(childAt);
                    int position = getPosition(childAt);
                    View viewS = s(childAt, this.l.get(bVar.c[position]));
                    b bVar2 = this.p;
                    bVar2.getClass();
                    int i4 = position + 1;
                    bVar2.d = i4;
                    int[] iArr = bVar.c;
                    if (iArr.length <= i4) {
                        bVar2.c = -1;
                    } else {
                        bVar2.c = iArr[i4];
                    }
                    OrientationHelper orientationHelper = this.r;
                    if (z2) {
                        bVar2.e = orientationHelper.getDecoratedStart(viewS);
                        this.p.f = this.r.getStartAfterPadding() + (-this.r.getDecoratedStart(viewS));
                        b bVar3 = this.p;
                        bVar3.f = Math.max(bVar3.f, 0);
                    } else {
                        bVar2.e = orientationHelper.getDecoratedEnd(viewS);
                        this.p.f = this.r.getDecoratedEnd(viewS) - this.r.getEndAfterPadding();
                    }
                    int i5 = this.p.c;
                    if ((i5 == -1 || i5 > this.l.size() - 1) && this.p.d <= this.o.getItemCount()) {
                        b bVar4 = this.p;
                        int i6 = iAbs - bVar4.f;
                        com.google.android.flexbox.b.a aVar = this.C;
                        aVar.a = null;
                        aVar.b = 0;
                        if (i6 > 0) {
                            com.google.android.flexbox.b bVar5 = this.m;
                            if (zM) {
                                bVar5.b(aVar, iMakeMeasureSpec, iMakeMeasureSpec2, i6, bVar4.d, -1, this.l);
                            } else {
                                bVar5.b(aVar, iMakeMeasureSpec2, iMakeMeasureSpec, i6, bVar4.d, -1, this.l);
                                iMakeMeasureSpec2 = iMakeMeasureSpec2;
                                iMakeMeasureSpec = iMakeMeasureSpec;
                            }
                            bVar.h(iMakeMeasureSpec, iMakeMeasureSpec2, this.p.d);
                            bVar.u(this.p.d);
                        }
                    }
                    b bVar6 = this.p;
                    bVar6.a = iAbs - bVar6.f;
                }
            } else {
                View childAt2 = getChildAt(0);
                if (childAt2 != null) {
                    this.p.e = this.r.getDecoratedStart(childAt2);
                    int position2 = getPosition(childAt2);
                    View viewQ = q(childAt2, this.l.get(bVar.c[position2]));
                    b bVar7 = this.p;
                    bVar7.getClass();
                    int i7 = bVar.c[position2];
                    if (i7 == -1) {
                        i7 = 0;
                    }
                    if (i7 > 0) {
                        com.google.android.flexbox.a aVar2 = this.l.get(i7 - 1);
                        bVar7 = this.p;
                        bVar7.d = position2 - aVar2.h;
                    } else {
                        bVar7.d = -1;
                    }
                    bVar7.c = i7 > 0 ? i7 - 1 : 0;
                    OrientationHelper orientationHelper2 = this.r;
                    if (z2) {
                        bVar7.e = orientationHelper2.getDecoratedEnd(viewQ);
                        this.p.f = this.r.getDecoratedEnd(viewQ) - this.r.getEndAfterPadding();
                        b bVar8 = this.p;
                        bVar8.f = Math.max(bVar8.f, 0);
                    } else {
                        bVar7.e = orientationHelper2.getDecoratedStart(viewQ);
                        this.p.f = this.r.getStartAfterPadding() + (-this.r.getDecoratedStart(viewQ));
                    }
                    b bVar9 = this.p;
                    bVar9.a = iAbs - bVar9.f;
                }
            }
            b bVar10 = this.p;
            int iO = o(recycler, state, bVar10) + bVar10.f;
            if (iO >= 0) {
                if (z) {
                    if (iAbs > iO) {
                        i2 = (-i3) * iO;
                    } else {
                        i2 = i;
                    }
                } else if (iAbs > iO) {
                    i2 = i3 * iO;
                } else {
                    i2 = i;
                }
                this.r.offsetChildren(-i2);
                this.p.g = i2;
                return i2;
            }
        }
        return 0;
    }

    public final int x(int i) {
        if (getChildCount() == 0 || i == 0) {
            return 0;
        }
        n();
        boolean zM = m();
        View view = this.A;
        int width = zM ? view.getWidth() : view.getHeight();
        int width2 = zM ? getWidth() : getHeight();
        int layoutDirection = getLayoutDirection();
        a aVar = this.q;
        if (layoutDirection == 1) {
            int iAbs = Math.abs(i);
            if (i < 0) {
                return -Math.min((width2 + aVar.d) - width, iAbs);
            }
            int i2 = aVar.d;
            if (i2 + i > 0) {
                return -i2;
            }
        } else {
            if (i > 0) {
                return Math.min((width2 - aVar.d) - width, i);
            }
            int i3 = aVar.d;
            if (i3 + i < 0) {
                return -i3;
            }
        }
        return i;
    }

    /* JADX WARN: Code duplicated, block: B:32:0x0067  */
    /* JADX WARN: Code duplicated, block: B:34:0x006f A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:36:0x0073  */
    /* JADX WARN: Code duplicated, block: B:65:0x00e0  */
    /* JADX WARN: Code duplicated, block: B:67:0x00e8  */
    /* JADX WARN: Code duplicated, block: B:70:0x00f3  */
    /* JADX WARN: Code duplicated, block: B:76:0x0071 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:81:0x0080 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:86:0x0104 A[EDGE_INSN: B:86:0x0104->B:93:? BREAK  A[LOOP:2: B:52:0x00b3->B:71:0x0100], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:90:0x0100 A[SYNTHETIC] */
    public final void y(RecyclerView.Recycler recycler, b bVar) {
        int childCount;
        int i;
        int childCount2;
        int i2;
        View childAt;
        int i3;
        if (bVar.i) {
            int i4 = bVar.h;
            int i5 = bVar.f;
            com.google.android.flexbox.b bVar2 = this.m;
            int i6 = -1;
            if (i4 == -1) {
                if (i5 < 0 || (childCount2 = getChildCount()) == 0 || (childAt = getChildAt((i2 = childCount2 - 1))) == null || (i3 = bVar2.c[getPosition(childAt)]) == -1) {
                    return;
                }
                com.google.android.flexbox.a aVar = this.l.get(i3);
                for (int i7 = i2; i7 >= 0; i7--) {
                    View childAt2 = getChildAt(i7);
                    if (childAt2 != null) {
                        int i8 = bVar.f;
                        if (!m() && this.j) {
                            if (this.r.getDecoratedEnd(childAt2) > i8) {
                                break;
                            }
                            if (aVar.o != getPosition(childAt2)) {
                                continue;
                            } else if (i3 <= 0) {
                                childCount2 = i7;
                                break;
                            } else {
                                i3 += bVar.h;
                                aVar = this.l.get(i3);
                                childCount2 = i7;
                            }
                        } else {
                            if (this.r.getDecoratedStart(childAt2) < this.r.getEnd() - i8) {
                                break;
                            }
                            if (aVar.o != getPosition(childAt2)) {
                                continue;
                            } else if (i3 <= 0) {
                                childCount2 = i7;
                                break;
                            } else {
                                i3 += bVar.h;
                                aVar = this.l.get(i3);
                                childCount2 = i7;
                            }
                        }
                    }
                }
                while (i2 >= childCount2) {
                    removeAndRecycleViewAt(i2, recycler);
                    i2--;
                }
                return;
            }
            if (i5 >= 0 && (childCount = getChildCount()) != 0) {
                int i9 = 0;
                View childAt3 = getChildAt(0);
                if (childAt3 == null || (i = bVar2.c[getPosition(childAt3)]) == -1) {
                    return;
                }
                com.google.android.flexbox.a aVar2 = this.l.get(i);
                while (true) {
                    if (i9 < childCount) {
                        View childAt4 = getChildAt(i9);
                        if (childAt4 != null) {
                            int i10 = bVar.f;
                            if (m() || !this.j) {
                                if (this.r.getDecoratedEnd(childAt4) <= i10) {
                                    if (aVar2.p != getPosition(childAt4)) {
                                        continue;
                                    } else {
                                        if (i >= this.l.size() - 1) {
                                            break;
                                        }
                                        i += bVar.h;
                                        aVar2 = this.l.get(i);
                                        i6 = i9;
                                    }
                                }
                            } else if (this.r.getEnd() - this.r.getDecoratedStart(childAt4) <= i10) {
                                if (aVar2.p != getPosition(childAt4)) {
                                    continue;
                                } else if (i >= this.l.size() - 1) {
                                    break;
                                    break;
                                } else {
                                    i += bVar.h;
                                    aVar2 = this.l.get(i);
                                    i6 = i9;
                                }
                            }
                        }
                        i9++;
                    }
                    i9 = i6;
                    break;
                }
                while (i9 >= 0) {
                    removeAndRecycleViewAt(i9, recycler);
                    i9--;
                }
            }
        }
    }

    public final void z() {
        int heightMode = m() ? getHeightMode() : getWidthMode();
        this.p.b = heightMode == 0 || heightMode == Integer.MIN_VALUE;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void onItemsUpdated(RecyclerView recyclerView, int i, int i2) {
        super.onItemsUpdated(recyclerView, i, i2);
        F(i);
    }

    public FlexboxLayoutManager(Context context) {
        B(0);
        C(1);
        A(4);
        this.z = context;
    }
}
