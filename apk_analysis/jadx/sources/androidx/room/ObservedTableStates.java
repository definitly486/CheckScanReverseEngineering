package androidx.room;

import defpackage.g03;
import defpackage.h03;
import defpackage.j59;
import defpackage.nl3;
import java.util.Arrays;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: loaded from: classes3.dex */
public final class ObservedTableStates {
    private volatile boolean inProgressSync;
    private volatile boolean needsSync;
    private final boolean[] tableObservedState;
    private final long[] tableObserversCount;
    private final ReentrantLock lock = new ReentrantLock();
    private final ReentrantLock onSyncLock = new ReentrantLock();

    public enum ObserveOp {
        NO_OP,
        ADD,
        REMOVE;

        private static final /* synthetic */ g03 $ENTRIES = h03.a(values());

        public static g03<ObserveOp> getEntries() {
            return $ENTRIES;
        }
    }

    public ObservedTableStates(int i) {
        this.tableObserversCount = new long[i];
        this.tableObservedState = new boolean[i];
    }

    public final void forceNeedSync$room_runtime() {
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            this.needsSync = true;
            j59 j59Var = j59.a;
        } finally {
            reentrantLock.unlock();
        }
    }

    public final boolean onObserverAdded$room_runtime(int[] iArr) {
        iArr.getClass();
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            boolean z = false;
            for (int i : iArr) {
                long[] jArr = this.tableObserversCount;
                long j = jArr[i];
                jArr[i] = 1 + j;
                if (j == 0) {
                    this.needsSync = true;
                    z = true;
                }
            }
            return z || this.needsSync || this.inProgressSync;
        } finally {
            reentrantLock.unlock();
        }
    }

    public final boolean onObserverRemoved$room_runtime(int[] iArr) {
        iArr.getClass();
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            boolean z = false;
            for (int i : iArr) {
                long[] jArr = this.tableObserversCount;
                long j = jArr[i];
                jArr[i] = j - 1;
                if (j == 1) {
                    this.needsSync = true;
                    z = true;
                }
            }
            return z || this.needsSync || this.inProgressSync;
        } finally {
            reentrantLock.unlock();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v2, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v3 */
    public final void onSync$room_runtime(nl3<? super ObserveOp[], j59> nl3Var) {
        Object[] objArr;
        ObserveOp observeOp;
        nl3Var.getClass();
        ReentrantLock reentrantLock = this.onSyncLock;
        reentrantLock.lock();
        try {
            this.inProgressSync = true;
            ReentrantLock reentrantLock2 = this.lock;
            reentrantLock2.lock();
            try {
                ?? r5 = 0;
                r5 = 0;
                if (this.needsSync) {
                    this.needsSync = false;
                    int length = this.tableObserversCount.length;
                    ObserveOp[] observeOpArr = new ObserveOp[length];
                    int i = 0;
                    Object[] objArr2 = false;
                    while (i < length) {
                        boolean z = this.tableObserversCount[i] > 0;
                        if (z != this.tableObservedState[i]) {
                            this.tableObservedState[i] = z;
                            observeOp = z ? ObserveOp.ADD : ObserveOp.REMOVE;
                            objArr = true;
                        } else {
                            objArr = objArr2;
                            observeOp = ObserveOp.NO_OP;
                        }
                        observeOpArr[i] = observeOp;
                        i++;
                        objArr2 = objArr;
                    }
                    if (objArr2 != false) {
                        r5 = observeOpArr;
                    }
                }
                if (r5 != 0) {
                    try {
                        if (r5.length != 0) {
                            nl3Var.invoke(r5);
                        }
                    } catch (Throwable th) {
                        this.inProgressSync = false;
                        throw th;
                    }
                }
                this.inProgressSync = false;
                j59 j59Var = j59.a;
                reentrantLock.unlock();
            } finally {
                reentrantLock2.unlock();
            }
        } catch (Throwable th2) {
            reentrantLock.unlock();
            throw th2;
        }
    }

    public final void resetTriggerState$room_runtime() {
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            boolean[] zArr = this.tableObservedState;
            int length = zArr.length;
            zArr.getClass();
            Arrays.fill(zArr, 0, length, false);
            this.needsSync = true;
            j59 j59Var = j59.a;
        } finally {
            reentrantLock.unlock();
        }
    }
}
