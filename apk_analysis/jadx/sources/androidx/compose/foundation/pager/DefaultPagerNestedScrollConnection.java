package androidx.compose.foundation.pager;

import androidx.compose.foundation.ComposeFoundationFlags;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.nestedscroll.NestedScrollConnection;
import androidx.compose.ui.input.nestedscroll.NestedScrollSource;
import androidx.compose.ui.unit.Velocity;
import androidx.media3.muxer.MuxerUtil;
import defpackage.e02;
import defpackage.kx6;
import java.util.concurrent.CancellationException;

/* JADX INFO: loaded from: classes.dex */
final class DefaultPagerNestedScrollConnection implements NestedScrollConnection {
    private final Orientation orientation;
    private final PagerState state;

    public DefaultPagerNestedScrollConnection(PagerState pagerState, Orientation orientation) {
        this.state = pagerState;
        this.orientation = orientation;
    }

    /* JADX INFO: renamed from: mainAxis-k-4lQ0M, reason: not valid java name */
    private final float m2289mainAxisk4lQ0M(long j) {
        return Float.intBitsToFloat((int) (this.orientation == Orientation.Horizontal ? j >> 32 : j & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
    }

    /* JADX INFO: renamed from: toFloat-k-4lQ0M, reason: not valid java name */
    private final float m2290toFloatk4lQ0M(long j) {
        return Float.intBitsToFloat((int) (this.orientation == Orientation.Horizontal ? j >> 32 : j & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
    }

    /* JADX INFO: renamed from: consumeOnOrientation-QWom1Mo, reason: not valid java name */
    public final long m2291consumeOnOrientationQWom1Mo(long j, Orientation orientation) {
        return orientation == Orientation.Vertical ? Velocity.m9276copyOhffZ5M$default(j, 0.0f, 0.0f, 2, null) : Velocity.m9276copyOhffZ5M$default(j, 0.0f, 0.0f, 1, null);
    }

    public final Orientation getOrientation() {
        return this.orientation;
    }

    public final PagerState getState() {
        return this.state;
    }

    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    /* JADX INFO: renamed from: onPostFling-RZ2iAVY */
    public Object mo1601onPostFlingRZ2iAVY(long j, long j2, e02<? super Velocity> e02Var) {
        return Velocity.m9271boximpl(m2291consumeOnOrientationQWom1Mo(j2, this.orientation));
    }

    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    /* JADX INFO: renamed from: onPostScroll-DzOQY0M */
    public long mo1602onPostScrollDzOQY0M(long j, long j2, int i) {
        if (!NestedScrollSource.m7426equalsimpl0(i, NestedScrollSource.Companion.m7437getSideEffectWNlRxjI()) || m2289mainAxisk4lQ0M(j2) == 0.0f) {
            return Offset.Companion.m6003getZeroF1C5BW0();
        }
        throw new CancellationException("Scroll cancelled");
    }

    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    /* JADX INFO: renamed from: onPreScroll-OzD1aCk */
    public long mo2131onPreScrollOzD1aCk(long j, int i) {
        if (!NestedScrollSource.m7426equalsimpl0(i, NestedScrollSource.Companion.m7438getUserInputWNlRxjI()) || Math.abs(this.state.getCurrentPageOffsetFraction()) <= 1.0E-6d || Math.abs(m2290toFloatk4lQ0M(j)) <= 0.0f) {
            return Offset.Companion.m6003getZeroF1C5BW0();
        }
        PagerLayoutInfo layoutInfo = this.state.getLayoutInfo();
        float currentPageOffsetFraction = this.state.getCurrentPageOffsetFraction() * this.state.getPageSize$foundation();
        float pageSpacing = ((layoutInfo.getPageSpacing() + layoutInfo.getPageSize()) * (-Math.signum(this.state.getCurrentPageOffsetFraction()))) + currentPageOffsetFraction;
        if (this.state.getCurrentPageOffsetFraction() > 0.0f) {
            pageSpacing = currentPageOffsetFraction;
            currentPageOffsetFraction = pageSpacing;
        }
        float fD = kx6.d(m2290toFloatk4lQ0M(j), currentPageOffsetFraction, pageSpacing);
        Orientation orientation = this.orientation;
        Orientation orientation2 = Orientation.Horizontal;
        float fDispatchRawDelta = (orientation == orientation2 && layoutInfo.getReverseLayout() && ComposeFoundationFlags.isReverseLayoutNestedScrollConnectionInPagerFixEnabled) ? this.state.dispatchRawDelta(fD) : -this.state.dispatchRawDelta(-fD);
        float fIntBitsToFloat = this.orientation == orientation2 ? fDispatchRawDelta : Float.intBitsToFloat((int) (j >> 32));
        if (this.orientation != Orientation.Vertical) {
            fDispatchRawDelta = Float.intBitsToFloat((int) (MuxerUtil.UNSIGNED_INT_MAX_VALUE & j));
        }
        return Offset.m5980copydBAh8RU(j, fIntBitsToFloat, fDispatchRawDelta);
    }
}
