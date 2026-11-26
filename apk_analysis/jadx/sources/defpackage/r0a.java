package defpackage;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import androidx.core.view.GravityCompat;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.LinearSmoothScroller;
import androidx.recyclerview.widget.LinearSnapHelper;
import androidx.recyclerview.widget.OrientationHelper;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes3.dex */
public final class r0a extends LinearSnapHelper {
    public OrientationHelper e;
    public OrientationHelper f;
    public RecyclerView g;
    public int d = 17;
    public final DecelerateInterpolator c = new DecelerateInterpolator(1.7f);

    public class a extends LinearSmoothScroller {
        public a(Context context) {
            super(context);
        }

        @Override // androidx.recyclerview.widget.LinearSmoothScroller
        public final float calculateSpeedPerPixel(DisplayMetrics displayMetrics) {
            return 60.0f / displayMetrics.densityDpi;
        }

        @Override // androidx.recyclerview.widget.LinearSmoothScroller
        public final int calculateTimeForDeceleration(int i) {
            return (int) Math.ceil(((double) calculateTimeForScrolling(i)) / 0.3d);
        }

        @Override // androidx.recyclerview.widget.LinearSmoothScroller, androidx.recyclerview.widget.RecyclerView.SmoothScroller
        public final void onTargetFound(View view, RecyclerView.State state, RecyclerView.SmoothScroller.Action action) {
            r0a r0aVar = r0a.this;
            RecyclerView recyclerView = r0aVar.g;
            if (recyclerView == null || recyclerView.getLayoutManager() == null) {
                return;
            }
            int[] iArrCalculateDistanceToFinalSnap = r0aVar.calculateDistanceToFinalSnap(r0aVar.g.getLayoutManager(), view);
            int i = iArrCalculateDistanceToFinalSnap[0];
            int i2 = iArrCalculateDistanceToFinalSnap[1];
            int iCalculateTimeForDeceleration = calculateTimeForDeceleration(Math.max(Math.abs(i), Math.abs(i2)));
            if (iCalculateTimeForDeceleration > 0) {
                action.update(i, i2, iCalculateTimeForDeceleration, r0aVar.c);
            }
        }
    }

    public final View a(RecyclerView.LayoutManager layoutManager, OrientationHelper orientationHelper, int i, boolean z) {
        View view = null;
        if (layoutManager.getChildCount() != 0 && (layoutManager instanceof LinearLayoutManager)) {
            LinearLayoutManager linearLayoutManager = (LinearLayoutManager) layoutManager;
            if (!z || ((linearLayoutManager.getReverseLayout() || this.d != 8388611) && ((!linearLayoutManager.getReverseLayout() || this.d != 8388613) && ((linearLayoutManager.getReverseLayout() || this.d != 48) && (!linearLayoutManager.getReverseLayout() || this.d != 80))) ? this.d != 17 ? linearLayoutManager.findFirstCompletelyVisibleItemPosition() != 0 : linearLayoutManager.findFirstCompletelyVisibleItemPosition() != 0 && linearLayoutManager.findLastCompletelyVisibleItemPosition() != linearLayoutManager.getItemCount() - 1 : linearLayoutManager.findLastCompletelyVisibleItemPosition() != linearLayoutManager.getItemCount() - 1)) {
                int totalSpace = layoutManager.getClipToPadding() ? (orientationHelper.getTotalSpace() / 2) + orientationHelper.getStartAfterPadding() : orientationHelper.getEnd() / 2;
                boolean z2 = i == 8388611;
                int i2 = Integer.MAX_VALUE;
                for (int i3 = 0; i3 < linearLayoutManager.getChildCount(); i3++) {
                    View childAt = linearLayoutManager.getChildAt(i3);
                    int iAbs = z2 ? Math.abs(orientationHelper.getDecoratedStart(childAt)) : Math.abs(((orientationHelper.getDecoratedMeasurement(childAt) / 2) + orientationHelper.getDecoratedStart(childAt)) - totalSpace);
                    if (iAbs < i2) {
                        view = childAt;
                        i2 = iAbs;
                    }
                }
            }
        }
        return view;
    }

    @Override // androidx.recyclerview.widget.SnapHelper
    public final void attachToRecyclerView(RecyclerView recyclerView) {
        if (recyclerView != null) {
            recyclerView.setOnFlingListener(null);
            this.g = recyclerView;
        } else {
            this.g = null;
        }
        try {
            super.attachToRecyclerView(recyclerView);
        } catch (Throwable unused) {
        }
    }

