package androidx.compose.runtime;

import androidx.collection.MutableScatterMap;
import androidx.collection.MutableScatterSet;
import androidx.collection.ScatterMapKt;
import androidx.collection.ScatterSetKt;
import androidx.compose.runtime.collection.ScopeMap;
import androidx.compose.runtime.snapshots.ObserverHandle;
import androidx.compose.runtime.snapshots.Snapshot;
import defpackage.bm3;
import defpackage.j59;
import defpackage.nl3;
import defpackage.no7;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import kotlin.NoWhenBranchMatchedException;

/* JADX INFO: loaded from: classes2.dex */
final class MultiSubscriptionSnapshotFlowManager extends SnapshotFlowManagerImpl {
    private MutableScatterMap<Object, Object> subscriptions = ScopeMap.m5395constructorimpl$default(null, 1, null);
    private final List<SubscriptionChange> pendingChanges = new ArrayList();
    private final MutableScatterSet<no7<j59>> toNotify = ScatterSetKt.mutableScatterSetOf();
    private final MutableScatterMap<no7<j59>, nl3<Object, j59>> readObserverCache = ScatterMapKt.mutableScatterMapOf();
    private final ObserverHandle unregisterApplyObserver = Snapshot.Companion.registerApplyObserver(new bm3() { // from class: androidx.compose.runtime.g
        @Override // defpackage.bm3
        public final Object invoke(Object obj, Object obj2) {
            return MultiSubscriptionSnapshotFlowManager.unregisterApplyObserver$lambda$0(this.b, (Set) obj, (Snapshot) obj2);
        }
    });

    public static final class Add implements SubscriptionChange {
        private final no7<j59> channel;
        private final Object obj;

        /* JADX WARN: Multi-variable type inference failed */
        public Add(Object obj, no7<? super j59> no7Var) {
            this.obj = obj;
            this.channel = no7Var;
        }

        public final no7<j59> getChannel() {
            return this.channel;
        }

        public final Object getObj() {
            return this.obj;
        }
    }

    public static final class RemoveScope implements SubscriptionChange {
        private final no7<j59> channel;

        /* JADX WARN: Multi-variable type inference failed */
        public RemoveScope(no7<? super j59> no7Var) {
            this.channel = no7Var;
        }

        public final no7<j59> getChannel() {
            return this.channel;
        }
    }

