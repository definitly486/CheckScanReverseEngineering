package yads;

import android.util.DisplayMetrics;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes6.dex */
public abstract class oi2 {
    public static final int a(RecyclerView recyclerView, jp0 jp0Var) {
        boolean zCanScrollVertically;
        int iFindFirstCompletelyVisibleItemPosition;
        RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
        LinearLayoutManager linearLayoutManager = layoutManager instanceof LinearLayoutManager ? (LinearLayoutManager) layoutManager : null;
        if (linearLayoutManager == null) {
            iFindFirstCompletelyVisibleItemPosition = -1;
        } else {
            int iOrdinal = jp0Var.ordinal();
            if (iOrdinal == 0) {
                RecyclerView.LayoutManager layoutManager2 = recyclerView.getLayoutManager();
                LinearLayoutManager linearLayoutManager2 = layoutManager2 instanceof LinearLayoutManager ? (LinearLayoutManager) layoutManager2 : null;
                Integer numValueOf = linearLayoutManager2 != null ? Integer.valueOf(linearLayoutManager2.getOrientation()) : null;
                if (numValueOf != null && numValueOf.intValue() == 0) {
                    zCanScrollVertically = recyclerView.canScrollHorizontally(1);
                } else {
                    zCanScrollVertically = (numValueOf != null && numValueOf.intValue() == 1) ? recyclerView.canScrollVertically(1) : false;
                }
                iFindFirstCompletelyVisibleItemPosition = zCanScrollVertically ? linearLayoutManager.findFirstCompletelyVisibleItemPosition() : linearLayoutManager.findLastCompletelyVisibleItemPosition();
            } else {
                if (iOrdinal != 1) {
                    defpackage.me0.e();
                    return 0;
                }
                iFindFirstCompletelyVisibleItemPosition = linearLayoutManager.findFirstCompletelyVisibleItemPosition();
            }
        }
        Integer numValueOf2 = Integer.valueOf(iFindFirstCompletelyVisibleItemPosition);
        if (iFindFirstCompletelyVisibleItemPosition == -1) {
            numValueOf2 = null;
        }
        if (numValueOf2 != null) {
            return numValueOf2.intValue();
        }
        RecyclerView.LayoutManager layoutManager3 = recyclerView.getLayoutManager();
        LinearLayoutManager linearLayoutManager3 = layoutManager3 instanceof LinearLayoutManager ? (LinearLayoutManager) layoutManager3 : null;
        if (linearLayoutManager3 == null) {
            return -1;
        }
        int iOrdinal2 = jp0Var.ordinal();
        if (iOrdinal2 == 0) {
            return linearLayoutManager3.findFirstVisibleItemPosition();
        }
        if (iOrdinal2 == 1) {
            return linearLayoutManager3.findLastVisibleItemPosition();
        }
        defpackage.me0.e();
        return 0;
    }

    public static final int b(RecyclerView recyclerView) {
        int paddingTop;
        int paddingBottom;
        RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
        LinearLayoutManager linearLayoutManager = layoutManager instanceof LinearLayoutManager ? (LinearLayoutManager) layoutManager : null;
        Integer numValueOf = linearLayoutManager != null ? Integer.valueOf(linearLayoutManager.getOrientation()) : null;
        if (numValueOf != null && numValueOf.intValue() == 0) {
            paddingTop = recyclerView.getPaddingLeft() + (recyclerView.computeHorizontalScrollRange() - recyclerView.getWidth());
            paddingBottom = recyclerView.getPaddingRight();
        } else {
            paddingTop = recyclerView.getPaddingTop() + (recyclerView.computeVerticalScrollRange() - recyclerView.getHeight());
            paddingBottom = recyclerView.getPaddingBottom();
        }
        return paddingBottom + paddingTop;
    }

    public static final void a(RecyclerView recyclerView, int i, g12 g12Var, DisplayMetrics displayMetrics, boolean z) {
        int iOrdinal = g12Var.ordinal();
        if (iOrdinal == 0) {
            i = defpackage.w65.b(pq.a((Number) Integer.valueOf(i), displayMetrics));
        } else if (iOrdinal == 1) {
            i = defpackage.w65.b(pq.b(Integer.valueOf(i), displayMetrics));
        } else if (iOrdinal != 2) {
            defpackage.me0.e();
            return;
        }
        RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
        LinearLayoutManager linearLayoutManager = layoutManager instanceof LinearLayoutManager ? (LinearLayoutManager) layoutManager : null;
        if (linearLayoutManager == null) {
            return;
        }
        defpackage.bm3 mi2Var = z ? new mi2(recyclerView) : new ni2(recyclerView);
        int orientation = linearLayoutManager.getOrientation();
        if (orientation == 0) {
            mi2Var.invoke(Integer.valueOf(i - recyclerView.computeHorizontalScrollOffset()), 0);
        } else {
            if (orientation != 1) {
                return;
            }
            mi2Var.invoke(0, Integer.valueOf(i - recyclerView.computeVerticalScrollOffset()));
        }
    }

    public static final int a(RecyclerView recyclerView) {
        RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
        if (layoutManager != null) {
            return layoutManager.getItemCount();
        }
        return 0;
    }
}
