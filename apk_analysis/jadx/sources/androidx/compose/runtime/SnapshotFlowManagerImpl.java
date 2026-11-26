package androidx.compose.runtime;

import androidx.compose.runtime.snapshots.Snapshot;
import defpackage.j59;
import defpackage.ll3;
import defpackage.nl3;
import defpackage.no7;

/* JADX INFO: loaded from: classes2.dex */
public abstract class SnapshotFlowManagerImpl {
    public static final int $stable = 8;
    private final Object lock = new Object();

    public abstract void clearWatchSet$runtime(no7<? super j59> no7Var);

    public abstract void commitSubscriptionChanges$runtime();

    public abstract void dispose$runtime();

    public final Object getLock() {
        return this.lock;
    }

    public abstract nl3<Object, j59> readObserverFor$runtime(no7<? super j59> no7Var);

    public abstract void reportSnapshotFlowCancellation$runtime(no7<? super j59> no7Var);

    public final <T> T runAndWatch$runtime(no7<? super j59> no7Var, ll3<? extends T> ll3Var) {
        Snapshot snapshotTakeSnapshot = Snapshot.Companion.takeSnapshot(readObserverFor$runtime(no7Var));
        clearWatchSet$runtime(no7Var);
        try {
            Snapshot snapshotMakeCurrent = snapshotTakeSnapshot.makeCurrent();
            try {
                T tInvoke = ll3Var.invoke();
                snapshotTakeSnapshot.restoreCurrent(snapshotMakeCurrent);
                snapshotTakeSnapshot.dispose();
                commitSubscriptionChanges$runtime();
                return tInvoke;
            } catch (Throwable th) {
                snapshotTakeSnapshot.restoreCurrent(snapshotMakeCurrent);
                throw th;
            }
        } catch (Throwable th2) {
            snapshotTakeSnapshot.dispose();
            throw th2;
        }
    }

    public abstract void watch$runtime(no7<? super j59> no7Var, Object obj);
}