    public interface SubscriptionChange {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 readObserverFor$lambda$0(MultiSubscriptionSnapshotFlowManager multiSubscriptionSnapshotFlowManager, no7 no7Var, Object obj) {
        multiSubscriptionSnapshotFlowManager.watch$runtime(no7Var, obj);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:18:0x0056 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:19:0x0058 A[Catch: all -> 0x004e, LOOP:0: B:7:0x001c->B:19:0x0058, LOOP_END, TryCatch #0 {all -> 0x004e, blocks: (B:4:0x0005, B:7:0x001c, B:9:0x002c, B:11:0x0038, B:13:0x0041, B:16:0x0050, B:19:0x0058, B:20:0x005b), top: B:26:0x0005 }] */
    /* JADX WARN: Code duplicated, block: B:29:0x005b A[EDGE_INSN: B:29:0x005b->B:20:0x005b BREAK  A[LOOP:0: B:7:0x001c->B:19:0x0058], SYNTHETIC] */
    public static final j59 unregisterApplyObserver$lambda$0(final MultiSubscriptionSnapshotFlowManager multiSubscriptionSnapshotFlowManager, final Set set, Snapshot snapshot) {
        synchronized (multiSubscriptionSnapshotFlowManager.getLock()) {
            try {
                ScopeMap.m5400forEachKeyimpl(multiSubscriptionSnapshotFlowManager.subscriptions, new nl3() { // from class: androidx.compose.runtime.f
                    @Override // defpackage.nl3
                    public final Object invoke(Object obj) {
                        return MultiSubscriptionSnapshotFlowManager.unregisterApplyObserver$lambda$0$0$0(set, multiSubscriptionSnapshotFlowManager, obj);
                    }
                });
                MutableScatterSet<no7<j59>> mutableScatterSet = multiSubscriptionSnapshotFlowManager.toNotify;
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
                                    ((no7) objArr[(i << 3) + i3]).mo0trySendJP2dKIU(j59.a);
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
                multiSubscriptionSnapshotFlowManager.toNotify.clear();
            } catch (Throwable th) {
                throw th;
            }
        }
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:20:0x0056 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:21:0x0058 A[LOOP:0: B:11:0x001f->B:21:0x0058, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:26:0x0062 A[EDGE_INSN: B:26:0x0062->B:23:0x0062 BREAK  A[LOOP:0: B:11:0x001f->B:21:0x0058], SYNTHETIC] */
    public static final j59 unregisterApplyObserver$lambda$0$0$0(Set set, MultiSubscriptionSnapshotFlowManager multiSubscriptionSnapshotFlowManager, Object obj) {
        Object obj2;
        if (set.contains(obj) && (obj2 = multiSubscriptionSnapshotFlowManager.subscriptions.get(obj)) != null) {
            if (obj2 instanceof MutableScatterSet) {
                MutableScatterSet mutableScatterSet = (MutableScatterSet) obj2;
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
                                    multiSubscriptionSnapshotFlowManager.toNotify.add((no7) objArr[(i << 3) + i3]);
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
                multiSubscriptionSnapshotFlowManager.toNotify.add((no7) obj2);
            }
        }
        return j59.a;
    }

    @Override // androidx.compose.runtime.SnapshotFlowManagerImpl
    public void clearWatchSet$runtime(no7<? super j59> no7Var) {
        this.pendingChanges.add(new RemoveScope(no7Var));
    }

    @Override // androidx.compose.runtime.SnapshotFlowManagerImpl
    public void commitSubscriptionChanges$runtime() {
        synchronized (getLock()) {
            try {
                List<SubscriptionChange> list = this.pendingChanges;
                int size = list.size();
                for (int i = 0; i < size; i++) {
                    SubscriptionChange subscriptionChange = list.get(i);
                    if (subscriptionChange instanceof Add) {
                        ScopeMap.m5388addimpl(this.subscriptions, ((Add) subscriptionChange).getObj(), ((Add) subscriptionChange).getChannel());
                    } else {
                        if (!(subscriptionChange instanceof RemoveScope)) {
                            throw new NoWhenBranchMatchedException();
                        }
                        ScopeMap.m5410removeScopeimpl(this.subscriptions, ((RemoveScope) subscriptionChange).getChannel());
                    }
                }
                j59 j59Var = j59.a;
            } catch (Throwable th) {
                throw th;
            }
        }
        this.pendingChanges.clear();
    }

    @Override // androidx.compose.runtime.SnapshotFlowManagerImpl
    public void dispose$runtime() {
        this.unregisterApplyObserver.dispose();
        this.pendingChanges.clear();
        this.readObserverCache.clear();
        synchronized (getLock()) {
            ScopeMap.m5393clearimpl(this.subscriptions);
            j59 j59Var = j59.a;
        }
    }

    @Override // androidx.compose.runtime.SnapshotFlowManagerImpl
    public nl3<Object, j59> readObserverFor$runtime(final no7<? super j59> no7Var) {
        nl3<Object, j59> nl3Var = this.readObserverCache.get(no7Var);
        if (nl3Var != null) {
            return nl3Var;
        }
        nl3<Object, j59> nl3Var2 = new nl3() { // from class: androidx.compose.runtime.e
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return MultiSubscriptionSnapshotFlowManager.readObserverFor$lambda$0(this.b, no7Var, obj);
            }
        };
        this.readObserverCache.put(no7Var, nl3Var2);
        return nl3Var2;
    }

    @Override // androidx.compose.runtime.SnapshotFlowManagerImpl
    public void reportSnapshotFlowCancellation$runtime(no7<? super j59> no7Var) {
        this.readObserverCache.remove(no7Var);
        clearWatchSet$runtime(no7Var);
        commitSubscriptionChanges$runtime();
    }

    @Override // androidx.compose.runtime.SnapshotFlowManagerImpl
    public void watch$runtime(no7<? super j59> no7Var, Object obj) {
        this.pendingChanges.add(new Add(obj, no7Var));
    }
}
