package androidx.compose.runtime.snapshots;

import androidx.collection.MutableScatterSet;
import androidx.compose.runtime.PreconditionsKt;
import androidx.compose.runtime.internal.Thread_jvmKt;
import androidx.compose.runtime.snapshots.Snapshot;
import defpackage.ah;
import defpackage.bm3;
import defpackage.j59;
import defpackage.jh2;
import defpackage.ll3;
import defpackage.n1;
import defpackage.nl3;
import defpackage.og;
import defpackage.qn1;
import defpackage.ul2;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public abstract class Snapshot {
    public static final int PreexistingSnapshotId = 1;
    private boolean disposed;
    private SnapshotIdSet invalid;
    private int pinningTrackingHandle;
    private long snapshotId;
    public static final Companion Companion = new Companion(null);
    public static final int $stable = 8;

    private Snapshot(long j, SnapshotIdSet snapshotIdSet) {
        this.invalid = snapshotIdSet;
        this.snapshotId = j;
        this.pinningTrackingHandle = j != SnapshotKt.INVALID_SNAPSHOT ? SnapshotKt.trackPinning(j, getInvalid$runtime()) : -1;
    }

    @ul2
    public static /* synthetic */ void getId$annotations() {
    }

    private static /* synthetic */ void getPinningTrackingHandle$annotations() {
    }

    public static /* synthetic */ void getReadObserver$annotations() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Snapshot takeNestedSnapshot$default(Snapshot snapshot, nl3 nl3Var, int i, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: takeNestedSnapshot");
            return null;
        }
        if ((i & 1) != 0) {
            nl3Var = null;
        }
        return snapshot.takeNestedSnapshot(nl3Var);
    }

    public final void closeAndReleasePinning$runtime() {
        synchronized (SnapshotKt.getLock()) {
            closeLocked$runtime();
            releasePinnedSnapshotsForCloseLocked$runtime();
            j59 j59Var = j59.a;
        }
    }

    public void closeLocked$runtime() {
        SnapshotKt.openSnapshots = SnapshotKt.openSnapshots.clear(getSnapshotId());
    }

    public void dispose() {
        this.disposed = true;
        synchronized (SnapshotKt.getLock()) {
            releasePinnedSnapshotLocked$runtime();
            j59 j59Var = j59.a;
        }
    }

    public final <T> T enter(ll3<? extends T> ll3Var) {
        Snapshot snapshotMakeCurrent = makeCurrent();
        try {
            return ll3Var.invoke();
        } finally {
            restoreCurrent(snapshotMakeCurrent);
        }
    }

    public final boolean getDisposed$runtime() {
        return this.disposed;
    }

    public int getId() {
        return (int) getSnapshotId();
    }

    public SnapshotIdSet getInvalid$runtime() {
        return this.invalid;
    }

    public abstract MutableScatterSet<StateObject> getModified$runtime();

    public abstract nl3<Object, j59> getReadObserver();

    public abstract boolean getReadOnly();

    public abstract Snapshot getRoot();

    public long getSnapshotId() {
        return this.snapshotId;
    }

    public int getWriteCount$runtime() {
        return 0;
    }

    public abstract nl3<Object, j59> getWriteObserver$runtime();

    public abstract boolean hasPendingChanges();

    public final boolean isPinned$runtime() {
        return this.pinningTrackingHandle >= 0;
    }

    public Snapshot makeCurrent() {
        Snapshot snapshot = (Snapshot) SnapshotKt.threadSnapshot.get();
        SnapshotKt.threadSnapshot.set(this);
        return snapshot;
    }

    /* JADX INFO: renamed from: nestedActivated$runtime */
    public abstract void mo5627nestedActivated$runtime(Snapshot snapshot);

    /* JADX INFO: renamed from: nestedDeactivated$runtime */
    public abstract void mo5628nestedDeactivated$runtime(Snapshot snapshot);

    public abstract void notifyObjectsInitialized$runtime();

    /* JADX INFO: renamed from: recordModified$runtime */
    public abstract void mo5629recordModified$runtime(StateObject stateObject);

    public final void releasePinnedSnapshotLocked$runtime() {
        int i = this.pinningTrackingHandle;
        if (i >= 0) {
            SnapshotKt.releasePinningLocked(i);
            this.pinningTrackingHandle = -1;
        }
    }

    public void releasePinnedSnapshotsForCloseLocked$runtime() {
        releasePinnedSnapshotLocked$runtime();
    }

    public void restoreCurrent(Snapshot snapshot) {
        SnapshotKt.threadSnapshot.set(snapshot);
    }

    public final void setDisposed$runtime(boolean z) {
        this.disposed = z;
    }

    public void setInvalid$runtime(SnapshotIdSet snapshotIdSet) {
        this.invalid = snapshotIdSet;
    }

    public void setSnapshotId$runtime(long j) {
        this.snapshotId = j;
    }

    public void setWriteCount$runtime(int i) {
        throw new IllegalStateException("Updating write count is not supported for this snapshot");
    }

    public abstract Snapshot takeNestedSnapshot(nl3<Object, j59> nl3Var);

    public final int takeoverPinnedSnapshot$runtime() {
        int i = this.pinningTrackingHandle;
        this.pinningTrackingHandle = -1;
        return i;
    }

    public final Snapshot unsafeEnter() {
        return makeCurrent();
    }

    public final void unsafeLeave(Snapshot snapshot) {
        if (!(SnapshotKt.threadSnapshot.get() == this)) {
            PreconditionsKt.throwIllegalStateException("Cannot leave snapshot; " + this + " is not the current snapshot");
        }
        restoreCurrent(snapshot);
    }

    public final void validateNotDisposed$runtime() {
        if (this.disposed) {
            PreconditionsKt.throwIllegalArgumentException("Cannot use a disposed snapshot");
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        private final boolean getCanBeReused(TransparentObserverMutableSnapshot transparentObserverMutableSnapshot) {
            return transparentObserverMutableSnapshot.getThreadId$runtime() == Thread_jvmKt.currentThreadId();
        }

        public static /* synthetic */ void getCurrentThreadSnapshot$annotations() {
        }

        public static /* synthetic */ void getPreexistingSnapshotId$annotations() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ Object observe$default(Companion companion, nl3 nl3Var, nl3 nl3Var2, ll3 ll3Var, int i, Object obj) {
            if ((i & 1) != 0) {
                nl3Var = null;
            }
            if ((i & 2) != 0) {
                nl3Var2 = null;
            }
            return companion.observe(nl3Var, nl3Var2, ll3Var);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static Object observeInternal$runtime$default(Companion companion, nl3 nl3Var, nl3 nl3Var2, ll3 ll3Var, int i, Object obj) {
            Snapshot transparentObserverMutableSnapshot;
            nl3 nl3Var3 = (i & 1) != 0 ? null : nl3Var;
            nl3 nl3Var4 = (i & 2) != 0 ? null : nl3Var2;
            if (nl3Var3 == null && nl3Var4 == null) {
                return ll3Var.invoke();
            }
            Snapshot snapshot = (Snapshot) SnapshotKt.threadSnapshot.get();
            if (snapshot instanceof TransparentObserverMutableSnapshot) {
                TransparentObserverMutableSnapshot transparentObserverMutableSnapshot2 = (TransparentObserverMutableSnapshot) snapshot;
                if (transparentObserverMutableSnapshot2.getThreadId$runtime() == Thread_jvmKt.currentThreadId()) {
                    nl3<Object, j59> readObserver$runtime = transparentObserverMutableSnapshot2.getReadObserver();
                    nl3<Object, j59> writeObserver$runtime = transparentObserverMutableSnapshot2.getWriteObserver$runtime();
                    try {
                        ((TransparentObserverMutableSnapshot) snapshot).setReadObserver$runtime(SnapshotKt.mergedReadObserver$default(nl3Var3, readObserver$runtime, false, 4, null));
                        ((TransparentObserverMutableSnapshot) snapshot).setWriteObserver$runtime(SnapshotKt.mergedWriteObserver(nl3Var4, writeObserver$runtime));
                        return ll3Var.invoke();
                    } finally {
                        transparentObserverMutableSnapshot2.setReadObserver$runtime(readObserver$runtime);
                        transparentObserverMutableSnapshot2.setWriteObserver$runtime(writeObserver$runtime);
                    }
                }
            }
            if (snapshot == 0 || (snapshot instanceof MutableSnapshot)) {
                transparentObserverMutableSnapshot = new TransparentObserverMutableSnapshot(snapshot instanceof MutableSnapshot ? (MutableSnapshot) snapshot : null, nl3Var3, nl3Var4, true, false);
            } else {
                if (nl3Var3 == null) {
                    return ll3Var.invoke();
                }
                transparentObserverMutableSnapshot = snapshot.takeNestedSnapshot(nl3Var3);
            }
            try {
                Snapshot snapshotMakeCurrent = transparentObserverMutableSnapshot.makeCurrent();
                try {
                    Object objInvoke = ll3Var.invoke();
                    transparentObserverMutableSnapshot.restoreCurrent(snapshotMakeCurrent);
                    transparentObserverMutableSnapshot.dispose();
                    return objInvoke;
                } catch (Throwable th) {
                    transparentObserverMutableSnapshot.restoreCurrent(snapshotMakeCurrent);
                    throw th;
                }
            } catch (Throwable th2) {
                transparentObserverMutableSnapshot.dispose();
                throw th2;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void registerApplyObserver$lambda$1(bm3 bm3Var) {
            synchronized (SnapshotKt.getLock()) {
                SnapshotKt.applyObservers = qn1.f0(SnapshotKt.applyObservers, bm3Var);
                j59 j59Var = j59.a;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void registerGlobalWriteObserver$lambda$1(nl3 nl3Var) {
            synchronized (SnapshotKt.getLock()) {
                SnapshotKt.globalWriteObservers = qn1.f0(SnapshotKt.globalWriteObservers, nl3Var);
                j59 j59Var = j59.a;
            }
            SnapshotKt.advanceGlobalSnapshot();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ MutableSnapshot takeMutableSnapshot$default(Companion companion, nl3 nl3Var, nl3 nl3Var2, int i, Object obj) {
            if ((i & 1) != 0) {
                nl3Var = null;
            }
            if ((i & 2) != 0) {
                nl3Var2 = null;
            }
            return companion.takeMutableSnapshot(nl3Var, nl3Var2);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ Snapshot takeSnapshot$default(Companion companion, nl3 nl3Var, int i, Object obj) {
            if ((i & 1) != 0) {
                nl3Var = null;
            }
            return companion.takeSnapshot(nl3Var);
        }

        public final Snapshot createNonObservableSnapshot() {
            return SnapshotKt.createTransparentSnapshotWithNoParentReadObserver$default((Snapshot) SnapshotKt.threadSnapshot.get(), null, false, 6, null);
        }

        public final Snapshot getCurrent() {
            return SnapshotKt.currentSnapshot();
        }

        public final Snapshot getCurrentThreadSnapshot() {
            return (Snapshot) SnapshotKt.threadSnapshot.get();
        }

        public final <T> T global(ll3<? extends T> ll3Var) {
            Snapshot snapshotRemoveCurrent = removeCurrent();
            try {
                return ll3Var.invoke();
            } finally {
                restoreCurrent(snapshotRemoveCurrent);
            }
        }

        public final boolean isApplyObserverNotificationPending() {
            return SnapshotKt.pendingApplyObserverCount.get() > 0;
        }

        public final boolean isInSnapshot() {
            return SnapshotKt.threadSnapshot.get() != null;
        }

        public final Snapshot makeCurrentNonObservable(Snapshot snapshot) {
            if (snapshot instanceof TransparentObserverMutableSnapshot) {
                TransparentObserverMutableSnapshot transparentObserverMutableSnapshot = (TransparentObserverMutableSnapshot) snapshot;
                if (transparentObserverMutableSnapshot.getThreadId$runtime() == Thread_jvmKt.currentThreadId()) {
                    transparentObserverMutableSnapshot.setReadObserver$runtime(null);
                    return snapshot;
                }
            }
            if (snapshot instanceof TransparentObserverSnapshot) {
                TransparentObserverSnapshot transparentObserverSnapshot = (TransparentObserverSnapshot) snapshot;
                if (transparentObserverSnapshot.getThreadId$runtime() == Thread_jvmKt.currentThreadId()) {
                    transparentObserverSnapshot.setReadObserver$runtime(null);
                    return snapshot;
                }
            }
            Snapshot snapshotCreateTransparentSnapshotWithNoParentReadObserver$default = SnapshotKt.createTransparentSnapshotWithNoParentReadObserver$default(snapshot, null, false, 6, null);
            snapshotCreateTransparentSnapshotWithNoParentReadObserver$default.makeCurrent();
            return snapshotCreateTransparentSnapshotWithNoParentReadObserver$default;
        }

        public final void notifyObjectsInitialized() {
            SnapshotKt.currentSnapshot().notifyObjectsInitialized$runtime();
        }

        public final <T> T observe(nl3<Object, j59> nl3Var, nl3<Object, j59> nl3Var2, ll3<? extends T> ll3Var) {
            Snapshot transparentObserverMutableSnapshot;
            if (nl3Var == null && nl3Var2 == null) {
                return ll3Var.invoke();
            }
            Snapshot snapshot = (Snapshot) SnapshotKt.threadSnapshot.get();
            if (snapshot instanceof TransparentObserverMutableSnapshot) {
                TransparentObserverMutableSnapshot transparentObserverMutableSnapshot2 = (TransparentObserverMutableSnapshot) snapshot;
                if (transparentObserverMutableSnapshot2.getThreadId$runtime() == Thread_jvmKt.currentThreadId()) {
                    nl3<Object, j59> readObserver$runtime = transparentObserverMutableSnapshot2.getReadObserver();
                    nl3<Object, j59> writeObserver$runtime = transparentObserverMutableSnapshot2.getWriteObserver$runtime();
                    try {
                        ((TransparentObserverMutableSnapshot) snapshot).setReadObserver$runtime(SnapshotKt.mergedReadObserver$default(nl3Var, readObserver$runtime, false, 4, null));
                        ((TransparentObserverMutableSnapshot) snapshot).setWriteObserver$runtime(SnapshotKt.mergedWriteObserver(nl3Var2, writeObserver$runtime));
                        return ll3Var.invoke();
                    } finally {
                        transparentObserverMutableSnapshot2.setReadObserver$runtime(readObserver$runtime);
                        transparentObserverMutableSnapshot2.setWriteObserver$runtime(writeObserver$runtime);
                    }
                }
            }
            if (snapshot == null || (snapshot instanceof MutableSnapshot)) {
                transparentObserverMutableSnapshot = new TransparentObserverMutableSnapshot(snapshot instanceof MutableSnapshot ? (MutableSnapshot) snapshot : null, nl3Var, nl3Var2, true, false);
            } else {
                if (nl3Var == null) {
                    return ll3Var.invoke();
                }
                transparentObserverMutableSnapshot = snapshot.takeNestedSnapshot(nl3Var);
            }
            try {
                Snapshot snapshotMakeCurrent = transparentObserverMutableSnapshot.makeCurrent();
                try {
                    T tInvoke = ll3Var.invoke();
                    transparentObserverMutableSnapshot.restoreCurrent(snapshotMakeCurrent);
                    transparentObserverMutableSnapshot.dispose();
                    return tInvoke;
                } catch (Throwable th) {
                    transparentObserverMutableSnapshot.restoreCurrent(snapshotMakeCurrent);
                    throw th;
                }
            } catch (Throwable th2) {
                transparentObserverMutableSnapshot.dispose();
                throw th2;
            }
        }

        public final <T> T observeInternal$runtime(nl3<Object, j59> nl3Var, nl3<Object, j59> nl3Var2, ll3<? extends T> ll3Var) {
            Snapshot transparentObserverMutableSnapshot;
            if (nl3Var == null && nl3Var2 == null) {
                return ll3Var.invoke();
            }
            Snapshot snapshot = (Snapshot) SnapshotKt.threadSnapshot.get();
            if (snapshot instanceof TransparentObserverMutableSnapshot) {
                TransparentObserverMutableSnapshot transparentObserverMutableSnapshot2 = (TransparentObserverMutableSnapshot) snapshot;
                if (transparentObserverMutableSnapshot2.getThreadId$runtime() == Thread_jvmKt.currentThreadId()) {
                    nl3<Object, j59> readObserver$runtime = transparentObserverMutableSnapshot2.getReadObserver();
                    nl3<Object, j59> writeObserver$runtime = transparentObserverMutableSnapshot2.getWriteObserver$runtime();
                    try {
                        ((TransparentObserverMutableSnapshot) snapshot).setReadObserver$runtime(SnapshotKt.mergedReadObserver$default(nl3Var, readObserver$runtime, false, 4, null));
                        ((TransparentObserverMutableSnapshot) snapshot).setWriteObserver$runtime(SnapshotKt.mergedWriteObserver(nl3Var2, writeObserver$runtime));
                        return ll3Var.invoke();
                    } finally {
                        transparentObserverMutableSnapshot2.setReadObserver$runtime(readObserver$runtime);
                        transparentObserverMutableSnapshot2.setWriteObserver$runtime(writeObserver$runtime);
                    }
                }
            }
            if (snapshot == null || (snapshot instanceof MutableSnapshot)) {
                transparentObserverMutableSnapshot = new TransparentObserverMutableSnapshot(snapshot instanceof MutableSnapshot ? (MutableSnapshot) snapshot : null, nl3Var, nl3Var2, true, false);
            } else {
                if (nl3Var == null) {
                    return ll3Var.invoke();
                }
                transparentObserverMutableSnapshot = snapshot.takeNestedSnapshot(nl3Var);
            }
            try {
                Snapshot snapshotMakeCurrent = transparentObserverMutableSnapshot.makeCurrent();
                try {
                    T tInvoke = ll3Var.invoke();
                    transparentObserverMutableSnapshot.restoreCurrent(snapshotMakeCurrent);
                    transparentObserverMutableSnapshot.dispose();
                    return tInvoke;
                } catch (Throwable th) {
                    transparentObserverMutableSnapshot.restoreCurrent(snapshotMakeCurrent);
                    throw th;
                }
            } catch (Throwable th2) {
                transparentObserverMutableSnapshot.dispose();
                throw th2;
            }
        }

        public final int openSnapshotCount() {
            return qn1.t0(SnapshotKt.openSnapshots).size();
        }

        public final ObserverHandle registerApplyObserver(final bm3<? super Set<? extends Object>, ? super Snapshot, j59> bm3Var) {
            SnapshotKt.advanceGlobalSnapshot(SnapshotKt.emptyLambda);
            synchronized (SnapshotKt.getLock()) {
                SnapshotKt.applyObservers = qn1.i0(bm3Var, SnapshotKt.applyObservers);
                j59 j59Var = j59.a;
            }
            return new ObserverHandle() { // from class: f48
                @Override // androidx.compose.runtime.snapshots.ObserverHandle
                public final void dispose() {
                    Snapshot.Companion.registerApplyObserver$lambda$1(bm3Var);
                }
            };
        }

        public final ObserverHandle registerGlobalWriteObserver(final nl3<Object, j59> nl3Var) {
            synchronized (SnapshotKt.getLock()) {
                SnapshotKt.globalWriteObservers = qn1.i0(nl3Var, SnapshotKt.globalWriteObservers);
                j59 j59Var = j59.a;
            }
            SnapshotKt.advanceGlobalSnapshot();
            return new ObserverHandle() { // from class: g48
                @Override // androidx.compose.runtime.snapshots.ObserverHandle
                public final void dispose() {
                    Snapshot.Companion.registerGlobalWriteObserver$lambda$1(nl3Var);
                }
            };
        }

        public final Snapshot removeCurrent() {
            Snapshot snapshot = (Snapshot) SnapshotKt.threadSnapshot.get();
            if (snapshot != null) {
                SnapshotKt.threadSnapshot.set(null);
            }
            return snapshot;
        }

        public final void restoreCurrent(Snapshot snapshot) {
            if (snapshot != null) {
                SnapshotKt.threadSnapshot.set(snapshot);
            }
        }

        public final void restoreNonObservable(Snapshot snapshot, Snapshot snapshot2, nl3<Object, j59> nl3Var) {
            if (snapshot != snapshot2) {
                snapshot2.restoreCurrent(snapshot);
                snapshot2.dispose();
            } else if (snapshot instanceof TransparentObserverMutableSnapshot) {
                ((TransparentObserverMutableSnapshot) snapshot).setReadObserver$runtime(nl3Var);
            } else if (snapshot instanceof TransparentObserverSnapshot) {
                ((TransparentObserverSnapshot) snapshot).setReadObserver$runtime(nl3Var);
            } else {
                og.e(snapshot, "Non-transparent snapshot was reused: ");
            }
        }

        public final void sendApplyNotifications() {
            boolean zHasPendingChanges;
            synchronized (SnapshotKt.getLock()) {
                zHasPendingChanges = SnapshotKt.globalSnapshot.hasPendingChanges();
            }
            if (zHasPendingChanges) {
                SnapshotKt.advanceGlobalSnapshot();
            }
        }

        public final MutableSnapshot takeMutableSnapshot(nl3<Object, j59> nl3Var, nl3<Object, j59> nl3Var2) {
            MutableSnapshot mutableSnapshotTakeNestedMutableSnapshot;
            Snapshot snapshotCurrentSnapshot = SnapshotKt.currentSnapshot();
            MutableSnapshot mutableSnapshot = snapshotCurrentSnapshot instanceof MutableSnapshot ? (MutableSnapshot) snapshotCurrentSnapshot : null;
            if (mutableSnapshot != null && (mutableSnapshotTakeNestedMutableSnapshot = mutableSnapshot.takeNestedMutableSnapshot(nl3Var, nl3Var2)) != null) {
                return mutableSnapshotTakeNestedMutableSnapshot;
            }
            ah.f("Cannot create a mutable snapshot of an read-only snapshot");
            return null;
        }

        public final Snapshot takeSnapshot(nl3<Object, j59> nl3Var) {
            return SnapshotKt.currentSnapshot().takeNestedSnapshot(nl3Var);
        }

        public final <R> R withMutableSnapshot(ll3<? extends R> ll3Var) {
            MutableSnapshot mutableSnapshotTakeMutableSnapshot$default = takeMutableSnapshot$default(this, null, null, 3, null);
            try {
                Snapshot snapshotMakeCurrent = mutableSnapshotTakeMutableSnapshot$default.makeCurrent();
                try {
                    R rInvoke = ll3Var.invoke();
                    mutableSnapshotTakeMutableSnapshot$default.restoreCurrent(snapshotMakeCurrent);
                    mutableSnapshotTakeMutableSnapshot$default.apply().check();
                    mutableSnapshotTakeMutableSnapshot$default.dispose();
                    return rInvoke;
                } catch (Throwable th) {
                    mutableSnapshotTakeMutableSnapshot$default.restoreCurrent(snapshotMakeCurrent);
                    throw th;
                }
            } catch (Throwable th2) {
                try {
                    throw th2;
                } catch (Throwable th3) {
                    mutableSnapshotTakeMutableSnapshot$default.dispose();
                    throw th3;
                }
            }
        }

        public final <T> T withoutReadObservation(ll3<? extends T> ll3Var) {
            Snapshot currentThreadSnapshot = getCurrentThreadSnapshot();
            nl3<Object, j59> readObserver = currentThreadSnapshot != null ? currentThreadSnapshot.getReadObserver() : null;
            Snapshot snapshotMakeCurrentNonObservable = makeCurrentNonObservable(currentThreadSnapshot);
            try {
                return ll3Var.invoke();
            } finally {
                restoreNonObservable(currentThreadSnapshot, snapshotMakeCurrentNonObservable, readObserver);
            }
        }

        private Companion() {
        }

        private final boolean getCanBeReused(TransparentObserverSnapshot transparentObserverSnapshot) {
            return transparentObserverSnapshot.getThreadId$runtime() == Thread_jvmKt.currentThreadId();
        }
    }

    public /* synthetic */ Snapshot(long j, SnapshotIdSet snapshotIdSet, jh2 jh2Var) {
        this(j, snapshotIdSet);
    }

    public /* synthetic */ Snapshot(int i, SnapshotIdSet snapshotIdSet, jh2 jh2Var) {
        this(i, snapshotIdSet);
    }

    @ul2
    private /* synthetic */ Snapshot(int i, SnapshotIdSet snapshotIdSet) {
        this(SnapshotId_jvmKt.toSnapshotId(i), snapshotIdSet, (jh2) null);
    }
}
