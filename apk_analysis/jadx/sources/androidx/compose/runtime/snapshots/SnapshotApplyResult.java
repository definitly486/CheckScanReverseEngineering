package androidx.compose.runtime.snapshots;

import defpackage.jh2;

/* JADX INFO: loaded from: classes2.dex */
public abstract class SnapshotApplyResult {
    public static final int $stable = 0;

    public static final class Failure extends SnapshotApplyResult {
        public static final int $stable = 8;
        private final Snapshot snapshot;

        public Failure(Snapshot snapshot) {
            super(null);
            this.snapshot = snapshot;
        }

        @Override // androidx.compose.runtime.snapshots.SnapshotApplyResult
        public void check() throws SnapshotApplyConflictException {
            this.snapshot.dispose();
            throw new SnapshotApplyConflictException(this.snapshot);
        }

        public final Snapshot getSnapshot() {
            return this.snapshot;
        }

        @Override // androidx.compose.runtime.snapshots.SnapshotApplyResult
        public boolean getSucceeded() {
            return false;
        }
    }

    public static final class Success extends SnapshotApplyResult {
        public static final int $stable = 0;
        public static final Success INSTANCE = new Success();

        private Success() {
            super(null);
        }

        @Override // androidx.compose.runtime.snapshots.SnapshotApplyResult
        public void check() {
        }

        @Override // androidx.compose.runtime.snapshots.SnapshotApplyResult
        public boolean getSucceeded() {
            return true;
        }
    }

    public /* synthetic */ SnapshotApplyResult(jh2 jh2Var) {
        this();
    }

    public abstract void check();

    public abstract boolean getSucceeded();

    private SnapshotApplyResult() {
    }
}
