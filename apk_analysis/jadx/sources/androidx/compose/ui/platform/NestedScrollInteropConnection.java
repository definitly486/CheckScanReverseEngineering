package androidx.compose.ui.platform;

import android.view.View;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.nestedscroll.NestedScrollConnection;
import androidx.compose.ui.unit.Velocity;
import androidx.core.view.NestedScrollingChildHelper;
import androidx.core.view.ViewCompat;
import androidx.media3.muxer.MuxerUtil;
import defpackage.aq5;
import defpackage.e02;

/* JADX INFO: loaded from: classes2.dex */
public final class NestedScrollInteropConnection implements NestedScrollConnection {
    public static final int $stable = 8;
    private final int[] consumedScrollCache;
    private final float minFlingVelocity;
    private final NestedScrollingChildHelper nestedScrollChildHelper;
    private final View view;

    public NestedScrollInteropConnection(View view, float f) {
        this.view = view;
        this.minFlingVelocity = f;
        NestedScrollingChildHelper nestedScrollingChildHelper = new NestedScrollingChildHelper(view);
        nestedScrollingChildHelper.setNestedScrollingEnabled(true);
        this.nestedScrollChildHelper = nestedScrollingChildHelper;
        this.consumedScrollCache = new int[2];
        ViewCompat.setNestedScrollingEnabled(view, true);
    }

    private final void stopNestedScrolls() {
        if (this.nestedScrollChildHelper.hasNestedScrollingParent(0)) {
            this.nestedScrollChildHelper.stopNestedScroll(0);
        }
        if (this.nestedScrollChildHelper.hasNestedScrollingParent(1)) {
            this.nestedScrollChildHelper.stopNestedScroll(1);
        }
    }

    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    /* JADX INFO: renamed from: onPostFling-RZ2iAVY */
    public Object mo1601onPostFlingRZ2iAVY(long j, long j2, e02<? super Velocity> e02Var) {
        stopNestedScrolls();
        return Velocity.m9271boximpl(Velocity.Companion.m9291getZero9UxMQ8M());
    }

    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    /* JADX INFO: renamed from: onPostScroll-DzOQY0M */
    public long mo1602onPostScrollDzOQY0M(long j, long j2, int i) {
        if (!this.nestedScrollChildHelper.startNestedScroll(NestedScrollInteropConnectionKt.m8228getScrollAxesk4lQ0M(j2), NestedScrollInteropConnectionKt.m8231toViewTypeGyEprt8(i))) {
            return Offset.Companion.m6003getZeroF1C5BW0();
        }
        aq5.u(0, 0, 6, this.consumedScrollCache);
        int iComposeToViewOffset = NestedScrollInteropConnectionKt.composeToViewOffset(Float.intBitsToFloat((int) (j2 >> 32)));
        int iComposeToViewOffset2 = NestedScrollInteropConnectionKt.composeToViewOffset(Float.intBitsToFloat((int) (j2 & MuxerUtil.UNSIGNED_INT_MAX_VALUE)));
        this.nestedScrollChildHelper.dispatchNestedScroll(NestedScrollInteropConnectionKt.composeToViewOffset(Float.intBitsToFloat((int) (j >> 32))), NestedScrollInteropConnectionKt.composeToViewOffset(Float.intBitsToFloat((int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE))), iComposeToViewOffset, iComposeToViewOffset2, null, NestedScrollInteropConnectionKt.m8231toViewTypeGyEprt8(i), this.consumedScrollCache);
        return NestedScrollInteropConnectionKt.m8230toOffsetmoWRBKg(iComposeToViewOffset, iComposeToViewOffset2, this.consumedScrollCache, j2);
    }

    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    /* JADX INFO: renamed from: onPreFling-QWom1Mo */
    public Object mo2130onPreFlingQWom1Mo(long j, e02<? super Velocity> e02Var) {
        if (!this.nestedScrollChildHelper.dispatchNestedPreFling(NestedScrollInteropConnectionKt.toViewVelocity(Velocity.m9280getXimpl(j)), NestedScrollInteropConnectionKt.toViewVelocity(Velocity.m9281getYimpl(j))) && !this.nestedScrollChildHelper.dispatchNestedFling(NestedScrollInteropConnectionKt.toViewVelocity(Velocity.m9280getXimpl(j)), NestedScrollInteropConnectionKt.toViewVelocity(Velocity.m9281getYimpl(j)), true)) {
            j = Velocity.Companion.m9291getZero9UxMQ8M();
        }
        return Velocity.m9271boximpl(j);
    }

    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    /* JADX INFO: renamed from: onPreScroll-OzD1aCk */
    public long mo2131onPreScrollOzD1aCk(long j, int i) {
        if (!this.nestedScrollChildHelper.startNestedScroll(NestedScrollInteropConnectionKt.m8228getScrollAxesk4lQ0M(j), NestedScrollInteropConnectionKt.m8231toViewTypeGyEprt8(i))) {
            return Offset.Companion.m6003getZeroF1C5BW0();
        }
        aq5.u(0, 0, 6, this.consumedScrollCache);
        int iComposeToViewOffset = NestedScrollInteropConnectionKt.composeToViewOffset(Float.intBitsToFloat((int) (j >> 32)));
        int iComposeToViewOffset2 = NestedScrollInteropConnectionKt.composeToViewOffset(Float.intBitsToFloat((int) (MuxerUtil.UNSIGNED_INT_MAX_VALUE & j)));
        this.nestedScrollChildHelper.dispatchNestedPreScroll(iComposeToViewOffset, iComposeToViewOffset2, this.consumedScrollCache, null, NestedScrollInteropConnectionKt.m8231toViewTypeGyEprt8(i));
        return NestedScrollInteropConnectionKt.m8230toOffsetmoWRBKg(iComposeToViewOffset, iComposeToViewOffset2, this.consumedScrollCache, j);
    }
}
