package androidx.compose.animation;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.RectKt;
import defpackage.jh2;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class ActiveMatchFoundConfigPending extends SharedTransitionStateMachine.State {
    public static final int $stable = 8;
    private final MutableState currentBounds$delegate;
    private BoundsProvider targetBoundsProviderBeforeConfig;
    private final TargetData targetData;

    public ActiveMatchFoundConfigPending(BoundsProvider boundsProvider, TargetData targetData, Rect rect) {
        super(null);
        this.targetBoundsProviderBeforeConfig = boundsProvider;
        this.targetData = targetData;
        this.currentBounds$delegate = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(rect, null, 2, null);
    }

    private void setCurrentBounds(Rect rect) {
        this.currentBounds$delegate.setValue(rect);
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0059 A[PHI: r1
      0x0059: PHI (r1v1 androidx.compose.ui.geometry.Rect) = (r1v0 androidx.compose.ui.geometry.Rect), (r1v3 androidx.compose.ui.geometry.Rect) binds: [B:6:0x0018, B:22:0x0051] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // androidx.compose.animation.SharedTransitionStateMachine.State
    /* JADX INFO: renamed from: configureActiveMatch-38uP1EE */
    public SharedTransitionStateMachine.State mo1040configureActiveMatch38uP1EE(SharedElement sharedElement, BoundsProvider boundsProvider, long j, long j2, long j3) {
        long j4;
        SharedElementEntry sharedElementEntry;
        TargetData targetData = getTargetData();
        if (targetData == null) {
            targetData = new TargetData(j, Offset.m5991minusMKHz9U(j2, j3), j3, null);
        }
        Rect currentBounds = getCurrentBounds();
        if (currentBounds != null) {
            j4 = j2;
        } else {
            BoundsProvider boundsProvider2 = this.targetBoundsProviderBeforeConfig;
            if (boundsProvider2 == null) {
                List<SharedElementEntry> allEntries = sharedElement.getAllEntries();
                int size = allEntries.size();
                int i = 0;
                while (true) {
                    if (i >= size) {
                        sharedElementEntry = null;
                        break;
                    }
                    sharedElementEntry = allEntries.get(i);
                    if (sharedElement.getEnabledEntries().contains(sharedElementEntry)) {
                        break;
                    }
                    i++;
                }
                SharedElementEntry sharedElementEntry2 = sharedElementEntry;
                boundsProvider2 = sharedElementEntry2 != null ? sharedElementEntry2.getBoundsProvider() : null;
            }
            currentBounds = SharedTransitionStateMachineKt.obtainBoundsFromLastTarget(sharedElement, boundsProvider2);
            if (currentBounds == null) {
                j4 = j2;
                currentBounds = RectKt.m6027Recttz77jQw(j4, j);
            } else {
                j4 = j2;
            }
        }
        TargetData targetData2 = targetData;
        SharedTransitionStateMachineKt.m1158updateTargetDataBGTQxF0(targetData2, j, j4, j3, true);
        return new ActiveMatchConfigured(targetData2, boundsProvider, currentBounds);
    }

    @Override // androidx.compose.animation.SharedTransitionStateMachine.State
    public boolean getActiveMatchFound() {
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.compose.animation.SharedTransitionStateMachine.State
    public Rect getCurrentBounds() {
        return (Rect) this.currentBounds$delegate.getValue();
    }

    public final BoundsProvider getTargetBoundsProviderBeforeConfig() {
        return this.targetBoundsProviderBeforeConfig;
    }

    @Override // androidx.compose.animation.SharedTransitionStateMachine.State
    public TargetData getTargetData() {
        return this.targetData;
    }

    @Override // androidx.compose.animation.SharedTransitionStateMachine.State
    public Rect initializeCurrentBounds(SharedElement sharedElement) {
        SharedElementEntry sharedElementEntry;
        Rect currentBounds = getCurrentBounds();
        if (currentBounds != null) {
            return currentBounds;
        }
        if (getCurrentBounds() == null) {
            BoundsProvider boundsProvider = this.targetBoundsProviderBeforeConfig;
            if (boundsProvider == null) {
                List<SharedElementEntry> allEntries = sharedElement.getAllEntries();
                int size = allEntries.size();
                int i = 0;
                while (true) {
                    if (i >= size) {
                        sharedElementEntry = null;
                        break;
                    }
                    sharedElementEntry = allEntries.get(i);
                    if (sharedElement.getEnabledEntries().contains(sharedElementEntry)) {
                        break;
                    }
                    i++;
                }
                SharedElementEntry sharedElementEntry2 = sharedElementEntry;
                boundsProvider = sharedElementEntry2 != null ? sharedElementEntry2.getBoundsProvider() : null;
            }
            Rect rectObtainBoundsFromLastTarget = SharedTransitionStateMachineKt.obtainBoundsFromLastTarget(sharedElement, boundsProvider);
            if (rectObtainBoundsFromLastTarget != null) {
                setCurrentBounds(rectObtainBoundsFromLastTarget);
            }
        }
        return getCurrentBounds();
    }

    @Override // androidx.compose.animation.SharedTransitionStateMachine.State
    public SharedTransitionStateMachine.State onMatchFound(BoundsProvider boundsProvider) {
        if (this.targetBoundsProviderBeforeConfig == null) {
            this.targetBoundsProviderBeforeConfig = boundsProvider;
        }
        return this;
    }

    @Override // androidx.compose.animation.SharedTransitionStateMachine.State
    public SharedTransitionStateMachine.State onVisibleContentRemovedDuringTransition() {
        return NoMatchFound.INSTANCE;
    }

    public final void setTargetBoundsProviderBeforeConfig(BoundsProvider boundsProvider) {
        this.targetBoundsProviderBeforeConfig = boundsProvider;
    }

    @Override // androidx.compose.animation.SharedTransitionStateMachine.State
    public void updateBounds(Rect rect) {
        setCurrentBounds(rect);
    }

    public /* synthetic */ ActiveMatchFoundConfigPending(BoundsProvider boundsProvider, TargetData targetData, Rect rect, int i, jh2 jh2Var) {
        this(boundsProvider, (i & 2) != 0 ? null : targetData, (i & 4) != 0 ? null : rect);
    }
}
