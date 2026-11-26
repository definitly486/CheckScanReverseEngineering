package androidx.compose.runtime;

import androidx.collection.ScatterSet;
import androidx.compose.runtime.tooling.CompositionData;
import defpackage.bm3;
import defpackage.j59;
import defpackage.ll3;
import defpackage.o22;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public abstract class CompositionContext {
    public static final int $stable = 0;

    public abstract void composeInitial$runtime(ControlledComposition controlledComposition, bm3<? super Composer, ? super Integer, j59> bm3Var);

    public abstract ScatterSet<RecomposeScopeImpl> composeInitialPaused$runtime(ControlledComposition controlledComposition, ShouldPauseCallback shouldPauseCallback, bm3<? super Composer, ? super Integer, j59> bm3Var);

    public abstract void deletedMovableContent$runtime(MovableContentStateReference movableContentStateReference);

    public void doneComposing$runtime() {
    }

    public abstract boolean getCollectingCallByInformation$runtime();

    public abstract boolean getCollectingParameterInformation$runtime();

    public abstract boolean getCollectingSourceInformation$runtime();

    public abstract long getCompositeKeyHashCode$runtime();

    public abstract Composition getComposition$runtime();

    public PersistentCompositionLocalMap getCompositionLocalScope$runtime() {
        return CompositionContextKt.EmptyPersistentCompositionLocalMap;
    }

    public abstract o22 getEffectCoroutineContext();

    public CompositionObserverHolder getObserverHolder$runtime() {
        return null;
    }

    public abstract boolean getStackTraceEnabled$runtime();

    public abstract void insertMovableContent$runtime(MovableContentStateReference movableContentStateReference);

    public abstract void invalidate$runtime(ControlledComposition controlledComposition);

    public abstract void invalidateScope$runtime(RecomposeScopeImpl recomposeScopeImpl);

    public abstract void movableContentStateReleased$runtime(MovableContentStateReference movableContentStateReference, MovableContentState movableContentState, Applier<?> applier);

    public MovableContentState movableContentStateResolve$runtime(MovableContentStateReference movableContentStateReference) {
        return null;
    }

    public abstract ScatterSet<RecomposeScopeImpl> recomposePaused$runtime(ControlledComposition controlledComposition, ShouldPauseCallback shouldPauseCallback, ScatterSet<RecomposeScopeImpl> scatterSet);

    public void recordInspectionTable$runtime(Set<CompositionData> set) {
    }

    public void registerComposer$runtime(Composer composer) {
    }

    public abstract void registerComposition$runtime(ControlledComposition controlledComposition);

    public abstract void reportPausedScope$runtime(RecomposeScopeImpl recomposeScopeImpl);

    public abstract void reportRemovedComposition$runtime(ControlledComposition controlledComposition);

    public abstract CancellationHandle scheduleFrameEndCallback(ll3<j59> ll3Var);

    public void startComposing$runtime() {
    }

    public void unregisterComposer$runtime(Composer composer) {
    }

    public abstract void unregisterComposition$runtime(ControlledComposition controlledComposition);
}
