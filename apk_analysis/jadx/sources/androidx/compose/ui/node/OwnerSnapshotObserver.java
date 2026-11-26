package androidx.compose.ui.node;

import androidx.compose.runtime.snapshots.SnapshotStateObserver;
import defpackage.j59;
import defpackage.ll3;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class OwnerSnapshotObserver {
    public static final int $stable = SnapshotStateObserver.$stable;
    private final SnapshotStateObserver observer;
    private final nl3<LayoutNode, j59> onCommitAffectingLookaheadMeasure = OwnerSnapshotObserver$onCommitAffectingLookaheadMeasure$1.INSTANCE;
    private final nl3<LayoutNode, j59> onCommitAffectingMeasure = OwnerSnapshotObserver$onCommitAffectingMeasure$1.INSTANCE;
    private final nl3<LayoutNode, j59> onCommitAffectingSemantics = OwnerSnapshotObserver$onCommitAffectingSemantics$1.INSTANCE;
    private final nl3<LayoutNode, j59> onCommitAffectingLayout = OwnerSnapshotObserver$onCommitAffectingLayout$1.INSTANCE;
    private final nl3<LayoutNode, j59> onCommitAffectingLayoutModifier = OwnerSnapshotObserver$onCommitAffectingLayoutModifier$1.INSTANCE;
    private final nl3<LayoutNode, j59> onCommitAffectingLayoutModifierInLookahead = OwnerSnapshotObserver$onCommitAffectingLayoutModifierInLookahead$1.INSTANCE;
    private final nl3<LayoutNode, j59> onCommitAffectingLookahead = OwnerSnapshotObserver$onCommitAffectingLookahead$1.INSTANCE;

    public OwnerSnapshotObserver(nl3<? super ll3<j59>, j59> nl3Var) {
        this.observer = new SnapshotStateObserver(nl3Var);
    }

    public final void clear$ui(Object obj) {
        this.observer.clear(obj);
    }

    public final void clearInvalidObservations$ui() {
        this.observer.clearIf(OwnerSnapshotObserver$clearInvalidObservations$1.INSTANCE);
    }

    public final void observeLayoutModifierSnapshotReads$ui(LayoutNode layoutNode, ll3<j59> ll3Var) {
        this.observer.observeReads(layoutNode, this.onCommitAffectingLayoutModifier, ll3Var);
    }

    public final void observeLayoutModifierSnapshotReadsAffectingLookahead$ui(LayoutNode layoutNode, ll3<j59> ll3Var) {
        this.observer.observeReads(layoutNode, this.onCommitAffectingLayoutModifierInLookahead, ll3Var);
    }

    public final void observeLayoutSnapshotReads$ui(LayoutNode layoutNode, ll3<j59> ll3Var) {
        this.observer.observeReads(layoutNode, this.onCommitAffectingLayout, ll3Var);
    }

    public final void observeLayoutSnapshotReadsAffectingLookahead$ui(LayoutNode layoutNode, ll3<j59> ll3Var) {
        this.observer.observeReads(layoutNode, this.onCommitAffectingLookahead, ll3Var);
    }

    public final void observeMeasureSnapshotReads$ui(LayoutNode layoutNode, ll3<j59> ll3Var) {
        this.observer.observeReads(layoutNode, this.onCommitAffectingMeasure, ll3Var);
    }

    public final void observeMeasureSnapshotReadsAffectingLookahead$ui(LayoutNode layoutNode, ll3<j59> ll3Var) {
        this.observer.observeReads(layoutNode, this.onCommitAffectingLookaheadMeasure, ll3Var);
    }

    public final <T extends OwnerScope> void observeReads$ui(T t, nl3<? super T, j59> nl3Var, ll3<j59> ll3Var) {
        this.observer.observeReads(t, nl3Var, ll3Var);
    }

    public final void observeSemanticsReads$ui(LayoutNode layoutNode, ll3<j59> ll3Var) {
        this.observer.observeReads(layoutNode, this.onCommitAffectingSemantics, ll3Var);
    }

    public final void startObserving$ui() {
        this.observer.start();
    }

    public final void stopObserving$ui() {
        this.observer.stop();
        this.observer.clear();
    }
}
