package defpackage;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.LinearSmoothScroller;
import androidx.recyclerview.widget.OrientationHelper;
import androidx.recyclerview.widget.RecyclerView;
import com.warefly.checkscan.presentation.statistics.view.StatisticsFragment;

/* JADX INFO: loaded from: classes4.dex */
public final class o78 extends LinearSmoothScroller {
    public final /* synthetic */ StatisticsFragment b;
    public final /* synthetic */ RecyclerView.LayoutManager c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o78(StatisticsFragment statisticsFragment, LinearLayoutManager linearLayoutManager, Context context) {
        super(context);
        this.b = statisticsFragment;
        this.c = linearLayoutManager;
    }

    @Override // androidx.recyclerview.widget.LinearSmoothScroller
    public final float calculateSpeedPerPixel(DisplayMetrics displayMetrics) {
        displayMetrics.getClass();
        return this.b.n / displayMetrics.densityDpi;
    }

    @Override // androidx.recyclerview.widget.LinearSmoothScroller, androidx.recyclerview.widget.RecyclerView.SmoothScroller
    public final void onTargetFound(View view, RecyclerView.State state, RecyclerView.SmoothScroller.Action action) {
        view.getClass();
        state.getClass();
        action.getClass();
        StatisticsFragment statisticsFragment = this.b;
        int i = statisticsFragment.p;
        ze4<Object>[] ze4VarArr = StatisticsFragment.q;
        int[] iArr = new int[statisticsFragment.o];
        RecyclerView.LayoutManager layoutManager = this.c;
        if (layoutManager.canScrollHorizontally()) {
            OrientationHelper orientationHelperCreateHorizontalHelper = OrientationHelper.createHorizontalHelper(layoutManager);
            orientationHelperCreateHorizontalHelper.getClass();
            iArr[0] = StatisticsFragment.q(layoutManager, view, orientationHelperCreateHorizontalHelper);
        }
        if (layoutManager.canScrollVertically()) {
            OrientationHelper orientationHelperCreateHorizontalHelper2 = OrientationHelper.createHorizontalHelper(layoutManager);
            orientationHelperCreateHorizontalHelper2.getClass();
            iArr[i] = StatisticsFragment.q(layoutManager, view, orientationHelperCreateHorizontalHelper2);
        }
        int i2 = iArr[0];
        int i3 = iArr[i];
        int iCalculateTimeForDeceleration = calculateTimeForDeceleration(Math.max(Math.abs(i2), Math.abs(i3)));
        if (iCalculateTimeForDeceleration > 0) {
            action.update(i2, i3, iCalculateTimeForDeceleration, this.mDecelerateInterpolator);
        }
    }
}