    public final View b(RecyclerView.LayoutManager layoutManager, boolean z) {
        int i = this.d;
        if (i == 17) {
            return a(layoutManager, getHorizontalHelper(layoutManager), 17, z);
        }
        if (i == 48) {
            return a(layoutManager, getVerticalHelper(layoutManager), GravityCompat.START, z);
        }
        if (i == 80) {
            return a(layoutManager, getVerticalHelper(layoutManager), GravityCompat.END, z);
        }
        if (i == 8388611) {
            return a(layoutManager, getHorizontalHelper(layoutManager), GravityCompat.START, z);
        }
        if (i != 8388613) {
            return null;
        }
        return a(layoutManager, getHorizontalHelper(layoutManager), GravityCompat.END, z);
    }

    public final void c(int i) {
        RecyclerView.LayoutManager layoutManager;
        View viewB;
        if (this.d != i) {
            this.d = i;
            RecyclerView recyclerView = this.g;
            if (recyclerView == null || recyclerView.getLayoutManager() == null || (viewB = b((layoutManager = this.g.getLayoutManager()), false)) == null) {
                return;
            }
            int[] iArrCalculateDistanceToFinalSnap = calculateDistanceToFinalSnap(layoutManager, viewB);
            this.g.smoothScrollBy(iArrCalculateDistanceToFinalSnap[0], iArrCalculateDistanceToFinalSnap[1]);
        }
    }

    @Override // androidx.recyclerview.widget.LinearSnapHelper, androidx.recyclerview.widget.SnapHelper
    public final int[] calculateDistanceToFinalSnap(RecyclerView.LayoutManager layoutManager, View view) {
        int endAfterPadding;
        int i = this.d;
        if (i == 17) {
            int[] iArrCalculateDistanceToFinalSnap = super.calculateDistanceToFinalSnap(layoutManager, view);
            return iArrCalculateDistanceToFinalSnap == null ? new int[2] : iArrCalculateDistanceToFinalSnap;
        }
        int[] iArr = new int[2];
        if (!(layoutManager instanceof LinearLayoutManager)) {
            return iArr;
        }
        LinearLayoutManager linearLayoutManager = (LinearLayoutManager) layoutManager;
        if (i == 8388611) {
            OrientationHelper horizontalHelper = getHorizontalHelper(linearLayoutManager);
            int decoratedStart = horizontalHelper.getDecoratedStart(view);
            if (decoratedStart >= horizontalHelper.getStartAfterPadding() / 2) {
                decoratedStart -= horizontalHelper.getStartAfterPadding();
            }
            iArr[0] = decoratedStart;
            return iArr;
        }
        OrientationHelper horizontalHelper2 = getHorizontalHelper(linearLayoutManager);
        int decoratedEnd = horizontalHelper2.getDecoratedEnd(view);
        if (decoratedEnd >= horizontalHelper2.getEnd() - ((horizontalHelper2.getEnd() - horizontalHelper2.getEndAfterPadding()) / 2)) {
            decoratedEnd = horizontalHelper2.getDecoratedEnd(view);
            endAfterPadding = horizontalHelper2.getEnd();
        } else {
            endAfterPadding = horizontalHelper2.getEndAfterPadding();
        }
        iArr[0] = decoratedEnd - endAfterPadding;
        return iArr;
    }

    @Override // androidx.recyclerview.widget.SnapHelper
    public final RecyclerView.SmoothScroller createScroller(RecyclerView.LayoutManager layoutManager) {
        RecyclerView recyclerView;
        if (!(layoutManager instanceof RecyclerView.SmoothScroller.ScrollVectorProvider) || (recyclerView = this.g) == null) {
            return null;
        }
        return new a(recyclerView.getContext());
    }

    @Override // androidx.recyclerview.widget.LinearSnapHelper, androidx.recyclerview.widget.SnapHelper
    public final View findSnapView(RecyclerView.LayoutManager layoutManager) {
        return b(layoutManager, true);
    }

    public final OrientationHelper getHorizontalHelper(RecyclerView.LayoutManager layoutManager) {
        OrientationHelper orientationHelper = this.f;
        if (orientationHelper == null || orientationHelper.getLayoutManager() != layoutManager) {
            this.f = OrientationHelper.createHorizontalHelper(layoutManager);
        }
        return this.f;
    }

    public final OrientationHelper getVerticalHelper(RecyclerView.LayoutManager layoutManager) {
        OrientationHelper orientationHelper = this.e;
        if (orientationHelper == null || orientationHelper.getLayoutManager() != layoutManager) {
            this.e = OrientationHelper.createVerticalHelper(layoutManager);
        }
        return this.e;
    }
}
