package androidx.compose.foundation.lazy.layout;

import androidx.compose.animation.core.AnimationState;
import androidx.compose.animation.core.AnimationStateKt;
import androidx.compose.animation.core.AnimationVector1D;
import androidx.compose.animation.core.TwoWayConverter;
import androidx.compose.animation.core.VectorConvertersKt;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.ui.unit.Density;
import defpackage.av0;
import defpackage.j59;
import defpackage.mb4;
import defpackage.nl3;
import defpackage.sc3;
import defpackage.y22;

/* JADX INFO: loaded from: classes.dex */
public final class LazyLayoutScrollDeltaBetweenPasses {
    public static final int $stable = 8;
    private AnimationState<Float, AnimationVector1D> _scrollDeltaBetweenPasses;
    private mb4 job;

    public LazyLayoutScrollDeltaBetweenPasses() {
        TwoWayConverter<Float, AnimationVector1D> vectorConverter = VectorConvertersKt.getVectorConverter(sc3.a);
        Float fValueOf = Float.valueOf(0.0f);
        this._scrollDeltaBetweenPasses = AnimationStateKt.AnimationState$default(vectorConverter, fValueOf, fValueOf, 0L, 0L, false, 56, null);
    }

    public final mb4 getJob$foundation() {
        return this.job;
    }

    public final float getScrollDeltaBetweenPasses$foundation() {
        return this._scrollDeltaBetweenPasses.getValue().floatValue();
    }

    public final boolean isActive$foundation() {
        return !(this._scrollDeltaBetweenPasses.getValue().floatValue() == 0.0f);
    }

    public final void setJob$foundation(mb4 mb4Var) {
        this.job = mb4Var;
    }

    public final void stop$foundation() {
        mb4 mb4Var = this.job;
        if (mb4Var != null) {
            mb4Var.cancel(null);
        }
        this._scrollDeltaBetweenPasses = new AnimationState<>(VectorConvertersKt.getVectorConverter(sc3.a), Float.valueOf(0.0f), null, 0L, 0L, false, 60, null);
    }

    public final void updateScrollDeltaForApproach$foundation(float f, Density density, y22 y22Var) {
        if (f <= density.mo1434toPx0680j_4(LazyLayoutScrollDeltaBetweenPassesKt.DeltaThresholdForScrollAnimation)) {
            return;
        }
        Snapshot.Companion companion = Snapshot.Companion;
        Snapshot currentThreadSnapshot = companion.getCurrentThreadSnapshot();
        nl3<Object, j59> readObserver = currentThreadSnapshot != null ? currentThreadSnapshot.getReadObserver() : null;
        Snapshot snapshotMakeCurrentNonObservable = companion.makeCurrentNonObservable(currentThreadSnapshot);
        try {
            float fFloatValue = this._scrollDeltaBetweenPasses.getValue().floatValue();
            mb4 mb4Var = this.job;
            if (mb4Var != null) {
                mb4Var.cancel(null);
            }
            if (this._scrollDeltaBetweenPasses.isRunning()) {
                this._scrollDeltaBetweenPasses = AnimationStateKt.copy$default((AnimationState) this._scrollDeltaBetweenPasses, fFloatValue - f, 0.0f, 0L, 0L, false, 30, (Object) null);
            } else {
                this._scrollDeltaBetweenPasses = new AnimationState<>(VectorConvertersKt.getVectorConverter(sc3.a), Float.valueOf(-f), null, 0L, 0L, false, 60, null);
            }
            this.job = av0.c(y22Var, null, null, new LazyLayoutScrollDeltaBetweenPasses$updateScrollDeltaForApproach$2$1(this, null), 3);
            j59 j59Var = j59.a;
        } finally {
            companion.restoreNonObservable(currentThreadSnapshot, snapshotMakeCurrentNonObservable, readObserver);
        }
    }
}
