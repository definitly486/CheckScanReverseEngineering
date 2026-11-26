package androidx.compose.runtime;

import androidx.collection.MutableScatterSet;
import androidx.collection.ScatterSetKt;
import androidx.compose.runtime.snapshots.ObserverHandle;
import androidx.compose.runtime.snapshots.Snapshot;
import defpackage.aa4;
import defpackage.bm3;
import defpackage.j59;
import defpackage.nl3;
import defpackage.no7;
import defpackage.qn1;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
final class SingleSubscriptionSnapshotFlowManager extends SnapshotFlowManagerImpl {
    private Object soleWatchedObject;
    private no7<? super j59> subscribedChannel;
    private MutableScatterSet<Object> watchSet;
    private Object workingSoleWatchedObject;
    private MutableScatterSet<Object> workingWatchSet;
    private final nl3<Object, j59> readObserverCache = new nl3() { // from class: androidx.compose.runtime.l
        @Override // defpackage.nl3
        public final Object invoke(Object obj) {
            return SingleSubscriptionSnapshotFlowManager.readObserverCache$lambda$0(this.b, obj);
        }
    };
    private final ObserverHandle unregisterApplyObserver = Snapshot.Companion.registerApplyObserver(new bm3() { // from class: androidx.compose.runtime.m
        @Override // defpackage.bm3
        public final Object invoke(Object obj, Object obj2) {
            return SingleSubscriptionSnapshotFlowManager.unregisterApplyObserver$lambda$0(this.b, (Set) obj, (Snapshot) obj2);
        }
    });

