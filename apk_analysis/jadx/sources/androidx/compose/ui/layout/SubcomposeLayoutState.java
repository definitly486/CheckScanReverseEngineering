package androidx.compose.ui.layout;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.CompositionContext;
import androidx.compose.runtime.ShouldPauseCallback;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.TraversableNode;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.IntSize;
import defpackage.bm3;
import defpackage.fg;
import defpackage.j59;
import defpackage.nl3;
import defpackage.ul2;

/* JADX INFO: loaded from: classes2.dex */
public final class SubcomposeLayoutState {
    public static final int $stable = 8;
    private LayoutNodeSubcompositionsState _state;
    private final bm3<LayoutNode, CompositionContext, j59> setCompositionContext;
    private final bm3<LayoutNode, bm3<? super SubcomposeMeasureScope, ? super Constraints, ? extends MeasureResult>, j59> setMeasurePolicy;
    private final bm3<LayoutNode, SubcomposeLayoutState, j59> setRoot;
    private final SubcomposeSlotReusePolicy slotReusePolicy;

    /* JADX INFO: loaded from: classes.dex */
    public interface PausedPrecomposition {
        PrecomposedSlotHandle apply();

        void cancel();

        boolean isComplete();

        boolean resume(ShouldPauseCallback shouldPauseCallback);
    }

    /* JADX INFO: loaded from: classes.dex */
    public interface PrecomposedSlotHandle {
        void dispose();

        default int getPlaceablesCount() {
            return 0;
        }

        /* JADX INFO: renamed from: getSize-YEO4UFw */
        default long mo7729getSizeYEO4UFw(int i) {
            return IntSize.Companion.m9218getZeroYbymL2g();
        }

        /* JADX INFO: renamed from: premeasure-0kLqBqw */
        default void mo7730premeasure0kLqBqw(int i, long j) {
        }

        default void traverseDescendants(Object obj, nl3<? super TraversableNode, ? extends TraversableNode.Companion.TraverseDescendantsAction> nl3Var) {
        }
    }

    public SubcomposeLayoutState(SubcomposeSlotReusePolicy subcomposeSlotReusePolicy) {
        this.slotReusePolicy = subcomposeSlotReusePolicy;
        this.setRoot = new SubcomposeLayoutState$setRoot$1(this);
        this.setCompositionContext = new SubcomposeLayoutState$setCompositionContext$1(this);
        this.setMeasurePolicy = new SubcomposeLayoutState$setMeasurePolicy$1(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final LayoutNodeSubcompositionsState getState() {
        LayoutNodeSubcompositionsState layoutNodeSubcompositionsState = this._state;
        if (layoutNodeSubcompositionsState != null) {
            return layoutNodeSubcompositionsState;
        }
        fg.c("SubcomposeLayoutState is not attached to SubcomposeLayout");
        return null;
    }

    public final PausedPrecomposition createPausedPrecomposition(Object obj, bm3<? super Composer, ? super Integer, j59> bm3Var) {
        return getState().precomposePaused(obj, bm3Var);
    }

    public final void forceRecomposeChildren$ui() {
        getState().forceRecomposeChildren();
    }

    public final bm3<LayoutNode, CompositionContext, j59> getSetCompositionContext$ui() {
        return this.setCompositionContext;
    }

    public final bm3<LayoutNode, bm3<? super SubcomposeMeasureScope, ? super Constraints, ? extends MeasureResult>, j59> getSetMeasurePolicy$ui() {
        return this.setMeasurePolicy;
    }

    public final bm3<LayoutNode, SubcomposeLayoutState, j59> getSetRoot$ui() {
        return this.setRoot;
    }

    public final PrecomposedSlotHandle precompose(Object obj, bm3<? super Composer, ? super Integer, j59> bm3Var) {
        return getState().precompose(obj, bm3Var);
    }

    public SubcomposeLayoutState() {
        this(NoOpSubcomposeSlotReusePolicy.INSTANCE);
    }

    @ul2
    public SubcomposeLayoutState(int i) {
        this(SubcomposeLayoutKt.SubcomposeSlotReusePolicy(i));
    }
}
