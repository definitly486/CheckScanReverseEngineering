package com.wdullaer.materialdatetimepicker;

import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.LinearSnapHelper;
import androidx.recyclerview.widget.OrientationHelper;
import androidx.recyclerview.widget.RecyclerView;
import defpackage.fg;

/* JADX INFO: loaded from: classes3.dex */
public class GravitySnapHelper extends LinearSnapHelper {
    private int gravity;
    private OrientationHelper horizontalHelper;
    private boolean isRtlHorizontal;
    private SnapListener listener;
    private RecyclerView.OnScrollListener mScrollListener;
    private boolean snapping;
    private OrientationHelper verticalHelper;

    public interface SnapListener {
        void onSnap(int i);
    }

    public GravitySnapHelper(int i, SnapListener snapListener) {
        this.mScrollListener = new RecyclerView.OnScrollListener() { // from class: com.wdullaer.materialdatetimepicker.GravitySnapHelper.1
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrollStateChanged(RecyclerView recyclerView, int i2) {
                super.onScrollStateChanged(recyclerView, i2);
                if (i2 == 2) {
                    GravitySnapHelper.this.snapping = false;
                }
                if (i2 != 0 || GravitySnapHelper.this.listener == null) {
                    return;
                }
                int snappedPosition = GravitySnapHelper.this.getSnappedPosition(recyclerView);
                if (snappedPosition != -1) {
                    GravitySnapHelper.this.listener.onSnap(snappedPosition);
                }
                GravitySnapHelper.this.snapping = false;
            }
        };
        if (i != 8388611 && i != 8388613 && i != 80 && i != 48) {
            fg.c("Invalid gravity value. Use START | END | BOTTOM | TOP constants");
            throw null;
        }
        this.gravity = i;
        this.listener = snapListener;
    }

    private int distanceToEnd(View view, OrientationHelper orientationHelper, boolean z) {
        return (!this.isRtlHorizontal || z) ? orientationHelper.getDecoratedEnd(view) - orientationHelper.getEndAfterPadding() : distanceToStart(view, orientationHelper, true);
    }

    private int distanceToStart(View view, OrientationHelper orientationHelper, boolean z) {
        return (!this.isRtlHorizontal || z) ? orientationHelper.getDecoratedStart(view) - orientationHelper.getStartAfterPadding() : distanceToEnd(view, orientationHelper, true);
    }

    private View findEndView(RecyclerView.LayoutManager layoutManager, OrientationHelper orientationHelper) {
        LinearLayoutManager linearLayoutManager;
        int iFindLastVisibleItemPosition;
        float totalSpace;
        int decoratedMeasurement;
        if (!(layoutManager instanceof LinearLayoutManager) || (iFindLastVisibleItemPosition = (linearLayoutManager = (LinearLayoutManager) layoutManager).findLastVisibleItemPosition()) == -1) {
            return null;
        }
        View viewFindViewByPosition = layoutManager.findViewByPosition(iFindLastVisibleItemPosition);
        if (this.isRtlHorizontal) {
            totalSpace = orientationHelper.getDecoratedEnd(viewFindViewByPosition);
            decoratedMeasurement = orientationHelper.getDecoratedMeasurement(viewFindViewByPosition);
        } else {
            totalSpace = orientationHelper.getTotalSpace() - orientationHelper.getDecoratedStart(viewFindViewByPosition);
            decoratedMeasurement = orientationHelper.getDecoratedMeasurement(viewFindViewByPosition);
        }
        float f = totalSpace / decoratedMeasurement;
        boolean z = linearLayoutManager.findFirstCompletelyVisibleItemPosition() == 0;
        if (f > 0.5f && !z) {
            return viewFindViewByPosition;
        }
        if (z) {
            return null;
        }
        return layoutManager.findViewByPosition(iFindLastVisibleItemPosition - 1);
    }

    private View findStartView(RecyclerView.LayoutManager layoutManager, OrientationHelper orientationHelper) {
        LinearLayoutManager linearLayoutManager;
        int iFindFirstVisibleItemPosition;
        float decoratedEnd;
        int decoratedMeasurement;
        if (!(layoutManager instanceof LinearLayoutManager) || (iFindFirstVisibleItemPosition = (linearLayoutManager = (LinearLayoutManager) layoutManager).findFirstVisibleItemPosition()) == -1) {
            return null;
        }
        View viewFindViewByPosition = layoutManager.findViewByPosition(iFindFirstVisibleItemPosition);
        if (this.isRtlHorizontal) {
            decoratedEnd = orientationHelper.getTotalSpace() - orientationHelper.getDecoratedStart(viewFindViewByPosition);
            decoratedMeasurement = orientationHelper.getDecoratedMeasurement(viewFindViewByPosition);
        } else {
            decoratedEnd = orientationHelper.getDecoratedEnd(viewFindViewByPosition);
            decoratedMeasurement = orientationHelper.getDecoratedMeasurement(viewFindViewByPosition);
        }
        float f = decoratedEnd / decoratedMeasurement;
        boolean z = linearLayoutManager.findLastCompletelyVisibleItemPosition() == layoutManager.getItemCount() - 1;
        if (f > 0.5f && !z) {
            return viewFindViewByPosition;
        }
        if (z) {
            return null;
        }
        return layoutManager.findViewByPosition(iFindFirstVisibleItemPosition + 1);
    }

