package defpackage;

import android.view.View;
import androidx.recyclerview.widget.OrientationHelper;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.SnapHelper;
import com.my.target.nativeads.views.PromoCardRecyclerView;

/* JADX INFO: loaded from: classes4.dex */
public final class xn6 extends SnapHelper {
    public final int c;
    public final PromoCardRecyclerView d;
    public OrientationHelper e;

    public xn6(int i, PromoCardRecyclerView promoCardRecyclerView) {
        this.c = i;
        this.d = promoCardRecyclerView;
    }

    public final OrientationHelper a(RecyclerView.LayoutManager layoutManager) {
        OrientationHelper orientationHelper = this.e;
        if (orientationHelper == null || orientationHelper.getLayoutManager() != layoutManager) {
            this.e = OrientationHelper.createHorizontalHelper(layoutManager);
        }
        return this.e;
    }

    public final int b(RecyclerView.LayoutManager layoutManager, View view, OrientationHelper orientationHelper) {
        int decoratedMeasurement = ((orientationHelper.getDecoratedMeasurement(view) / 2) + orientationHelper.getDecoratedStart(view)) - ((orientationHelper.getTotalSpace() / 2) + orientationHelper.getStartAfterPadding());
        int position = layoutManager.getPosition(view);
        int i = this.c;
        if (position == 0) {
            return decoratedMeasurement - (i / 2);
        }
        return layoutManager.getItemCount() + (-1) == layoutManager.getPosition(view) ? (i / 2) + decoratedMeasurement : decoratedMeasurement;
    }

    @Override // androidx.recyclerview.widget.SnapHelper
    public final int[] calculateDistanceToFinalSnap(RecyclerView.LayoutManager layoutManager, View view) {
        int[] iArr = new int[2];
        if (layoutManager.canScrollHorizontally()) {
            iArr[0] = b(layoutManager, view, a(layoutManager));
        }
        return iArr;
    }

    @Override // androidx.recyclerview.widget.SnapHelper
    public final View findSnapView(RecyclerView.LayoutManager layoutManager) {
        int childCount = layoutManager.getChildCount();
        View view = null;
        if (childCount == 0) {
            return null;
        }
        PromoCardRecyclerView promoCardRecyclerView = this.d;
        if (promoCardRecyclerView.m) {
            return layoutManager.getChildAt(0);
        }
        if (promoCardRecyclerView.n) {
            return layoutManager.getChildAt(childCount - 1);
        }
        OrientationHelper orientationHelperA = a(layoutManager);
        int totalSpace = (orientationHelperA.getTotalSpace() / 2) + orientationHelperA.getStartAfterPadding() + 1;
        int i = Integer.MAX_VALUE;
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = layoutManager.getChildAt(i2);
            int iAbs = Math.abs(((orientationHelperA.getDecoratedMeasurement(childAt) / 2) + orientationHelperA.getDecoratedStart(childAt)) - totalSpace);
            if (iAbs < i) {
                view = childAt;
                i = iAbs;
            }
        }
        return view;
    }

    @Override // androidx.recyclerview.widget.SnapHelper
    public final int findTargetSnapPosition(RecyclerView.LayoutManager layoutManager, int i, int i2) {
        int itemCount = layoutManager.getItemCount();
        if (itemCount == 0) {
            return -1;
        }
        OrientationHelper orientationHelperA = a(layoutManager);
        int childCount = layoutManager.getChildCount();
        boolean z = false;
        View view = null;
        int i3 = Integer.MAX_VALUE;
        int i4 = Integer.MIN_VALUE;
        View view2 = null;
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = layoutManager.getChildAt(i5);
            if (childAt != null) {
                int iB = b(layoutManager, childAt, orientationHelperA);
                if (iB <= 0 && iB > i4) {
                    view2 = childAt;
                    i4 = iB;
                }
                if (iB >= 0 && iB < i3) {
                    view = childAt;
                    i3 = iB;
                }
            }
        }
        if (!layoutManager.canScrollHorizontally() ? i2 > 0 : i > 0) {
            z = true;
        }
        if (z && view != null) {
            return layoutManager.getPosition(view);
        }
        if (!z && view2 != null) {
            return layoutManager.getPosition(view2);
        }
        if (z) {
            view = view2;
        }
        if (view == null) {
            return -1;
        }
        int position = layoutManager.getPosition(view) + (z ? 1 : -1);
        if (position < 0 || position >= itemCount) {
            return -1;
        }
        return position;
    }
}
