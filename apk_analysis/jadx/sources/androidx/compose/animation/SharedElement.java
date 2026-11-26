package androidx.compose.animation;

import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.AnimationVector2D;
import androidx.compose.animation.core.VectorConvertersKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.LookaheadScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.IntSizeKt;
import defpackage.aa4;
import defpackage.av0;
import defpackage.j59;
import defpackage.kx2;
import defpackage.ll3;
import defpackage.qn1;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class SharedElement {
    public static final int $stable = 8;
    private final MutableState _allEntries$delegate;
    private final MutableState _enabledEntries$delegate;
    private boolean animationSpecFinalized;
    private final Object key;
    private final Animatable<Offset, AnimationVector2D> momentumAnimation;
    private final ll3<Offset> momentumAnimationOffset;
    private final ll3<j59> observingVisibilityChange;
    private final SharedTransitionScopeImpl scope;
    private final SharedTransitionStateMachine stateMachine = new SharedTransitionStateMachine(this);

    public SharedElement(Object obj, SharedTransitionScopeImpl sharedTransitionScopeImpl) {
        this.key = obj;
        this.scope = sharedTransitionScopeImpl;
        kx2 kx2Var = kx2.b;
        this._allEntries$delegate = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(kx2Var, null, 2, null);
        this._enabledEntries$delegate = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(kx2Var, null, 2, null);
        Offset.Companion companion = Offset.Companion;
        this.momentumAnimation = new Animatable<>(Offset.m5976boximpl(companion.m6003getZeroF1C5BW0()), VectorConvertersKt.getVectorConverter(companion), null, null, 12, null);
        this.momentumAnimationOffset = new SharedElement$momentumAnimationOffset$1(this);
        this.observingVisibilityChange = new SharedElement$observingVisibilityChange$1(this);
    }

    private final List<SharedElementEntry> get_allEntries() {
        return (List) this._allEntries$delegate.getValue();
    }

    private final List<SharedElementEntry> get_enabledEntries() {
        return (List) this._enabledEntries$delegate.getValue();
    }

    private final void set_allEntries(List<SharedElementEntry> list) {
        this._allEntries$delegate.setValue(list);
    }

    private final void set_enabledEntries(List<SharedElementEntry> list) {
        this._enabledEntries$delegate.setValue(list);
    }

    public final void addEntry(SharedElementEntry sharedElementEntry) {
        set_allEntries(qn1.i0(sharedElementEntry, get_allEntries()));
        updateMatch$animation();
    }

    public final List<SharedElementEntry> getAllEntries() {
        return get_allEntries();
    }

    public final boolean getBoundsTransformIsActive() {
        return getState$animation().getMatchIsOrHasBeenConfigured();
    }

    public final List<SharedElementEntry> getEnabledEntries() {
        return get_enabledEntries();
    }

    public final boolean getFoundMatch() {
        return getState$animation().getActiveMatchFound() || getState$animation().getMatchIsOrHasBeenConfigured() || this.stateMachine.getActiveMatchDeferred();
    }

    public final Object getKey() {
        return this.key;
    }

    public final ll3<Offset> getMomentumAnimationOffset() {
        return this.momentumAnimationOffset;
    }

    public final ll3<j59> getObservingVisibilityChange$animation() {
        return this.observingVisibilityChange;
    }

    public final SharedTransitionScopeImpl getScope() {
        return this.scope;
    }

    public final SharedTransitionStateMachine.State getState$animation() {
        return this.stateMachine.getState();
    }

    public final void invalidateTargetBoundsProvider() {
        this.stateMachine.invalidateTargetBoundsProvider();
    }

    public final boolean isAnimating() {
        List<SharedElementEntry> enabledEntries = getEnabledEntries();
        int size = enabledEntries.size();
        for (int i = 0; i < size; i++) {
            if (enabledEntries.get(i).getBoundsAnimation().isRunning()) {
                return true;
            }
        }
        return false;
    }

    public final void onLookaheadPlaced(Placeable.PlacementScope placementScope, SharedElementEntry sharedElementEntry) {
        LayoutCoordinates coordinates;
        this.stateMachine.processPendingRequest();
        if (aa4.e(getState$animation(), NoMatchFound.INSTANCE) || !sharedElementEntry.isEnabled()) {
            return;
        }
        SharedTransitionStateMachine.State state$animation = getState$animation();
        if (sharedElementEntry.getBoundsAnimation().getTarget() && state$animation.getActiveMatchFound() && (coordinates = placementScope.getCoordinates()) != null) {
            long jM9225toSizeozmzZPI = IntSizeKt.m9225toSizeozmzZPI(coordinates.mo7710getSizeYbymL2g());
            long jM7732localLookaheadPositionOfauaQtc$default = LookaheadScope.m7732localLookaheadPositionOfauaQtc$default(sharedElementEntry.getSharedElement().scope, sharedElementEntry.getSharedElement().scope.getLookaheadRoot$animation(), coordinates, 0L, false, 6, null);
            SharedTransitionScopeImpl sharedTransitionScopeImpl = sharedElementEntry.getSharedElement().scope;
            this.stateMachine.m1156configureActiveMatchL7TYDSY(jM9225toSizeozmzZPI, jM7732localLookaheadPositionOfauaQtc$default, LayoutCoordinates.m7709localPositionOfS_NoaFU$default(sharedElementEntry.getSharedElement().scope.getLookaheadRoot$animation(), coordinates, 0L, false, 2, null));
        }
    }

    public final void onSharedTransitionFinished() {
        if (getEnabledEntries().size() <= 1 || !SharedElementKt.hasVisibleContent(getEnabledEntries())) {
            this.stateMachine.resetState();
        }
    }

    public final void removeEntry(SharedElementEntry sharedElementEntry) {
        set_allEntries(qn1.f0(get_allEntries(), sharedElementEntry));
        set_enabledEntries(qn1.f0(get_enabledEntries(), sharedElementEntry));
        updateMatch$animation();
    }

    public final Rect tryInitializingCurrentBounds() {
        return this.stateMachine.tryInitializingCurrentBounds();
    }

    /* JADX INFO: renamed from: updateExitVelocity-TH1AsA0$animation, reason: not valid java name */
    public final void m1147updateExitVelocityTH1AsA0$animation(long j) {
        av0.c(this.scope.getCoroutineScope(), null, null, new SharedElement$updateExitVelocity$1(this, j, null), 3);
    }

    public final void updateMatch$animation() {
        ll3<j59> testBlockToRun = this.scope.getTestBlockToRun();
        if (testBlockToRun != null) {
            testBlockToRun.invoke();
        }
        List<SharedElementEntry> list = get_allEntries();
        ArrayList arrayList = new ArrayList();
        int size = list.size();
        boolean z = false;
        for (int i = 0; i < size; i++) {
            SharedElementEntry sharedElementEntry = list.get(i);
            if (sharedElementEntry.isEnabled()) {
                arrayList.add(sharedElementEntry);
                if (sharedElementEntry.getBoundsAnimation().getTarget()) {
                    z = true;
                }
            }
        }
        set_enabledEntries(arrayList);
        this.stateMachine.checkForAndDeferStateUpdates(z);
    }
}
