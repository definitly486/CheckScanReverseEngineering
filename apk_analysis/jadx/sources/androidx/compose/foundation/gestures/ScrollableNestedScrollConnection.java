package androidx.compose.foundation.gestures;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.nestedscroll.NestedScrollConnection;
import androidx.compose.ui.unit.Velocity;
import defpackage.a32;
import defpackage.ah;
import defpackage.e02;
import defpackage.r57;

/* JADX INFO: loaded from: classes.dex */
public final class ScrollableNestedScrollConnection implements NestedScrollConnection {
    public static final int $stable = 8;
    private boolean enabled;
    private final ScrollLogic scrollingLogic;

    public ScrollableNestedScrollConnection(ScrollLogic scrollLogic, boolean z) {
        this.scrollingLogic = scrollLogic;
        this.enabled = z;
    }

    public final boolean getEnabled() {
        return this.enabled;
    }

    public final ScrollLogic getScrollingLogic() {
        return this.scrollingLogic;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    /* JADX INFO: renamed from: onPostFling-RZ2iAVY, reason: not valid java name */
    public Object mo1601onPostFlingRZ2iAVY(long j, long j2, e02<? super Velocity> e02Var) {
        ScrollableNestedScrollConnection$onPostFling$1 scrollableNestedScrollConnection$onPostFling$1;
        long jM9291getZero9UxMQ8M;
        long jM9291getZero9UxMQ8M2;
        if (e02Var instanceof ScrollableNestedScrollConnection$onPostFling$1) {
            scrollableNestedScrollConnection$onPostFling$1 = (ScrollableNestedScrollConnection$onPostFling$1) e02Var;
            int i = scrollableNestedScrollConnection$onPostFling$1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                scrollableNestedScrollConnection$onPostFling$1.label = i - Integer.MIN_VALUE;
            } else {
                scrollableNestedScrollConnection$onPostFling$1 = new ScrollableNestedScrollConnection$onPostFling$1(this, e02Var);
            }
        } else {
            scrollableNestedScrollConnection$onPostFling$1 = new ScrollableNestedScrollConnection$onPostFling$1(this, e02Var);
        }
        Object objMo1590doFlingAnimationQWom1Mo = scrollableNestedScrollConnection$onPostFling$1.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = scrollableNestedScrollConnection$onPostFling$1.label;
        if (i2 == 0) {
            r57.b(objMo1590doFlingAnimationQWom1Mo);
            if (this.enabled) {
                if (this.scrollingLogic.isFlinging()) {
                    jM9291getZero9UxMQ8M2 = Velocity.Companion.m9291getZero9UxMQ8M();
                } else {
                    ScrollLogic scrollLogic = this.scrollingLogic;
                    scrollableNestedScrollConnection$onPostFling$1.J$0 = j2;
                    scrollableNestedScrollConnection$onPostFling$1.label = 1;
                    objMo1590doFlingAnimationQWom1Mo = scrollLogic.mo1590doFlingAnimationQWom1Mo(j2, scrollableNestedScrollConnection$onPostFling$1);
                    if (objMo1590doFlingAnimationQWom1Mo == a32Var) {
                        return a32Var;
                    }
                }
                jM9291getZero9UxMQ8M = Velocity.m9283minusAH228Gc(j2, jM9291getZero9UxMQ8M2);
            } else {
                jM9291getZero9UxMQ8M = Velocity.Companion.m9291getZero9UxMQ8M();
            }
            return Velocity.m9271boximpl(jM9291getZero9UxMQ8M);
        }
        if (i2 != 1) {
            ah.f("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        j2 = scrollableNestedScrollConnection$onPostFling$1.J$0;
        r57.b(objMo1590doFlingAnimationQWom1Mo);
        jM9291getZero9UxMQ8M2 = ((Velocity) objMo1590doFlingAnimationQWom1Mo).m9289unboximpl();
        jM9291getZero9UxMQ8M = Velocity.m9283minusAH228Gc(j2, jM9291getZero9UxMQ8M2);
        return Velocity.m9271boximpl(jM9291getZero9UxMQ8M);
    }

    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    /* JADX INFO: renamed from: onPostScroll-DzOQY0M, reason: not valid java name */
    public long mo1602onPostScrollDzOQY0M(long j, long j2, int i) {
        return this.enabled ? this.scrollingLogic.mo1591performRawScrollMKHz9U(j2) : Offset.Companion.m6003getZeroF1C5BW0();
    }

    public final void setEnabled(boolean z) {
        this.enabled = z;
    }
}