    private OrientationHelper getHorizontalHelper(RecyclerView.LayoutManager layoutManager) {
        OrientationHelper orientationHelper = this.horizontalHelper;
        if (orientationHelper != null) {
            return orientationHelper;
        }
        OrientationHelper orientationHelperCreateHorizontalHelper = OrientationHelper.createHorizontalHelper(layoutManager);
        this.horizontalHelper = orientationHelperCreateHorizontalHelper;
        return orientationHelperCreateHorizontalHelper;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getSnappedPosition(RecyclerView recyclerView) {
        RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
        if (!(layoutManager instanceof LinearLayoutManager)) {
            return -1;
        }
        int i = this.gravity;
        if (i == 8388611 || i == 48) {
            return ((LinearLayoutManager) layoutManager).findFirstCompletelyVisibleItemPosition();
        }
        if (i == 8388613 || i == 80) {
            return ((LinearLayoutManager) layoutManager).findLastCompletelyVisibleItemPosition();
        }
        return -1;
    }

    private OrientationHelper getVerticalHelper(RecyclerView.LayoutManager layoutManager) {
        OrientationHelper orientationHelper = this.verticalHelper;
        if (orientationHelper != null) {
            return orientationHelper;
        }
        OrientationHelper orientationHelperCreateVerticalHelper = OrientationHelper.createVerticalHelper(layoutManager);
        this.verticalHelper = orientationHelperCreateVerticalHelper;
        return orientationHelperCreateVerticalHelper;
    }

    @Override // androidx.recyclerview.widget.SnapHelper
    public void attachToRecyclerView(RecyclerView recyclerView) {
        if (recyclerView != null) {
            int i = this.gravity;
            if (i == 8388611 || i == 8388613) {
                this.isRtlHorizontal = recyclerView.getContext().getResources().getConfiguration().getLayoutDirection() == 1;
            }
            if (this.listener != null) {
                recyclerView.addOnScrollListener(this.mScrollListener);
            }
        }
        super.attachToRecyclerView(recyclerView);
    }

    @Override // androidx.recyclerview.widget.LinearSnapHelper, androidx.recyclerview.widget.SnapHelper
    public int[] calculateDistanceToFinalSnap(RecyclerView.LayoutManager layoutManager, View view) {
        int[] iArr = new int[2];
        if (!layoutManager.canScrollHorizontally()) {
            iArr[0] = 0;
        } else if (this.gravity == 8388611) {
            iArr[0] = distanceToStart(view, getHorizontalHelper(layoutManager), false);
        } else {
            iArr[0] = distanceToEnd(view, getHorizontalHelper(layoutManager), false);
        }
        if (!layoutManager.canScrollVertically()) {
            iArr[1] = 0;
            return iArr;
        }
        if (this.gravity == 48) {
            iArr[1] = distanceToStart(view, getVerticalHelper(layoutManager), false);
            return iArr;
        }
        iArr[1] = distanceToEnd(view, getVerticalHelper(layoutManager), false);
        return iArr;
    }

    /* JADX WARN: Code duplicated, block: B:17:0x003d  */
    @Override // androidx.recyclerview.widget.LinearSnapHelper, androidx.recyclerview.widget.SnapHelper
    public View findSnapView(RecyclerView.LayoutManager layoutManager) {
        View viewFindStartView;
        if (layoutManager instanceof LinearLayoutManager) {
            int i = this.gravity;
            if (i == 48) {
                viewFindStartView = findStartView(layoutManager, getVerticalHelper(layoutManager));
            } else if (i == 80) {
                viewFindStartView = findEndView(layoutManager, getVerticalHelper(layoutManager));
            } else if (i == 8388611) {
                viewFindStartView = findStartView(layoutManager, getHorizontalHelper(layoutManager));
            } else if (i != 8388613) {
                viewFindStartView = null;
            } else {
                viewFindStartView = findEndView(layoutManager, getHorizontalHelper(layoutManager));
            }
        } else {
            viewFindStartView = null;
        }
        this.snapping = viewFindStartView != null;
        return viewFindStartView;
    }

    public GravitySnapHelper(int i) {
        this(i, null);
    }
}
