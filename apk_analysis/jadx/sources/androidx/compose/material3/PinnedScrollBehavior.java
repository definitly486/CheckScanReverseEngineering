package androidx.compose.material3;

import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.animation.core.DecayAnimationSpec;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.nestedscroll.NestedScrollConnection;
import androidx.compose.ui.unit.Velocity;
import androidx.media3.muxer.MuxerUtil;
import defpackage.e02;
import defpackage.jh2;
import defpackage.ll3;

/* JADX INFO: loaded from: classes2.dex */
final class PinnedScrollBehavior implements TopAppBarScrollBehavior {
    private final ll3<Boolean> canScroll;
    private final DecayAnimationSpec<Float> flingAnimationSpec;
    private final boolean isPinned;
    private NestedScrollConnection nestedScrollConnection;
    private final AnimationSpec<Float> snapAnimationSpec;
    private final TopAppBarState state;

    public PinnedScrollBehavior(TopAppBarState topAppBarState, ll3<Boolean> ll3Var) {
        this.state = topAppBarState;
        this.canScroll = ll3Var;
        this.isPinned = true;
        this.nestedScrollConnection = new NestedScrollConnection() { // from class: androidx.compose.material3.PinnedScrollBehavior$nestedScrollConnection$1
            @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
            /* JADX INFO: renamed from: onPostFling-RZ2iAVY */
            public Object mo1601onPostFlingRZ2iAVY(long j, long j2, e02<? super Velocity> e02Var) {
                if (Velocity.m9281getYimpl(j2) > 0.0f) {
                    this.this$0.getState().setContentOffset(0.0f);
                }
                return super.mo1601onPostFlingRZ2iAVY(j, j2, e02Var);
            }

            @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
            /* JADX INFO: renamed from: onPostScroll-DzOQY0M */
            public long mo1602onPostScrollDzOQY0M(long j, long j2, int i) {
                if (!this.this$0.getCanScroll().invoke().booleanValue()) {
                    return Offset.Companion.m6003getZeroF1C5BW0();
                }
                TopAppBarState state = this.this$0.getState();
                state.setContentOffset(Float.intBitsToFloat((int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE)) + state.getContentOffset());
                return Offset.Companion.m6003getZeroF1C5BW0();
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean _init_$lambda$0() {
        return true;
    }

    public final ll3<Boolean> getCanScroll() {
        return this.canScroll;
    }

    @Override // androidx.compose.material3.TopAppBarScrollBehavior
    public DecayAnimationSpec<Float> getFlingAnimationSpec() {
        return this.flingAnimationSpec;
    }

    @Override // androidx.compose.material3.TopAppBarScrollBehavior
    public NestedScrollConnection getNestedScrollConnection() {
        return this.nestedScrollConnection;
    }

    @Override // androidx.compose.material3.TopAppBarScrollBehavior
    public AnimationSpec<Float> getSnapAnimationSpec() {
        return this.snapAnimationSpec;
    }

    @Override // androidx.compose.material3.TopAppBarScrollBehavior
    public TopAppBarState getState() {
        return this.state;
    }

    @Override // androidx.compose.material3.TopAppBarScrollBehavior
    public boolean isPinned() {
        return this.isPinned;
    }

    public void setNestedScrollConnection(NestedScrollConnection nestedScrollConnection) {
        this.nestedScrollConnection = nestedScrollConnection;
    }

    public /* synthetic */ PinnedScrollBehavior(TopAppBarState topAppBarState, ll3 ll3Var, int i, jh2 jh2Var) {
        this(topAppBarState, (i & 2) != 0 ? new n3() : ll3Var);
    }
}
