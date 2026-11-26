package androidx.compose.animation;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.RectKt;
import defpackage.aa4;

/* JADX INFO: loaded from: classes.dex */
public final class ActiveMatchConfigured extends MatchIsOrHasBeenConfigured {
    public static final int $stable = 0;
    private final MutableState currentBounds$delegate;
    private final MutableState targetBoundsProvider$delegate;
    private final TargetData targetData;

    public ActiveMatchConfigured(TargetData targetData, BoundsProvider boundsProvider, Rect rect) {
        this.targetData = targetData;
        this.targetBoundsProvider$delegate = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(boundsProvider, null, 2, null);
        this.currentBounds$delegate = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(rect, null, 2, null);
    }

    private void setCurrentBounds(Rect rect) {
        this.currentBounds$delegate.setValue(rect);
    }

    @Override // androidx.compose.animation.SharedTransitionStateMachine.State
    /* JADX INFO: renamed from: configureActiveMatch-38uP1EE, reason: not valid java name */
    public SharedTransitionStateMachine.State mo1040configureActiveMatch38uP1EE(SharedElement sharedElement, BoundsProvider boundsProvider, long j, long j2, long j3) {
        SharedTransitionStateMachineKt.m1158updateTargetDataBGTQxF0(getTargetData(), j, j2, j3, !aa4.e(getTargetBoundsProvider(), boundsProvider));
        setTargetBoundsProvider(boundsProvider);
        return this;
    }

    @Override // androidx.compose.animation.SharedTransitionStateMachine.State
    public boolean getActiveMatchFound() {
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.compose.animation.MatchIsOrHasBeenConfigured, androidx.compose.animation.SharedTransitionStateMachine.State
    public Rect getCurrentBounds() {
        return (Rect) this.currentBounds$delegate.getValue();
    }

    public final BoundsProvider getTargetBoundsProvider() {
        return (BoundsProvider) this.targetBoundsProvider$delegate.getValue();
    }

    @Override // androidx.compose.animation.MatchIsOrHasBeenConfigured, androidx.compose.animation.SharedTransitionStateMachine.State
    public TargetData getTargetData() {
        return this.targetData;
    }

    @Override // androidx.compose.animation.SharedTransitionStateMachine.State
    public SharedTransitionStateMachine.State onMatchFound(BoundsProvider boundsProvider) {
        return this;
    }

    @Override // androidx.compose.animation.SharedTransitionStateMachine.State
    public SharedTransitionStateMachine.State onVisibleContentRemovedDuringTransition() {
        Rect rectCalculateAlternativeTargetBounds = getTargetBoundsProvider().calculateAlternativeTargetBounds(RectKt.m6027Recttz77jQw(Offset.m5992plusMKHz9U(getTargetData().m1171getCurrentMfrOffsetF1C5BW0(), getTargetData().m1174getTargetStructuralOffsetF1C5BW0()), getTargetData().m1173getSizeNHjbRc()));
        if (rectCalculateAlternativeTargetBounds == null) {
            return NoMatchFound.INSTANCE;
        }
        TargetData targetData = new TargetData(rectCalculateAlternativeTargetBounds.m6020getSizeNHjbRc(), getTargetData().m1172getInitialMfrOffsetF1C5BW0(), Offset.m5991minusMKHz9U(rectCalculateAlternativeTargetBounds.m6022getTopLeftF1C5BW0(), getTargetData().m1171getCurrentMfrOffsetF1C5BW0()), null);
        targetData.m1175setCurrentMfrOffsetk4lQ0M(getTargetData().m1171getCurrentMfrOffsetF1C5BW0());
        return new ActiveMatchRemovedDuringTransition(targetData, getCurrentBounds());
    }

    public final void setTargetBoundsProvider(BoundsProvider boundsProvider) {
        this.targetBoundsProvider$delegate.setValue(boundsProvider);
    }

    @Override // androidx.compose.animation.SharedTransitionStateMachine.State
    public void updateBounds(Rect rect) {
        setCurrentBounds(rect);
    }
}