    private final void clearWatchSetImpl() {
        this.workingSoleWatchedObject = null;
        this.workingWatchSet = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 readObserverCache$lambda$0(SingleSubscriptionSnapshotFlowManager singleSubscriptionSnapshotFlowManager, Object obj) {
        no7<? super j59> no7Var = singleSubscriptionSnapshotFlowManager.subscribedChannel;
        no7Var.getClass();
        singleSubscriptionSnapshotFlowManager.watch$runtime(no7Var, obj);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:25:0x0060 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:26:0x0062 A[Catch: all -> 0x001a, LOOP:0: B:14:0x0027->B:26:0x0062, LOOP_END, TryCatch #0 {all -> 0x001a, blocks: (B:4:0x0009, B:6:0x000d, B:8:0x0017, B:28:0x0066, B:11:0x001c, B:14:0x0027, B:16:0x0037, B:18:0x0043, B:20:0x004c, B:22:0x0057, B:23:0x005a, B:26:0x0062), top: B:36:0x0009 }] */
    /* JADX WARN: Code duplicated, block: B:27:0x0065 A[EDGE_INSN: B:27:0x0065->B:28:0x0066 BREAK  A[LOOP:0: B:14:0x0027->B:26:0x0062]] */
    /* JADX WARN: Code duplicated, block: B:40:0x0065 A[SYNTHETIC] */
    public static final j59 unregisterApplyObserver$lambda$0(SingleSubscriptionSnapshotFlowManager singleSubscriptionSnapshotFlowManager, Set set, Snapshot snapshot) {
        no7<? super j59> no7Var;
        synchronized (singleSubscriptionSnapshotFlowManager.getLock()) {
            try {
                MutableScatterSet<Object> mutableScatterSet = singleSubscriptionSnapshotFlowManager.watchSet;
                if (mutableScatterSet != null) {
                    Object[] objArr = mutableScatterSet.elements;
                    long[] jArr = mutableScatterSet.metadata;
                    int length = jArr.length - 2;
                    if (length < 0) {
                        no7Var = null;
                        break;
                    }
                    int i = 0;
                    loop0: while (true) {
                        long j = jArr[i];
                        if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                            int i2 = 8 - ((~(i - length)) >>> 31);
                            for (int i3 = 0; i3 < i2; i3++) {
                                if ((255 & j) < 128 && set.contains(objArr[(i << 3) + i3])) {
                                    no7Var = singleSubscriptionSnapshotFlowManager.subscribedChannel;
                                    break loop0;
                                }
                                j >>= 8;
                            }
                            if (i2 == 8) {
                                if (i == length) {
                                    i++;
                                }
                            }
                            no7Var = null;
                            break;
                        }
                        if (i == length) {
                            no7Var = null;
                            break;
                        }
                        i++;
                    }
                } else {
                    if (!qn1.M(set, singleSubscriptionSnapshotFlowManager.soleWatchedObject)) {
                        no7Var = null;
                        break;
                    }
                    no7Var = singleSubscriptionSnapshotFlowManager.subscribedChannel;
                }
                j59 j59Var = j59.a;
            } catch (Throwable th) {
                throw th;
            }
        }
        if (no7Var != null) {
            no7Var.mo0trySendJP2dKIU(j59.a);
        }
        return j59.a;
    }

    @Override // androidx.compose.runtime.SnapshotFlowManagerImpl
    public void clearWatchSet$runtime(no7<? super j59> no7Var) {
        clearWatchSetImpl();
    }

    @Override // androidx.compose.runtime.SnapshotFlowManagerImpl
    public void commitSubscriptionChanges$runtime() {
        synchronized (getLock()) {
            try {
                this.soleWatchedObject = this.workingSoleWatchedObject;
                if (this.workingWatchSet == null) {
                    this.watchSet = null;
                } else {
                    MutableScatterSet<Object> mutableScatterSetMutableScatterSetOf = this.watchSet;
                    if (mutableScatterSetMutableScatterSetOf == null) {
                        mutableScatterSetMutableScatterSetOf = ScatterSetKt.mutableScatterSetOf();
                        this.watchSet = mutableScatterSetMutableScatterSetOf;
                    }
                    this.watchSet = this.workingWatchSet;
                    this.workingWatchSet = mutableScatterSetMutableScatterSetOf;
                }
                j59 j59Var = j59.a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // androidx.compose.runtime.SnapshotFlowManagerImpl
    public void dispose$runtime() {
        this.unregisterApplyObserver.dispose();
        clearWatchSetImpl();
        synchronized (getLock()) {
            this.subscribedChannel = null;
            this.soleWatchedObject = null;
            this.watchSet = null;
            j59 j59Var = j59.a;
        }
    }

    public final no7<j59> getSubscribedChannel() {
        return this.subscribedChannel;
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0060 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:24:0x0062 A[LOOP:0: B:14:0x002d->B:24:0x0062, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:28:0x0065 A[EDGE_INSN: B:28:0x0065->B:25:0x0065 BREAK  A[LOOP:0: B:14:0x002d->B:24:0x0062], SYNTHETIC] */
    public final MultiSubscriptionSnapshotFlowManager promote() {
        MultiSubscriptionSnapshotFlowManager multiSubscriptionSnapshotFlowManager = new MultiSubscriptionSnapshotFlowManager();
        no7<? super j59> no7Var = this.subscribedChannel;
        if (!(no7Var != null)) {
            PreconditionsKt.throwIllegalStateException("promote must only be called when a manager is managing subscriptions for one channel and needs to start managing them for a second");
        }
        MutableScatterSet<Object> mutableScatterSet = this.watchSet;
        if (mutableScatterSet != null) {
            Object[] objArr = mutableScatterSet.elements;
            long[] jArr = mutableScatterSet.metadata;
            int length = jArr.length - 2;
            if (length >= 0) {
                int i = 0;
                while (true) {
                    long j = jArr[i];
                    if ((((~j) << 7) & j & (-9187201950435737472L)) == -9187201950435737472L) {
                        if (i != length) {
                            break;
                            break;
                        }
                        i++;
                    } else {
                        int i2 = 8 - ((~(i - length)) >>> 31);
                        for (int i3 = 0; i3 < i2; i3++) {
                            if ((255 & j) < 128) {
                                multiSubscriptionSnapshotFlowManager.watch$runtime(no7Var, objArr[(i << 3) + i3]);
                            }
                            j >>= 8;
                        }
                        if (i2 != 8) {
                            break;
                        }
                        if (i != length) {
                            break;
                        }
                        i++;
                    }
                }
            }
        } else {
            Object obj = this.soleWatchedObject;
            obj.getClass();
            multiSubscriptionSnapshotFlowManager.watch$runtime(no7Var, obj);
        }
        multiSubscriptionSnapshotFlowManager.commitSubscriptionChanges$runtime();
        dispose$runtime();
        return multiSubscriptionSnapshotFlowManager;
    }

    @Override // androidx.compose.runtime.SnapshotFlowManagerImpl
    public nl3<Object, j59> readObserverFor$runtime(no7<? super j59> no7Var) {
        no7<? super j59> no7Var2 = this.subscribedChannel;
        if (!(no7Var2 == null || aa4.e(no7Var2, no7Var))) {
            PreconditionsKt.throwIllegalStateException("Requested a SingleSubscriptionSnapshotFlowManager to manage multiple subscriptions");
        }
        this.subscribedChannel = no7Var;
        return this.readObserverCache;
    }

    @Override // androidx.compose.runtime.SnapshotFlowManagerImpl
    public void reportSnapshotFlowCancellation$runtime(no7<? super j59> no7Var) {
        this.subscribedChannel = null;
        clearWatchSet$runtime(no7Var);
        commitSubscriptionChanges$runtime();
    }

    public final void setSubscribedChannel(no7<? super j59> no7Var) {
        this.subscribedChannel = no7Var;
    }

    @Override // androidx.compose.runtime.SnapshotFlowManagerImpl
    public void watch$runtime(no7<? super j59> no7Var, Object obj) {
        if (!aa4.e(this.subscribedChannel, no7Var)) {
            PreconditionsKt.throwIllegalStateException("Requested a SingleSubscriptionSnapshotFlowManager to manage multiple subscriptions");
        }
        MutableScatterSet<Object> mutableScatterSet = this.workingWatchSet;
        Object obj2 = this.workingSoleWatchedObject;
        if (mutableScatterSet != null) {
            if (!(obj2 == null)) {
                PreconditionsKt.throwIllegalStateException("workingSoleWatchedObject must be null when workingWatchSet is non-null");
            }
            mutableScatterSet.add(obj);
        } else {
            if (obj2 == null) {
                this.workingSoleWatchedObject = obj;
                return;
            }
            MutableScatterSet<Object> mutableScatterSetMutableScatterSetOf = ScatterSetKt.mutableScatterSetOf();
            mutableScatterSetMutableScatterSetOf.add(obj2);
            mutableScatterSetMutableScatterSetOf.add(obj);
            this.workingWatchSet = mutableScatterSetMutableScatterSetOf;
            this.workingSoleWatchedObject = null;
        }
    }
}
