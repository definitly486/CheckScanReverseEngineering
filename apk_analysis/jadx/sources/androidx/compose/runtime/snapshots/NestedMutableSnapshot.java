package androidx.compose.runtime.snapshots;

import androidx.collection.MutableScatterSet;
import androidx.compose.runtime.snapshots.tooling.SnapshotObserverKt;
import defpackage.aa4;
import defpackage.j59;
import defpackage.nl3;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class NestedMutableSnapshot extends MutableSnapshot {
    public static final int $stable = 8;
    private boolean deactivated;
    private final MutableSnapshot parent;

    public NestedMutableSnapshot(long j, SnapshotIdSet snapshotIdSet, nl3<Object, j59> nl3Var, nl3<Object, j59> nl3Var2, MutableSnapshot mutableSnapshot) {
        super(j, snapshotIdSet, nl3Var, nl3Var2);
        this.parent = mutableSnapshot;
        mutableSnapshot.mo5627nestedActivated$runtime(this);
    }

    private final void deactivate() {
        if (this.deactivated) {
            return;
        }
        this.deactivated = true;
        this.parent.mo5628nestedDeactivated$runtime(this);
    }

    @Override // androidx.compose.runtime.snapshots.MutableSnapshot
    public SnapshotApplyResult apply() {
        NestedMutableSnapshot nestedMutableSnapshot;
        if (this.parent.getApplied$runtime() || this.parent.getDisposed$runtime()) {
            return new SnapshotApplyResult.Failure(this);
        }
        MutableScatterSet<StateObject> modified$runtime = getModified$runtime();
        long snapshotId = getSnapshotId();
        Map<StateRecord, ? extends StateRecord> mapOptimisticMerges = modified$runtime != null ? SnapshotKt.optimisticMerges(this.parent.getSnapshotId(), this, this.parent.getInvalid$runtime()) : null;
        synchronized (SnapshotKt.getLock()) {
            try {
                SnapshotKt.validateOpen(this);
                if (modified$runtime == null || modified$runtime.getSize() == 0) {
                    nestedMutableSnapshot = this;
                    nestedMutableSnapshot.closeAndReleasePinning$runtime();
                    j59 j59Var = j59.a;
                } else {
                    nestedMutableSnapshot = this;
                    SnapshotApplyResult snapshotApplyResultInnerApplyLocked$runtime = nestedMutableSnapshot.innerApplyLocked$runtime(this.parent.getSnapshotId(), modified$runtime, mapOptimisticMerges, this.parent.getInvalid$runtime());
                    if (!aa4.e(snapshotApplyResultInnerApplyLocked$runtime, SnapshotApplyResult.Success.INSTANCE)) {
                        return snapshotApplyResultInnerApplyLocked$runtime;
                    }
                    MutableScatterSet<StateObject> modified$runtime2 = nestedMutableSnapshot.parent.getModified$runtime();
                    if (modified$runtime2 != null) {
                        modified$runtime2.addAll(modified$runtime);
                    } else {
                        nestedMutableSnapshot.parent.setModified$runtime(modified$runtime);
                        nestedMutableSnapshot.setModified$runtime(null);
                    }
                }
                if (aa4.g(nestedMutableSnapshot.parent.getSnapshotId(), snapshotId) < 0) {
                    nestedMutableSnapshot.parent.advance$runtime();
                }
                MutableSnapshot mutableSnapshot = nestedMutableSnapshot.parent;
                mutableSnapshot.setInvalid$runtime(mutableSnapshot.getInvalid$runtime().clear(snapshotId).andNot(nestedMutableSnapshot.getPreviousIds$runtime()));
                nestedMutableSnapshot.parent.recordPrevious$runtime(snapshotId);
                nestedMutableSnapshot.parent.recordPreviousPinnedSnapshot$runtime(nestedMutableSnapshot.takeoverPinnedSnapshot$runtime());
                nestedMutableSnapshot.parent.recordPreviousList$runtime(nestedMutableSnapshot.getPreviousIds$runtime());
                nestedMutableSnapshot.parent.recordPreviousPinnedSnapshots$runtime(nestedMutableSnapshot.getPreviousPinnedSnapshots$runtime());
                j59 j59Var2 = j59.a;
                nestedMutableSnapshot.setApplied$runtime(true);
                nestedMutableSnapshot.deactivate();
                SnapshotObserverKt.dispatchObserverOnApplied(nestedMutableSnapshot, modified$runtime);
                return SnapshotApplyResult.Success.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // androidx.compose.runtime.snapshots.MutableSnapshot, androidx.compose.runtime.snapshots.Snapshot
    public void dispose() {
        if (getDisposed$runtime()) {
            return;
        }
        super.dispose();
        deactivate();
    }

    public final MutableSnapshot getParent() {
        return this.parent;
    }

    @Override // androidx.compose.runtime.snapshots.MutableSnapshot, androidx.compose.runtime.snapshots.Snapshot
    public Snapshot getRoot() {
        return this.parent.getRoot();
    }
}
