package androidx.compose.runtime.snapshots;

import androidx.collection.MutableObjectIntMap;
import androidx.collection.MutableScatterMap;
import androidx.collection.MutableScatterSet;
import androidx.collection.ObjectIntMap;
import androidx.collection.ScatterSet;
import androidx.compose.runtime.DerivedState;
import androidx.compose.runtime.DerivedStateObserver;
import androidx.compose.runtime.PreconditionsKt;
import androidx.compose.runtime.SnapshotMutationPolicy;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.runtime.collection.ScatterSetWrapper;
import androidx.compose.runtime.collection.ScopeMap;
import androidx.compose.runtime.internal.Thread_jvmKt;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.runtime.snapshots.SnapshotStateObserver;
import defpackage.aq5;
import defpackage.av;
import defpackage.bm3;
import defpackage.h8;
import defpackage.j59;
import defpackage.jh2;
import defpackage.ll3;
import defpackage.lz0;
import defpackage.nl3;
import defpackage.qn1;
import defpackage.rh0;
import defpackage.u96;
import defpackage.ul2;
import defpackage.v39;
import defpackage.xp;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes2.dex */
public final class SnapshotStateObserver {
    public static final int $stable = 8;
    private ObserverHandle applyUnsubscribe;
    private ObservedScopeMap currentMap;
    private boolean isPaused;
    private final nl3<ll3<j59>, j59> onChangedExecutor;
    private boolean sendingNotifications;
    private final AtomicReference<Object> pendingChanges = new AtomicReference<>(null);
    private final bm3<Set<? extends Object>, Snapshot, j59> applyObserver = new bm3() { // from class: l48
        @Override // defpackage.bm3
        public final Object invoke(Object obj, Object obj2) {
            return SnapshotStateObserver.applyObserver$lambda$0(this.b, (Set) obj, (Snapshot) obj2);
        }
    };
    private final nl3<Object, j59> readObserver = new rh0(this, 4);
    private final MutableVector<ObservedScopeMap> observedScopeMaps = new MutableVector<>(new ObservedScopeMap[16], 0);
    private final Object observedScopeMapsLock = new Object();
    private long currentMapThreadId = -1;

    /* JADX WARN: Multi-variable type inference failed */
    public SnapshotStateObserver(nl3<? super ll3<j59>, j59> nl3Var) {
        this.onChangedExecutor = nl3Var;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void addChanges(Set<? extends Object> set) {
        List listH0;
        while (true) {
            Object obj = this.pendingChanges.get();
            if (obj == null) {
                listH0 = set;
            } else if (obj instanceof Set) {
                listH0 = u96.i(obj, set);
            } else {
                if (!(obj instanceof List)) {
                    report();
                    h8.d();
                    return;
                }
                listH0 = qn1.h0(u96.h(set), (Collection) obj);
            }
            AtomicReference<Object> atomicReference = this.pendingChanges;
            while (!atomicReference.compareAndSet(obj, listH0)) {
                if (atomicReference.get() != obj) {
                }
            }
            return;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 applyObserver$lambda$0(SnapshotStateObserver snapshotStateObserver, Set set, Snapshot snapshot) {
        snapshotStateObserver.addChanges(set);
        if (snapshotStateObserver.drainChanges()) {
            snapshotStateObserver.sendNotifications();
        }
        return j59.a;
    }

    private final boolean drainChanges() {
        boolean z;
        synchronized (this.observedScopeMapsLock) {
            z = this.sendingNotifications;
        }
        if (z) {
            return false;
        }
        boolean z2 = false;
        while (true) {
            Set<? extends Object> setRemoveChanges = removeChanges();
            if (setRemoveChanges == null) {
                return z2;
            }
            synchronized (this.observedScopeMapsLock) {
                try {
                    MutableVector<ObservedScopeMap> mutableVector = this.observedScopeMaps;
                    ObservedScopeMap[] observedScopeMapArr = mutableVector.content;
                    int size = mutableVector.getSize();
                    for (int i = 0; i < size; i++) {
                        z2 = observedScopeMapArr[i].recordInvalidation(setRemoveChanges) || z2;
                    }
                    j59 j59Var = j59.a;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    private final <T> ObservedScopeMap ensureMap(nl3<? super T, j59> nl3Var) {
        ObservedScopeMap observedScopeMap;
        MutableVector<ObservedScopeMap> mutableVector = this.observedScopeMaps;
        ObservedScopeMap[] observedScopeMapArr = mutableVector.content;
        int size = mutableVector.getSize();
        int i = 0;
        while (true) {
            if (i >= size) {
                observedScopeMap = null;
                break;
            }
            observedScopeMap = observedScopeMapArr[i];
            if (observedScopeMap.getOnChanged() == nl3Var) {
                break;
            }
            i++;
        }
        ObservedScopeMap observedScopeMap2 = observedScopeMap;
        if (observedScopeMap2 != null) {
            return observedScopeMap2;
        }
        nl3Var.getClass();
        v39.c(1, nl3Var);
        ObservedScopeMap observedScopeMap3 = new ObservedScopeMap(nl3Var);
        this.observedScopeMaps.add(observedScopeMap3);
        return observedScopeMap3;
    }

    private final void forEachScopeMap(nl3<? super ObservedScopeMap, j59> nl3Var) {
        synchronized (this.observedScopeMapsLock) {
            try {
                MutableVector<ObservedScopeMap> mutableVector = this.observedScopeMaps;
                ObservedScopeMap[] observedScopeMapArr = mutableVector.content;
                int size = mutableVector.getSize();
                for (int i = 0; i < size; i++) {
                    nl3Var.invoke(observedScopeMapArr[i]);
                }
                j59 j59Var = j59.a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 readObserver$lambda$0(SnapshotStateObserver snapshotStateObserver, Object obj) {
        if (!snapshotStateObserver.isPaused) {
            synchronized (snapshotStateObserver.observedScopeMapsLock) {
                ObservedScopeMap observedScopeMap = snapshotStateObserver.currentMap;
                observedScopeMap.getClass();
                observedScopeMap.recordRead(obj);
                j59 j59Var = j59.a;
            }
        }
        return j59.a;
    }

    private final Set<Object> removeChanges() {
        Set<Object> set;
        while (true) {
            Object obj = this.pendingChanges.get();
            Object objSubList = null;
            if (obj == null) {
                return null;
            }
            if (obj instanceof Set) {
                set = (Set) obj;
            } else {
                if (!(obj instanceof List)) {
                    report();
                    h8.d();
                    return null;
                }
                List list = (List) obj;
                set = (Set) list.get(0);
                if (list.size() == 2) {
                    objSubList = list.get(1);
                } else if (list.size() > 2) {
                    objSubList = list.subList(1, list.size());
                }
            }
            Object obj2 = objSubList;
            AtomicReference<Object> atomicReference = this.pendingChanges;
            while (!atomicReference.compareAndSet(obj, obj2)) {
                if (atomicReference.get() != obj) {
                }
            }
            return set;
        }
    }

    private final void removeScopeMapIf(nl3<? super ObservedScopeMap, Boolean> nl3Var) {
        synchronized (this.observedScopeMapsLock) {
            try {
                MutableVector<ObservedScopeMap> mutableVector = this.observedScopeMaps;
                int size = mutableVector.getSize();
                int i = 0;
                int i2 = 0;
                while (true) {
                    ObservedScopeMap[] observedScopeMapArr = mutableVector.content;
                    if (i < size) {
                        if (nl3Var.invoke(observedScopeMapArr[i]).booleanValue()) {
                            i2++;
                        } else if (i2 > 0) {
                            ObservedScopeMap[] observedScopeMapArr2 = mutableVector.content;
                            observedScopeMapArr2[i - i2] = observedScopeMapArr2[i];
                        }
                        i++;
                    } else {
                        int i3 = size - i2;
                        aq5.t(null, observedScopeMapArr, i3, size);
                        mutableVector.setSize(i3);
                        j59 j59Var = j59.a;
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private final Void report() {
        throw av.b("Unexpected notification");
    }

    private final void sendNotifications() {
        this.onChangedExecutor.invoke(new lz0(this, 4));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 sendNotifications$lambda$0(SnapshotStateObserver snapshotStateObserver) {
        do {
            synchronized (snapshotStateObserver.observedScopeMapsLock) {
                try {
                    if (!snapshotStateObserver.sendingNotifications) {
                        snapshotStateObserver.sendingNotifications = true;
                        try {
                            MutableVector<ObservedScopeMap> mutableVector = snapshotStateObserver.observedScopeMaps;
                            ObservedScopeMap[] observedScopeMapArr = mutableVector.content;
                            int size = mutableVector.getSize();
                            for (int i = 0; i < size; i++) {
                                observedScopeMapArr[i].notifyInvalidatedScopes();
                            }
                            snapshotStateObserver.sendingNotifications = false;
                        } catch (Throwable th) {
                            snapshotStateObserver.sendingNotifications = false;
                            throw th;
                        }
                    }
                    j59 j59Var = j59.a;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        } while (snapshotStateObserver.drainChanges());
        return j59.a;
    }

    private final <T> T withScopeMapLock(ll3<? extends T> ll3Var) {
        T tInvoke;
        synchronized (this.observedScopeMapsLock) {
            tInvoke = ll3Var.invoke();
        }
        return tInvoke;
    }

    public final void clear(Object obj) {
        synchronized (this.observedScopeMapsLock) {
            try {
                MutableVector<ObservedScopeMap> mutableVector = this.observedScopeMaps;
                int size = mutableVector.getSize();
                int i = 0;
                int i2 = 0;
                while (true) {
                    ObservedScopeMap[] observedScopeMapArr = mutableVector.content;
                    if (i < size) {
                        ObservedScopeMap observedScopeMap = observedScopeMapArr[i];
                        observedScopeMap.clearScopeObservations(obj);
                        if (!observedScopeMap.hasScopeObservations()) {
                            i2++;
                        } else if (i2 > 0) {
                            ObservedScopeMap[] observedScopeMapArr2 = mutableVector.content;
                            observedScopeMapArr2[i - i2] = observedScopeMapArr2[i];
                        }
                        i++;
                    } else {
                        int i3 = size - i2;
                        aq5.t(null, observedScopeMapArr, i3, size);
                        mutableVector.setSize(i3);
                        j59 j59Var = j59.a;
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void clearIf(nl3<Object, Boolean> nl3Var) {
        synchronized (this.observedScopeMapsLock) {
            try {
                MutableVector<ObservedScopeMap> mutableVector = this.observedScopeMaps;
                int size = mutableVector.getSize();
                int i = 0;
                int i2 = 0;
                while (true) {
                    ObservedScopeMap[] observedScopeMapArr = mutableVector.content;
                    if (i < size) {
                        ObservedScopeMap observedScopeMap = observedScopeMapArr[i];
                        observedScopeMap.removeScopeIf(nl3Var);
                        if (!observedScopeMap.hasScopeObservations()) {
                            i2++;
                        } else if (i2 > 0) {
                            ObservedScopeMap[] observedScopeMapArr2 = mutableVector.content;
                            observedScopeMapArr2[i - i2] = observedScopeMapArr2[i];
                        }
                        i++;
                    } else {
                        int i3 = size - i2;
                        aq5.t(null, observedScopeMapArr, i3, size);
                        mutableVector.setSize(i3);
                        j59 j59Var = j59.a;
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void notifyChanges(Set<? extends Object> set, Snapshot snapshot) {
        this.applyObserver.invoke(set, snapshot);
    }

    /* JADX WARN: Code duplicated, block: B:51:0x012b  */
    /* JADX WARN: Code duplicated, block: B:57:0x013f A[Catch: all -> 0x010b, TryCatch #6 {all -> 0x010b, blocks: (B:39:0x00fd, B:47:0x0119, B:48:0x0124, B:53:0x0132, B:56:0x0137, B:57:0x013f, B:59:0x0145), top: B:119:0x00c0 }] */
    /* JADX WARN: Code duplicated, block: B:59:0x0145 A[Catch: all -> 0x010b, TRY_LEAVE, TryCatch #6 {all -> 0x010b, blocks: (B:39:0x00fd, B:47:0x0119, B:48:0x0124, B:53:0x0132, B:56:0x0137, B:57:0x013f, B:59:0x0145), top: B:119:0x00c0 }] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v11 */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r10v3 */
    public final <T> void observeReads(T t, nl3<? super T, j59> nl3Var, ll3<j59> ll3Var) {
        ObservedScopeMap observedScopeMapEnsureMap;
        boolean z;
        ObservedScopeMap observedScopeMap;
        long j;
        MutableVector<DerivedStateObserver> mutableVector;
        long j2;
        Snapshot transparentObserverMutableSnapshot;
        Snapshot snapshotMakeCurrent;
        long jCurrentThreadId = Thread_jvmKt.currentThreadId();
        synchronized (this.observedScopeMapsLock) {
            observedScopeMapEnsureMap = ensureMap(nl3Var);
            z = this.isPaused;
            observedScopeMap = this.currentMap;
            j = this.currentMapThreadId;
            j59 j59Var = j59.a;
        }
        long j3 = 0;
        if (j != -1) {
            if (!(j == jCurrentThreadId)) {
                StringBuilder sbF = xp.f(j, "Detected multithreaded access to SnapshotStateObserver: previousThreadId=", "), currentThread={id=");
                sbF.append(jCurrentThreadId);
                sbF.append(", name=");
                sbF.append(Thread_jvmKt.currentThreadName());
                sbF.append("}. Note that observation on multiple threads in layout/draw is not supported. Make sure your measure/layout/draw for each Owner (AndroidComposeView) is executed on the same thread.");
                PreconditionsKt.throwIllegalArgumentException(sbF.toString());
            }
        }
        try {
            synchronized (this.observedScopeMapsLock) {
                try {
                    this.isPaused = false;
                    this.currentMap = observedScopeMapEnsureMap;
                    this.currentMapThreadId = jCurrentThreadId;
                } catch (Throwable th) {
                    th = th;
                }
            }
            nl3<Object, j59> nl3Var2 = this.readObserver;
            Object obj = observedScopeMapEnsureMap.currentScope;
            MutableObjectIntMap mutableObjectIntMap = observedScopeMapEnsureMap.currentScopeReads;
            int i = observedScopeMapEnsureMap.currentToken;
            observedScopeMapEnsureMap.currentScope = t;
            observedScopeMapEnsureMap.currentScopeReads = (MutableObjectIntMap) observedScopeMapEnsureMap.scopeToValues.get(t);
            if (observedScopeMapEnsureMap.currentToken == -1) {
                observedScopeMapEnsureMap.currentToken = Long.hashCode(SnapshotKt.currentSnapshot().getSnapshotId());
            }
            DerivedStateObserver derivedStateObserver = observedScopeMapEnsureMap.getDerivedStateObserver();
            MutableVector<DerivedStateObserver> mutableVectorDerivedStateObservers = SnapshotStateKt.derivedStateObservers();
            try {
                mutableVectorDerivedStateObservers.add(derivedStateObserver);
                Snapshot.Companion companion = Snapshot.Companion;
                if (nl3Var2 == null) {
                    ll3Var.invoke();
                    j2 = j;
                    mutableVector = mutableVectorDerivedStateObservers;
                } else {
                    Snapshot snapshot = (Snapshot) SnapshotKt.threadSnapshot.get();
                    try {
                        if (!(snapshot instanceof TransparentObserverMutableSnapshot)) {
                            j2 = j;
                            if (snapshot != null) {
                                mutableVector = mutableVectorDerivedStateObservers;
                                transparentObserverMutableSnapshot = new TransparentObserverMutableSnapshot(snapshot instanceof MutableSnapshot ? (MutableSnapshot) snapshot : null, nl3Var2, null, true, false);
                                snapshotMakeCurrent = transparentObserverMutableSnapshot.makeCurrent();
                                ll3Var.invoke();
                                transparentObserverMutableSnapshot.restoreCurrent(snapshotMakeCurrent);
                                transparentObserverMutableSnapshot.dispose();
                            } else {
                                mutableVector = mutableVectorDerivedStateObservers;
                                transparentObserverMutableSnapshot = new TransparentObserverMutableSnapshot(snapshot instanceof MutableSnapshot ? (MutableSnapshot) snapshot : null, nl3Var2, null, true, false);
                                snapshotMakeCurrent = transparentObserverMutableSnapshot.makeCurrent();
                                ll3Var.invoke();
                                transparentObserverMutableSnapshot.restoreCurrent(snapshotMakeCurrent);
                                transparentObserverMutableSnapshot.dispose();
                            }
                            synchronized (this.observedScopeMapsLock) {
                                this.currentMap = observedScopeMap;
                                this.isPaused = z;
                                this.currentMapThreadId = j3;
                                j59 j59Var2 = j59.a;
                            }
                            throw th;
                        }
                        try {
                            if (((TransparentObserverMutableSnapshot) snapshot).getThreadId$runtime() == Thread_jvmKt.currentThreadId()) {
                                nl3<Object, j59> readObserver$runtime = ((TransparentObserverMutableSnapshot) snapshot).getReadObserver();
                                nl3<Object, j59> writeObserver$runtime = ((TransparentObserverMutableSnapshot) snapshot).getWriteObserver$runtime();
                                try {
                                    j2 = j;
                                    try {
                                        ((TransparentObserverMutableSnapshot) snapshot).setReadObserver$runtime(SnapshotKt.mergedReadObserver$default(nl3Var2, readObserver$runtime, false, 4, null));
                                        ((TransparentObserverMutableSnapshot) snapshot).setWriteObserver$runtime(SnapshotKt.mergedWriteObserver(null, writeObserver$runtime));
                                        ll3Var.invoke();
                                        ((TransparentObserverMutableSnapshot) snapshot).setReadObserver$runtime(readObserver$runtime);
                                        ((TransparentObserverMutableSnapshot) snapshot).setWriteObserver$runtime(writeObserver$runtime);
                                        mutableVector = mutableVectorDerivedStateObservers;
                                    } catch (Throwable th2) {
                                        th = th2;
                                        ((TransparentObserverMutableSnapshot) snapshot).setReadObserver$runtime(readObserver$runtime);
                                        ((TransparentObserverMutableSnapshot) snapshot).setWriteObserver$runtime(writeObserver$runtime);
                                        throw th;
                                    }
                                } catch (Throwable th3) {
                                    th = th3;
                                }
                            } else {
                                j2 = j;
                                if (snapshot != null || (snapshot instanceof MutableSnapshot)) {
                                    mutableVector = mutableVectorDerivedStateObservers;
                                    try {
                                        transparentObserverMutableSnapshot = new TransparentObserverMutableSnapshot(snapshot instanceof MutableSnapshot ? (MutableSnapshot) snapshot : null, nl3Var2, null, true, false);
                                    } catch (Throwable th4) {
                                        th = th4;
                                        mutableVector.removeAt(mutableVector.getSize() - 1);
                                        throw th;
                                    }
                                } else {
                                    transparentObserverMutableSnapshot = snapshot.takeNestedSnapshot(nl3Var2);
                                    mutableVector = mutableVectorDerivedStateObservers;
                                }
                                try {
                                    snapshotMakeCurrent = transparentObserverMutableSnapshot.makeCurrent();
                                    try {
                                        ll3Var.invoke();
                                        transparentObserverMutableSnapshot.restoreCurrent(snapshotMakeCurrent);
                                        transparentObserverMutableSnapshot.dispose();
                                    } catch (Throwable th5) {
                                        try {
                                            transparentObserverMutableSnapshot.restoreCurrent(snapshotMakeCurrent);
                                            throw th5;
                                        } catch (Throwable th6) {
                                            th = th6;
                                            try {
                                                transparentObserverMutableSnapshot.dispose();
                                                throw th;
                                            } catch (Throwable th7) {
                                                th = th7;
                                                mutableVector.removeAt(mutableVector.getSize() - 1);
                                                throw th;
                                            }
                                        }
                                    }
                                } catch (Throwable th8) {
                                    th = th8;
                                }
                            }
                        } catch (Throwable th9) {
                            th = th9;
                            j2 = j;
                            mutableVector = mutableVectorDerivedStateObservers;
                            mutableVector.removeAt(mutableVector.getSize() - 1);
                            throw th;
                        }
                    } catch (Throwable th10) {
                        th = th10;
                    }
                }
                try {
                    mutableVector.removeAt(mutableVector.getSize() - 1);
                    Object obj2 = observedScopeMapEnsureMap.currentScope;
                    obj2.getClass();
                    observedScopeMapEnsureMap.clearObsoleteStateReads(obj2);
                    observedScopeMapEnsureMap.currentScope = obj;
                    observedScopeMapEnsureMap.currentScopeReads = mutableObjectIntMap;
                    observedScopeMapEnsureMap.currentToken = i;
                    synchronized (this.observedScopeMapsLock) {
                        this.currentMap = observedScopeMap;
                        this.isPaused = z;
                        this.currentMapThreadId = j2;
                    }
                } catch (Throwable th11) {
                    th = th11;
                    j3 = j2;
                }
            } catch (Throwable th12) {
                th = th12;
                mutableVector = mutableVectorDerivedStateObservers;
            }
        } catch (Throwable th13) {
            th = th13;
            j3 = j;
        }
    }

    public final void start() {
        this.applyUnsubscribe = Snapshot.Companion.registerApplyObserver(this.applyObserver);
    }

    public final void stop() {
        ObserverHandle observerHandle = this.applyUnsubscribe;
        if (observerHandle != null) {
            observerHandle.dispose();
        }
    }

    @ul2
    public final void withNoObservations(ll3<j59> ll3Var) {
        boolean z = this.isPaused;
        this.isPaused = true;
        try {
            ll3Var.invoke();
        } finally {
            this.isPaused = z;
        }
    }

    public final void clear() {
        synchronized (this.observedScopeMapsLock) {
            try {
                MutableVector<ObservedScopeMap> mutableVector = this.observedScopeMaps;
                ObservedScopeMap[] observedScopeMapArr = mutableVector.content;
                int size = mutableVector.getSize();
                for (int i = 0; i < size; i++) {
                    observedScopeMapArr[i].clear();
                }
                j59 j59Var = j59.a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static final class ObservedScopeMap {
        private Object currentScope;
        private MutableObjectIntMap<Object> currentScopeReads;
        private int deriveStateScopeCount;
        private final MutableScatterSet<Object> invalidated;
        private final nl3<Object, j59> onChanged;
        private boolean readingDerivedStates;
        private final MutableScatterMap<Object, MutableObjectIntMap<Object>> scopeToValues;
        private int currentToken = -1;
        private final MutableScatterMap<Object, Object> valueToScopes = ScopeMap.m5395constructorimpl$default(null, 1, null);
        private final MutableVector<DerivedState<?>> statesToReread = new MutableVector<>(new DerivedState[16], 0);
        private final DerivedStateObserver derivedStateObserver = new DerivedStateObserver() { // from class: androidx.compose.runtime.snapshots.SnapshotStateObserver$ObservedScopeMap$derivedStateObserver$1
            @Override // androidx.compose.runtime.DerivedStateObserver
            public void done(DerivedState<?> derivedState) {
                this.this$0.deriveStateScopeCount--;
            }

            @Override // androidx.compose.runtime.DerivedStateObserver
            public void start(DerivedState<?> derivedState) {
                this.this$0.deriveStateScopeCount++;
            }
        };
        private final MutableScatterMap<Object, Object> dependencyToDerivedStates = ScopeMap.m5395constructorimpl$default(null, 1, null);
        private final HashMap<DerivedState<?>, Object> recordedDerivedStateValues = new HashMap<>();

        public ObservedScopeMap(nl3<Object, j59> nl3Var) {
            this.onChanged = nl3Var;
            jh2 jh2Var = null;
            int i = 1;
            int i2 = 0;
            this.scopeToValues = new MutableScatterMap<>(i2, i, jh2Var);
            this.invalidated = new MutableScatterSet<>(i2, i, jh2Var);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void clearObsoleteStateReads(Object obj) {
            int i = this.currentToken;
            MutableObjectIntMap<Object> mutableObjectIntMap = this.currentScopeReads;
            if (mutableObjectIntMap == null) {
                return;
            }
            long[] jArr = mutableObjectIntMap.metadata;
            int length = jArr.length - 2;
            if (length < 0) {
                return;
            }
            int i2 = 0;
            while (true) {
                long j = jArr[i2];
                if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i3 = 8 - ((~(i2 - length)) >>> 31);
                    for (int i4 = 0; i4 < i3; i4++) {
                        if ((255 & j) < 128) {
                            int i5 = (i2 << 3) + i4;
                            Object obj2 = mutableObjectIntMap.keys[i5];
                            boolean z = mutableObjectIntMap.values[i5] != i;
                            if (z) {
                                removeObservation(obj, obj2);
                            }
                            if (z) {
                                mutableObjectIntMap.removeValueAt(i5);
                            }
                        }
                        j >>= 8;
                    }
                    if (i3 != 8) {
                        return;
                    }
                }
                if (i2 == length) {
                    return;
                } else {
                    i2++;
                }
            }
        }

        private final void recordRead(Object obj, int i, Object obj2, MutableObjectIntMap<Object> mutableObjectIntMap) {
            int i2;
            int i3;
            int i4;
            if (this.deriveStateScopeCount > 0) {
                return;
            }
            int iPut = mutableObjectIntMap.put(obj, i, -1);
            int i5 = 2;
            if (!(obj instanceof DerivedState) || iPut == i) {
                i2 = 2;
                i3 = -1;
            } else {
                DerivedState.Record currentRecord = ((DerivedState) obj).getCurrentRecord();
                this.recordedDerivedStateValues.put(obj, currentRecord.getCurrentValue());
                ObjectIntMap<StateObject> dependencies = currentRecord.getDependencies();
                MutableScatterMap<Object, Object> mutableScatterMap = this.dependencyToDerivedStates;
                ScopeMap.m5410removeScopeimpl(mutableScatterMap, obj);
                Object[] objArr = dependencies.keys;
                long[] jArr = dependencies.metadata;
                int length = jArr.length - 2;
                if (length >= 0) {
                    int i6 = 0;
                    while (true) {
                        long j = jArr[i6];
                        if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                            int i7 = 8 - ((~(i6 - length)) >>> 31);
                            int i8 = 0;
                            while (i8 < i7) {
                                if ((j & 255) < 128) {
                                    i4 = i5;
                                    StateObject stateObject = (StateObject) objArr[(i6 << 3) + i8];
                                    if (stateObject instanceof StateObjectImpl) {
                                        ((StateObjectImpl) stateObject).m5643recordReadInh_f27i8$runtime(ReaderKind.m5631constructorimpl(i4));
                                    }
                                    ScopeMap.m5388addimpl(mutableScatterMap, stateObject, obj);
                                } else {
                                    i4 = i5;
                                }
                                j >>= 8;
                                i8++;
                                i5 = i4;
                            }
                            i2 = i5;
                            if (i7 != 8) {
                                break;
                            }
                        } else {
                            i2 = i5;
                        }
                        if (i6 == length) {
                            break;
                        }
                        i6++;
                        i5 = i2;
                    }
                } else {
                    i2 = 2;
                }
                i3 = -1;
            }
            if (iPut == i3) {
                if (obj instanceof StateObjectImpl) {
                    ((StateObjectImpl) obj).m5643recordReadInh_f27i8$runtime(ReaderKind.m5631constructorimpl(i2));
                }
                ScopeMap.m5388addimpl(this.valueToScopes, obj, obj2);
            }
        }

        private final void removeObservation(Object obj, Object obj2) {
            ScopeMap.m5408removeimpl(this.valueToScopes, obj2, obj);
            if (!(obj2 instanceof DerivedState) || ScopeMap.m5396containsimpl(this.valueToScopes, obj2)) {
                return;
            }
            ScopeMap.m5410removeScopeimpl(this.dependencyToDerivedStates, obj2);
            this.recordedDerivedStateValues.remove(obj2);
        }

        public final void clear() {
            ScopeMap.m5393clearimpl(this.valueToScopes);
            this.scopeToValues.clear();
            ScopeMap.m5393clearimpl(this.dependencyToDerivedStates);
            this.recordedDerivedStateValues.clear();
        }

        public final void clearScopeObservations(Object obj) {
            MutableObjectIntMap<Object> mutableObjectIntMapRemove = this.scopeToValues.remove(obj);
            if (mutableObjectIntMapRemove == null) {
                return;
            }
            Object[] objArr = mutableObjectIntMapRemove.keys;
            int[] iArr = mutableObjectIntMapRemove.values;
            long[] jArr = mutableObjectIntMapRemove.metadata;
            int length = jArr.length - 2;
            if (length < 0) {
                return;
            }
            int i = 0;
            while (true) {
                long j = jArr[i];
                if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i2 = 8 - ((~(i - length)) >>> 31);
                    for (int i3 = 0; i3 < i2; i3++) {
                        if ((255 & j) < 128) {
                            int i4 = (i << 3) + i3;
                            Object obj2 = objArr[i4];
                            int i5 = iArr[i4];
                            removeObservation(obj, obj2);
                        }
                        j >>= 8;
                    }
                    if (i2 != 8) {
                        return;
                    }
                }
                if (i == length) {
                    return;
                } else {
                    i++;
                }
            }
        }

        public final DerivedStateObserver getDerivedStateObserver() {
            return this.derivedStateObserver;
        }

        public final nl3<Object, j59> getOnChanged() {
            return this.onChanged;
        }

        public final boolean getReadingDerivedStates() {
            return this.readingDerivedStates;
        }

        public final boolean hasScopeObservations() {
            return this.scopeToValues.isNotEmpty();
        }

        /* JADX WARN: Code duplicated, block: B:14:0x0042 A[DONT_INVERT] */
        /* JADX WARN: Code duplicated, block: B:15:0x0044 A[LOOP:0: B:5:0x000f->B:15:0x0044, LOOP_END] */
        /* JADX WARN: Code duplicated, block: B:19:0x0047 A[EDGE_INSN: B:19:0x0047->B:16:0x0047 BREAK  A[LOOP:0: B:5:0x000f->B:15:0x0044], SYNTHETIC] */
        public final void notifyInvalidatedScopes() {
            MutableScatterSet<Object> mutableScatterSet = this.invalidated;
            nl3<Object, j59> nl3Var = this.onChanged;
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
                                nl3Var.invoke(objArr[(i << 3) + i3]);
                            }
                            j >>= 8;
                        }
                        if (i2 != 8) {
                            break;
                        } else if (i != length) {
                            break;
                        } else {
                            i++;
                        }
                    }
                }
            }
            mutableScatterSet.clear();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final void observe(Object obj, nl3<Object, j59> nl3Var, ll3<j59> ll3Var) {
            Snapshot transparentObserverMutableSnapshot;
            Object obj2 = this.currentScope;
            MutableObjectIntMap mutableObjectIntMap = this.currentScopeReads;
            int i = this.currentToken;
            this.currentScope = obj;
            this.currentScopeReads = (MutableObjectIntMap) this.scopeToValues.get(obj);
            if (this.currentToken == -1) {
                this.currentToken = Long.hashCode(SnapshotKt.currentSnapshot().getSnapshotId());
            }
            DerivedStateObserver derivedStateObserver = getDerivedStateObserver();
            MutableVector<DerivedStateObserver> mutableVectorDerivedStateObservers = SnapshotStateKt.derivedStateObservers();
            try {
                mutableVectorDerivedStateObservers.add(derivedStateObserver);
                Snapshot.Companion companion = Snapshot.Companion;
                if (nl3Var == null) {
                    ll3Var.invoke();
                } else {
                    Snapshot snapshot = (Snapshot) SnapshotKt.threadSnapshot.get();
                    if ((snapshot instanceof TransparentObserverMutableSnapshot) && ((TransparentObserverMutableSnapshot) snapshot).getThreadId$runtime() == Thread_jvmKt.currentThreadId()) {
                        nl3<Object, j59> readObserver$runtime = ((TransparentObserverMutableSnapshot) snapshot).getReadObserver();
                        nl3<Object, j59> writeObserver$runtime = ((TransparentObserverMutableSnapshot) snapshot).getWriteObserver$runtime();
                        try {
                            ((TransparentObserverMutableSnapshot) snapshot).setReadObserver$runtime(SnapshotKt.mergedReadObserver$default(nl3Var, readObserver$runtime, false, 4, null));
                            ((TransparentObserverMutableSnapshot) snapshot).setWriteObserver$runtime(SnapshotKt.mergedWriteObserver(null, writeObserver$runtime));
                            ll3Var.invoke();
                            ((TransparentObserverMutableSnapshot) snapshot).setReadObserver$runtime(readObserver$runtime);
                            ((TransparentObserverMutableSnapshot) snapshot).setWriteObserver$runtime(writeObserver$runtime);
                        } catch (Throwable th) {
                            ((TransparentObserverMutableSnapshot) snapshot).setReadObserver$runtime(readObserver$runtime);
                            ((TransparentObserverMutableSnapshot) snapshot).setWriteObserver$runtime(writeObserver$runtime);
                            throw th;
                        }
                    } else {
                        if (snapshot == null || (snapshot instanceof MutableSnapshot)) {
                            transparentObserverMutableSnapshot = new TransparentObserverMutableSnapshot(snapshot instanceof MutableSnapshot ? (MutableSnapshot) snapshot : null, nl3Var, null, true, false);
                        } else {
                            transparentObserverMutableSnapshot = snapshot.takeNestedSnapshot(nl3Var);
                        }
                        try {
                            Snapshot snapshotMakeCurrent = transparentObserverMutableSnapshot.makeCurrent();
                            try {
                                ll3Var.invoke();
                                transparentObserverMutableSnapshot.restoreCurrent(snapshotMakeCurrent);
                                transparentObserverMutableSnapshot.dispose();
                            } catch (Throwable th2) {
                                transparentObserverMutableSnapshot.restoreCurrent(snapshotMakeCurrent);
                                throw th2;
                            }
                        } catch (Throwable th3) {
                            transparentObserverMutableSnapshot.dispose();
                            throw th3;
                        }
                    }
                }
                mutableVectorDerivedStateObservers.removeAt(mutableVectorDerivedStateObservers.getSize() - 1);
                Object obj3 = this.currentScope;
                obj3.getClass();
                clearObsoleteStateReads(obj3);
                this.currentScope = obj2;
                this.currentScopeReads = mutableObjectIntMap;
                this.currentToken = i;
            } catch (Throwable th4) {
                mutableVectorDerivedStateObservers.removeAt(mutableVectorDerivedStateObservers.getSize() - 1);
                throw th4;
            }
        }

        /* JADX WARN: Code duplicated, block: B:100:0x0232 A[DONT_INVERT, PHI: r20
          0x0232: PHI (r20v38 boolean) = (r20v37 boolean), (r20v39 boolean) binds: [B:91:0x020a, B:99:0x0230] A[DONT_GENERATE, DONT_INLINE]] */
        /* JADX WARN: Code duplicated, block: B:101:0x0234 A[Catch: all -> 0x00dd, LOOP:8: B:90:0x0200->B:101:0x0234, LOOP_END, TryCatch #1 {all -> 0x00dd, blocks: (B:23:0x0081, B:25:0x0087, B:27:0x008b, B:30:0x009d, B:32:0x00ad, B:34:0x00b7, B:36:0x00bd, B:38:0x00d8, B:41:0x00e1, B:43:0x00f1, B:45:0x00f7, B:47:0x00fb, B:50:0x010b, B:52:0x011b, B:54:0x0125, B:56:0x012b, B:58:0x013b, B:66:0x0162, B:70:0x0182, B:62:0x0146, B:63:0x014f, B:67:0x0167, B:76:0x01a9, B:78:0x01be, B:80:0x01d8, B:81:0x01dc, B:83:0x01ea, B:85:0x01f0, B:87:0x01f4, B:90:0x0200, B:92:0x020c, B:94:0x0218, B:96:0x021e, B:97:0x0228, B:101:0x0234, B:102:0x0237, B:103:0x023c, B:104:0x0240), top: B:293:0x0081 }] */
        /* JADX WARN: Code duplicated, block: B:130:0x02b7 A[DONT_INVERT, PHI: r20
          0x02b7: PHI (r20v30 boolean) = (r20v29 boolean), (r20v31 boolean) binds: [B:121:0x028e, B:129:0x02b5] A[DONT_GENERATE, DONT_INLINE]] */
        /* JADX WARN: Code duplicated, block: B:131:0x02b9 A[LOOP:6: B:120:0x0284->B:131:0x02b9, LOOP_END] */
        /* JADX WARN: Code duplicated, block: B:245:0x04fa A[Catch: all -> 0x03a3, LOOP:18: B:232:0x04c1->B:245:0x04fa, LOOP_END, TryCatch #0 {all -> 0x03a3, blocks: (B:158:0x0349, B:160:0x034f, B:162:0x0353, B:165:0x0360, B:167:0x036d, B:169:0x0379, B:171:0x037f, B:173:0x039a, B:177:0x03a7, B:179:0x03b7, B:181:0x03bd, B:183:0x03c1, B:186:0x03d0, B:188:0x03e0, B:190:0x03ed, B:192:0x03f3, B:195:0x0406, B:201:0x041a, B:207:0x0433, B:211:0x0451, B:203:0x0423, B:208:0x0438, B:218:0x0478, B:220:0x0488, B:222:0x0498, B:223:0x049c, B:225:0x04aa, B:227:0x04b0, B:229:0x04b4, B:232:0x04c1, B:234:0x04cd, B:236:0x04db, B:238:0x04e1, B:239:0x04ea, B:245:0x04fa, B:247:0x04ff, B:248:0x0503, B:249:0x0507), top: B:291:0x0349 }] */
        /* JADX WARN: Code duplicated, block: B:251:0x050e  */
        /* JADX WARN: Code duplicated, block: B:304:0x0160 A[EDGE_INSN: B:304:0x0160->B:65:0x0160 BREAK  A[LOOP:4: B:50:0x010b->B:62:0x0146], SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:309:0x02c1 A[EDGE_INSN: B:309:0x02c1->B:133:0x02c1 BREAK  A[LOOP:6: B:120:0x0284->B:131:0x02b9], SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:314:0x023c A[EDGE_INSN: B:314:0x023c->B:103:0x023c BREAK  A[LOOP:8: B:90:0x0200->B:101:0x0234], SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:336:0x04fd A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:61:0x0144 A[DONT_INVERT, PHI: r20
          0x0144: PHI (r20v49 boolean) = (r20v48 boolean), (r20v50 boolean) binds: [B:51:0x0119, B:60:0x0142] A[DONT_GENERATE, DONT_INLINE]] */
        /* JADX WARN: Code duplicated, block: B:62:0x0146 A[Catch: all -> 0x00dd, LOOP:4: B:50:0x010b->B:62:0x0146, LOOP_END, TryCatch #1 {all -> 0x00dd, blocks: (B:23:0x0081, B:25:0x0087, B:27:0x008b, B:30:0x009d, B:32:0x00ad, B:34:0x00b7, B:36:0x00bd, B:38:0x00d8, B:41:0x00e1, B:43:0x00f1, B:45:0x00f7, B:47:0x00fb, B:50:0x010b, B:52:0x011b, B:54:0x0125, B:56:0x012b, B:58:0x013b, B:66:0x0162, B:70:0x0182, B:62:0x0146, B:63:0x014f, B:67:0x0167, B:76:0x01a9, B:78:0x01be, B:80:0x01d8, B:81:0x01dc, B:83:0x01ea, B:85:0x01f0, B:87:0x01f4, B:90:0x0200, B:92:0x020c, B:94:0x0218, B:96:0x021e, B:97:0x0228, B:101:0x0234, B:102:0x0237, B:103:0x023c, B:104:0x0240), top: B:293:0x0081 }] */
        /* JADX WARN: Code duplicated, block: B:64:0x015a  */
        public final boolean recordInvalidation(Set<? extends Object> set) {
            boolean z;
            Iterator it;
            MutableScatterMap<Object, Object> mutableScatterMap;
            int i;
            Object[] objArr;
            long[] jArr;
            Iterator it2;
            MutableScatterMap<Object, Object> mutableScatterMap2;
            int i2;
            Object[] objArr2;
            long j;
            long[] jArr2;
            boolean z2;
            long[] jArr3;
            long[] jArr4;
            Object[] objArr3;
            int i3;
            long[] jArr5;
            Object[] objArr4;
            int i4;
            int i5;
            long j2;
            int i6;
            int i7;
            Object obj;
            long[] jArr6;
            long[] jArr7;
            Object obj2;
            int i8;
            int i9;
            long j3;
            int i10;
            boolean z3;
            MutableScatterMap<Object, Object> mutableScatterMap3 = this.dependencyToDerivedStates;
            HashMap<DerivedState<?>, Object> map = this.recordedDerivedStateValues;
            MutableScatterMap<Object, Object> mutableScatterMap4 = this.valueToScopes;
            MutableScatterSet<Object> mutableScatterSet = this.invalidated;
            int i11 = 8;
            if (set instanceof ScatterSetWrapper) {
                ScatterSet set$runtime = ((ScatterSetWrapper) set).getSet$runtime();
                Object[] objArr5 = set$runtime.elements;
                long[] jArr8 = set$runtime.metadata;
                int length = jArr8.length - 2;
                if (length >= 0) {
                    int i12 = 0;
                    z = false;
                    while (true) {
                        long j4 = jArr8[i12];
                        if ((((~j4) << 7) & j4 & (-9187201950435737472L)) != -9187201950435737472L) {
                            int i13 = 8 - ((~(i12 - length)) >>> 31);
                            int i14 = 0;
                            while (i14 < i13) {
                                if ((j4 & 255) < 128) {
                                    Object obj3 = objArr5[(i12 << 3) + i14];
                                    int i15 = i11;
                                    if (!(obj3 instanceof StateObjectImpl) || ((StateObjectImpl) obj3).m5642isReadInh_f27i8$runtime(ReaderKind.m5631constructorimpl(2))) {
                                        if (this.readingDerivedStates || !ScopeMap.m5396containsimpl(mutableScatterMap3, obj3)) {
                                            jArr5 = jArr8;
                                            objArr4 = objArr5;
                                            obj = obj3;
                                            i4 = length;
                                            i5 = i12;
                                            j2 = j4;
                                            i6 = i14;
                                        } else {
                                            this.readingDerivedStates = true;
                                            try {
                                                Object obj4 = mutableScatterMap3.get(obj3);
                                                if (obj4 != null) {
                                                    if (obj4 instanceof MutableScatterSet) {
                                                        MutableScatterSet mutableScatterSet2 = (MutableScatterSet) obj4;
                                                        Object[] objArr6 = mutableScatterSet2.elements;
                                                        long[] jArr9 = mutableScatterSet2.metadata;
                                                        jArr5 = jArr8;
                                                        int length2 = jArr9.length - 2;
                                                        objArr4 = objArr5;
                                                        if (length2 >= 0) {
                                                            j2 = j4;
                                                            int i16 = 0;
                                                            while (true) {
                                                                long j5 = jArr9[i16];
                                                                i6 = i14;
                                                                Object[] objArr7 = objArr6;
                                                                if ((((~j5) << 7) & j5 & (-9187201950435737472L)) != -9187201950435737472L) {
                                                                    int i17 = 8 - ((~(i16 - length2)) >>> 31);
                                                                    int i18 = 0;
                                                                    while (i18 < i17) {
                                                                        if ((j5 & 255) < 128) {
                                                                            jArr7 = jArr9;
                                                                            DerivedState<?> derivedState = (DerivedState) objArr7[(i16 << 3) + i18];
                                                                            derivedState.getClass();
                                                                            j3 = j5;
                                                                            Object obj5 = map.get(derivedState);
                                                                            SnapshotMutationPolicy<?> policy = derivedState.getPolicy();
                                                                            if (policy == null) {
                                                                                policy = SnapshotStateKt.structuralEqualityPolicy();
                                                                            }
                                                                            i10 = i18;
                                                                            if (policy.equivalent(derivedState.getCurrentRecord().getCurrentValue(), obj5)) {
                                                                                obj2 = obj3;
                                                                                i8 = length;
                                                                                i9 = i12;
                                                                                this.statesToReread.add(derivedState);
                                                                            } else {
                                                                                Object obj6 = mutableScatterMap4.get(derivedState);
                                                                                if (obj6 == null) {
                                                                                    obj2 = obj3;
                                                                                    i8 = length;
                                                                                    i9 = i12;
                                                                                    z3 = z;
                                                                                } else if (obj6 instanceof MutableScatterSet) {
                                                                                    MutableScatterSet mutableScatterSet3 = (MutableScatterSet) obj6;
                                                                                    Object[] objArr8 = mutableScatterSet3.elements;
                                                                                    long[] jArr10 = mutableScatterSet3.metadata;
                                                                                    int length3 = jArr10.length - 2;
                                                                                    if (length3 >= 0) {
                                                                                        i8 = length;
                                                                                        i9 = i12;
                                                                                        int i19 = 0;
                                                                                        while (true) {
                                                                                            long j6 = jArr10[i19];
                                                                                            long[] jArr11 = jArr10;
                                                                                            obj2 = obj3;
                                                                                            if ((((~j6) << 7) & j6 & (-9187201950435737472L)) == -9187201950435737472L) {
                                                                                                if (i19 != length3) {
                                                                                                    break;
                                                                                                    break;
                                                                                                }
                                                                                                i19++;
                                                                                                obj3 = obj2;
                                                                                                jArr10 = jArr11;
                                                                                                i15 = 8;
                                                                                            } else {
                                                                                                int i20 = 8 - ((~(i19 - length3)) >>> 31);
                                                                                                for (int i21 = 0; i21 < i20; i21++) {
                                                                                                    if ((j6 & 255) < 128) {
                                                                                                        mutableScatterSet.add(objArr8[(i19 << 3) + i21]);
                                                                                                        z = true;
                                                                                                    }
                                                                                                    j6 >>= i15;
                                                                                                }
                                                                                                if (i20 != i15) {
                                                                                                    break;
                                                                                                }
                                                                                                if (i19 != length3) {
                                                                                                    break;
                                                                                                }
                                                                                                i19++;
                                                                                                obj3 = obj2;
                                                                                                jArr10 = jArr11;
                                                                                                i15 = 8;
                                                                                            }
                                                                                        }
                                                                                    } else {
                                                                                        obj2 = obj3;
                                                                                        i8 = length;
                                                                                        i9 = i12;
                                                                                    }
                                                                                    z3 = z;
                                                                                } else {
                                                                                    obj2 = obj3;
                                                                                    i8 = length;
                                                                                    i9 = i12;
                                                                                    mutableScatterSet.add(obj6);
                                                                                    z3 = true;
                                                                                }
                                                                                j59 j59Var = j59.a;
                                                                                z = z3;
                                                                            }
                                                                        } else {
                                                                            jArr7 = jArr9;
                                                                            obj2 = obj3;
                                                                            i8 = length;
                                                                            i9 = i12;
                                                                            j3 = j5;
                                                                            i10 = i18;
                                                                        }
                                                                        j5 = j3 >> 8;
                                                                        i18 = i10 + 1;
                                                                        i15 = 8;
                                                                        length = i8;
                                                                        jArr9 = jArr7;
                                                                        i12 = i9;
                                                                        obj3 = obj2;
                                                                    }
                                                                    jArr6 = jArr9;
                                                                    obj = obj3;
                                                                    i4 = length;
                                                                    i5 = i12;
                                                                    if (i17 != i15) {
                                                                        break;
                                                                    }
                                                                } else {
                                                                    jArr6 = jArr9;
                                                                    obj = obj3;
                                                                    i4 = length;
                                                                    i5 = i12;
                                                                }
                                                                if (i16 == length2) {
                                                                    break;
                                                                }
                                                                i16++;
                                                                i14 = i6;
                                                                objArr6 = objArr7;
                                                                length = i4;
                                                                jArr9 = jArr6;
                                                                i12 = i5;
                                                                obj3 = obj;
                                                                i15 = 8;
                                                            }
                                                        }
                                                    } else {
                                                        jArr5 = jArr8;
                                                        objArr4 = objArr5;
                                                        obj = obj3;
                                                        i4 = length;
                                                        i5 = i12;
                                                        j2 = j4;
                                                        i6 = i14;
                                                        DerivedState<?> derivedState2 = (DerivedState) obj4;
                                                        Object obj7 = map.get(derivedState2);
                                                        SnapshotMutationPolicy<?> policy2 = derivedState2.getPolicy();
                                                        if (policy2 == null) {
                                                            policy2 = SnapshotStateKt.structuralEqualityPolicy();
                                                        }
                                                        if (policy2.equivalent(derivedState2.getCurrentRecord().getCurrentValue(), obj7)) {
                                                            this.statesToReread.add(derivedState2);
                                                        } else {
                                                            Object obj8 = mutableScatterMap4.get(derivedState2);
                                                            if (obj8 != null) {
                                                                if (obj8 instanceof MutableScatterSet) {
                                                                    MutableScatterSet mutableScatterSet4 = (MutableScatterSet) obj8;
                                                                    Object[] objArr9 = mutableScatterSet4.elements;
                                                                    long[] jArr12 = mutableScatterSet4.metadata;
                                                                    int length4 = jArr12.length - 2;
                                                                    if (length4 >= 0) {
                                                                        int i22 = 0;
                                                                        while (true) {
                                                                            long j7 = jArr12[i22];
                                                                            if ((((~j7) << 7) & j7 & (-9187201950435737472L)) == -9187201950435737472L) {
                                                                                if (i22 != length4) {
                                                                                    break;
                                                                                    break;
                                                                                }
                                                                                i22++;
                                                                            } else {
                                                                                int i23 = 8 - ((~(i22 - length4)) >>> 31);
                                                                                for (int i24 = 0; i24 < i23; i24++) {
                                                                                    if ((j7 & 255) < 128) {
                                                                                        mutableScatterSet.add(objArr9[(i22 << 3) + i24]);
                                                                                        z = true;
                                                                                    }
                                                                                    j7 >>= 8;
                                                                                }
                                                                                if (i23 != 8) {
                                                                                    break;
                                                                                }
                                                                                if (i22 != length4) {
                                                                                    break;
                                                                                }
                                                                                i22++;
                                                                            }
                                                                        }
                                                                    }
                                                                } else {
                                                                    mutableScatterSet.add(obj8);
                                                                    z = true;
                                                                }
                                                            }
                                                            j59 j59Var2 = j59.a;
                                                        }
                                                    }
                                                    this.readingDerivedStates = false;
                                                } else {
                                                    jArr5 = jArr8;
                                                    objArr4 = objArr5;
                                                }
                                                obj = obj3;
                                                i4 = length;
                                                i5 = i12;
                                                j2 = j4;
                                                i6 = i14;
                                                this.readingDerivedStates = false;
                                            } catch (Throwable th) {
                                                this.readingDerivedStates = false;
                                                throw th;
                                            }
                                        }
                                        Object obj9 = mutableScatterMap4.get(obj);
                                        if (obj9 != null) {
                                            if (obj9 instanceof MutableScatterSet) {
                                                MutableScatterSet mutableScatterSet5 = (MutableScatterSet) obj9;
                                                Object[] objArr10 = mutableScatterSet5.elements;
                                                long[] jArr13 = mutableScatterSet5.metadata;
                                                int length5 = jArr13.length - 2;
                                                if (length5 >= 0) {
                                                    int i25 = 0;
                                                    while (true) {
                                                        long j8 = jArr13[i25];
                                                        if ((((~j8) << 7) & j8 & (-9187201950435737472L)) == -9187201950435737472L) {
                                                            if (i25 != length5) {
                                                                break;
                                                                break;
                                                            }
                                                            i25++;
                                                        } else {
                                                            int i26 = 8 - ((~(i25 - length5)) >>> 31);
                                                            long j9 = j8;
                                                            for (int i27 = 0; i27 < i26; i27++) {
                                                                if ((j9 & 255) < 128) {
                                                                    mutableScatterSet.add(objArr10[(i25 << 3) + i27]);
                                                                    z = true;
                                                                }
                                                                j9 >>= 8;
                                                            }
                                                            if (i26 != 8) {
                                                                break;
                                                            }
                                                            if (i25 != length5) {
                                                                break;
                                                            }
                                                            i25++;
                                                        }
                                                    }
                                                }
                                            } else {
                                                mutableScatterSet.add(obj9);
                                                z = true;
                                            }
                                        }
                                    } else {
                                        jArr5 = jArr8;
                                        objArr4 = objArr5;
                                        i4 = length;
                                        i5 = i12;
                                        j2 = j4;
                                        i6 = i14;
                                    }
                                    i7 = 8;
                                } else {
                                    jArr5 = jArr8;
                                    objArr4 = objArr5;
                                    i4 = length;
                                    i5 = i12;
                                    j2 = j4;
                                    i6 = i14;
                                    i7 = i11;
                                }
                                j4 = j2 >> i7;
                                i14 = i6 + 1;
                                jArr8 = jArr5;
                                i11 = i7;
                                objArr5 = objArr4;
                                length = i4;
                                i12 = i5;
                            }
                            jArr4 = jArr8;
                            objArr3 = objArr5;
                            int i28 = length;
                            int i29 = i12;
                            if (i13 != i11) {
                                break;
                            }
                            length = i28;
                            i3 = i29;
                        } else {
                            jArr4 = jArr8;
                            objArr3 = objArr5;
                            i3 = i12;
                        }
                        if (i3 == length) {
                            break;
                        }
                        i12 = i3 + 1;
                        jArr8 = jArr4;
                        objArr5 = objArr3;
                        i11 = 8;
                    }
                } else {
                    z = false;
                }
            } else {
                Iterator it3 = set.iterator();
                boolean z4 = false;
                while (it3.hasNext()) {
                    Object next = it3.next();
                    if (!(next instanceof StateObjectImpl) || ((StateObjectImpl) next).m5642isReadInh_f27i8$runtime(ReaderKind.m5631constructorimpl(2))) {
                        if (this.readingDerivedStates || !ScopeMap.m5396containsimpl(mutableScatterMap3, next)) {
                            it = it3;
                            mutableScatterMap = mutableScatterMap3;
                            i = 0;
                        } else {
                            this.readingDerivedStates = true;
                            try {
                                Object obj10 = mutableScatterMap3.get(next);
                                if (obj10 == null) {
                                    it = it3;
                                    mutableScatterMap = mutableScatterMap3;
                                } else if (obj10 instanceof MutableScatterSet) {
                                    MutableScatterSet mutableScatterSet6 = (MutableScatterSet) obj10;
                                    Object[] objArr11 = mutableScatterSet6.elements;
                                    long[] jArr14 = mutableScatterSet6.metadata;
                                    int length6 = jArr14.length - 2;
                                    if (length6 >= 0) {
                                        boolean z5 = z4;
                                        int i30 = 0;
                                        while (true) {
                                            long j10 = jArr14[i30];
                                            long[] jArr15 = jArr14;
                                            if ((((~j10) << 7) & j10 & (-9187201950435737472L)) != -9187201950435737472L) {
                                                int i31 = 8 - ((~(i30 - length6)) >>> 31);
                                                int i32 = 0;
                                                while (i32 < i31) {
                                                    if ((j10 & 255) < 128) {
                                                        it2 = it3;
                                                        DerivedState<?> derivedState3 = (DerivedState) objArr11[(i30 << 3) + i32];
                                                        derivedState3.getClass();
                                                        mutableScatterMap2 = mutableScatterMap3;
                                                        Object obj11 = map.get(derivedState3);
                                                        SnapshotMutationPolicy<?> policy3 = derivedState3.getPolicy();
                                                        if (policy3 == null) {
                                                            policy3 = SnapshotStateKt.structuralEqualityPolicy();
                                                        }
                                                        i2 = i32;
                                                        objArr2 = objArr11;
                                                        if (policy3.equivalent(derivedState3.getCurrentRecord().getCurrentValue(), obj11)) {
                                                            j = j10;
                                                            jArr2 = jArr15;
                                                            this.statesToReread.add(derivedState3);
                                                        } else {
                                                            Object obj12 = mutableScatterMap4.get(derivedState3);
                                                            if (obj12 != null) {
                                                                if (obj12 instanceof MutableScatterSet) {
                                                                    MutableScatterSet mutableScatterSet7 = (MutableScatterSet) obj12;
                                                                    Object[] objArr12 = mutableScatterSet7.elements;
                                                                    long[] jArr16 = mutableScatterSet7.metadata;
                                                                    int length7 = jArr16.length - 2;
                                                                    j = j10;
                                                                    if (length7 >= 0) {
                                                                        int i33 = 0;
                                                                        boolean z6 = z5;
                                                                        while (true) {
                                                                            long j11 = jArr16[i33];
                                                                            z2 = z6;
                                                                            jArr2 = jArr15;
                                                                            if ((((~j11) << 7) & j11 & (-9187201950435737472L)) != -9187201950435737472L) {
                                                                                int i34 = 8 - ((~(i33 - length7)) >>> 31);
                                                                                long j12 = j11;
                                                                                int i35 = 0;
                                                                                while (i35 < i34) {
                                                                                    if ((j12 & 255) < 128) {
                                                                                        mutableScatterSet.add(objArr12[(i33 << 3) + i35]);
                                                                                        z2 = true;
                                                                                    }
                                                                                    j12 >>= 8;
                                                                                    i35++;
                                                                                    jArr16 = jArr16;
                                                                                }
                                                                                jArr3 = jArr16;
                                                                                if (i34 != 8) {
                                                                                    break;
                                                                                }
                                                                            } else {
                                                                                jArr3 = jArr16;
                                                                            }
                                                                            z6 = z2;
                                                                            if (i33 != length7) {
                                                                                i33++;
                                                                                jArr15 = jArr2;
                                                                                jArr16 = jArr3;
                                                                            } else {
                                                                                z5 = z6;
                                                                            }
                                                                        }
                                                                    }
                                                                    z2 = z5;
                                                                    break;
                                                                } else {
                                                                    j = j10;
                                                                    jArr2 = jArr15;
                                                                    mutableScatterSet.add(obj12);
                                                                    z2 = true;
                                                                }
                                                                j59 j59Var3 = j59.a;
                                                                z5 = z2;
                                                            } else {
                                                                j = j10;
                                                            }
                                                            jArr2 = jArr15;
                                                            z2 = z5;
                                                            j59 j59Var4 = j59.a;
                                                            z5 = z2;
                                                        }
                                                    } else {
                                                        it2 = it3;
                                                        mutableScatterMap2 = mutableScatterMap3;
                                                        i2 = i32;
                                                        objArr2 = objArr11;
                                                        j = j10;
                                                        jArr2 = jArr15;
                                                    }
                                                    j10 = j >> 8;
                                                    i32 = i2 + 1;
                                                    it3 = it2;
                                                    mutableScatterMap3 = mutableScatterMap2;
                                                    jArr15 = jArr2;
                                                    objArr11 = objArr2;
                                                }
                                                it = it3;
                                                mutableScatterMap = mutableScatterMap3;
                                                objArr = objArr11;
                                                jArr = jArr15;
                                                if (i31 != 8) {
                                                    break;
                                                }
                                            } else {
                                                it = it3;
                                                mutableScatterMap = mutableScatterMap3;
                                                objArr = objArr11;
                                                jArr = jArr15;
                                            }
                                            if (i30 == length6) {
                                                break;
                                            }
                                            i30++;
                                            it3 = it;
                                            mutableScatterMap3 = mutableScatterMap;
                                            jArr14 = jArr;
                                            objArr11 = objArr;
                                        }
                                        z4 = z5;
                                    } else {
                                        it = it3;
                                        mutableScatterMap = mutableScatterMap3;
                                    }
                                } else {
                                    it = it3;
                                    mutableScatterMap = mutableScatterMap3;
                                    DerivedState<?> derivedState4 = (DerivedState) obj10;
                                    Object obj13 = map.get(derivedState4);
                                    SnapshotMutationPolicy<?> policy4 = derivedState4.getPolicy();
                                    if (policy4 == null) {
                                        policy4 = SnapshotStateKt.structuralEqualityPolicy();
                                    }
                                    if (policy4.equivalent(derivedState4.getCurrentRecord().getCurrentValue(), obj13)) {
                                        this.statesToReread.add(derivedState4);
                                    } else {
                                        Object obj14 = mutableScatterMap4.get(derivedState4);
                                        if (obj14 != null) {
                                            if (obj14 instanceof MutableScatterSet) {
                                                MutableScatterSet mutableScatterSet8 = (MutableScatterSet) obj14;
                                                Object[] objArr13 = mutableScatterSet8.elements;
                                                long[] jArr17 = mutableScatterSet8.metadata;
                                                int length8 = jArr17.length - 2;
                                                if (length8 >= 0) {
                                                    boolean z7 = z4;
                                                    int i36 = 0;
                                                    while (true) {
                                                        long j13 = jArr17[i36];
                                                        if ((((~j13) << 7) & j13 & (-9187201950435737472L)) == -9187201950435737472L) {
                                                            if (i36 != length8) {
                                                                z4 = z7;
                                                                break;
                                                            }
                                                            i36++;
                                                        } else {
                                                            int i37 = 8 - ((~(i36 - length8)) >>> 31);
                                                            long j14 = j13;
                                                            boolean z8 = z7;
                                                            for (int i38 = 0; i38 < i37; i38++) {
                                                                if ((j14 & 255) < 128) {
                                                                    mutableScatterSet.add(objArr13[(i36 << 3) + i38]);
                                                                    z8 = true;
                                                                }
                                                                j14 >>= 8;
                                                            }
                                                            if (i37 != 8) {
                                                                z4 = z8;
                                                                break;
                                                            }
                                                            z7 = z8;
                                                            if (i36 != length8) {
                                                                z4 = z7;
                                                                break;
                                                            }
                                                            i36++;
                                                        }
                                                    }
                                                }
                                            } else {
                                                mutableScatterSet.add(obj14);
                                                z4 = true;
                                            }
                                        }
                                        j59 j59Var5 = j59.a;
                                    }
                                }
                                i = 0;
                                this.readingDerivedStates = false;
                            } catch (Throwable th2) {
                                this.readingDerivedStates = false;
                                throw th2;
                            }
                        }
                        Object obj15 = mutableScatterMap4.get(next);
                        if (obj15 != null) {
                            if (obj15 instanceof MutableScatterSet) {
                                MutableScatterSet mutableScatterSet9 = (MutableScatterSet) obj15;
                                Object[] objArr14 = mutableScatterSet9.elements;
                                long[] jArr18 = mutableScatterSet9.metadata;
                                int length9 = jArr18.length - 2;
                                if (length9 >= 0) {
                                    boolean z9 = z4;
                                    int i39 = i;
                                    while (true) {
                                        long j15 = jArr18[i39];
                                        if ((((~j15) << 7) & j15 & (-9187201950435737472L)) != -9187201950435737472L) {
                                            int i40 = 8 - ((~(i39 - length9)) >>> 31);
                                            long j16 = j15;
                                            boolean z10 = z9;
                                            for (int i41 = i; i41 < i40; i41++) {
                                                if ((j16 & 255) < 128) {
                                                    mutableScatterSet.add(objArr14[(i39 << 3) + i41]);
                                                    z10 = true;
                                                }
                                                j16 >>= 8;
                                            }
                                            if (i40 != 8) {
                                                z4 = z10;
                                                break;
                                            }
                                            z9 = z10;
                                        }
                                        if (i39 == length9) {
                                            z4 = z9;
                                            break;
                                        }
                                        i39++;
                                    }
                                }
                            } else {
                                mutableScatterSet.add(obj15);
                                z4 = true;
                            }
                        }
                        it3 = it;
                        mutableScatterMap3 = mutableScatterMap;
                    } else {
                        it = it3;
                        mutableScatterMap = mutableScatterMap3;
                    }
                    it3 = it;
                    mutableScatterMap3 = mutableScatterMap;
                }
                z = z4;
            }
            if (!this.readingDerivedStates && this.statesToReread.getSize() != 0) {
                MutableVector<DerivedState<?>> mutableVector = this.statesToReread;
                DerivedState<?>[] derivedStateArr = mutableVector.content;
                int size = mutableVector.getSize();
                for (int i42 = 0; i42 < size; i42++) {
                    rereadDerivedState(derivedStateArr[i42]);
                }
                this.statesToReread.clear();
            }
            return z;
        }

        /* JADX WARN: Code duplicated, block: B:27:0x009d A[DONT_INVERT] */
        /* JADX WARN: Code duplicated, block: B:28:0x009f A[LOOP:2: B:16:0x0066->B:28:0x009f, LOOP_END] */
        /* JADX WARN: Code duplicated, block: B:29:0x00a8  */
        /* JADX WARN: Code duplicated, block: B:49:0x00ac A[EDGE_INSN: B:49:0x00ac->B:30:0x00ac BREAK  A[LOOP:2: B:16:0x0066->B:28:0x009f], SYNTHETIC] */
        public final void removeScopeIf(nl3<Object, Boolean> nl3Var) {
            long[] jArr;
            long[] jArr2;
            long j;
            char c;
            long j2;
            int i;
            MutableScatterMap<Object, MutableObjectIntMap<Object>> mutableScatterMap = this.scopeToValues;
            long[] jArr3 = mutableScatterMap.metadata;
            int length = jArr3.length - 2;
            if (length < 0) {
                return;
            }
            int i2 = 0;
            while (true) {
                long j3 = jArr3[i2];
                char c2 = 7;
                long j4 = -9187201950435737472L;
                if ((((~j3) << 7) & j3 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i3 = 8;
                    int i4 = 8 - ((~(i2 - length)) >>> 31);
                    int i5 = 0;
                    while (i5 < i4) {
                        if ((j3 & 255) < 128) {
                            int i6 = (i2 << 3) + i5;
                            c = c2;
                            Object obj = mutableScatterMap.keys[i6];
                            j2 = j4;
                            MutableObjectIntMap mutableObjectIntMap = (MutableObjectIntMap) mutableScatterMap.values[i6];
                            Boolean boolInvoke = nl3Var.invoke(obj);
                            if (boolInvoke.booleanValue()) {
                                Object[] objArr = mutableObjectIntMap.keys;
                                int[] iArr = mutableObjectIntMap.values;
                                long[] jArr4 = mutableObjectIntMap.metadata;
                                int i7 = i3;
                                int length2 = jArr4.length - 2;
                                if (length2 >= 0) {
                                    jArr2 = jArr3;
                                    j = j3;
                                    int i8 = 0;
                                    while (true) {
                                        long j5 = jArr4[i8];
                                        long[] jArr5 = jArr4;
                                        if ((((~j5) << c) & j5 & j2) != j2) {
                                            int i9 = 8 - ((~(i8 - length2)) >>> 31);
                                            for (int i10 = 0; i10 < i9; i10++) {
                                                if ((j5 & 255) < 128) {
                                                    int i11 = (i8 << 3) + i10;
                                                    Object obj2 = objArr[i11];
                                                    int i12 = iArr[i11];
                                                    removeObservation(obj, obj2);
                                                }
                                                j5 >>= i7;
                                            }
                                            if (i9 != i7) {
                                                break;
                                            }
                                            if (i8 != length2) {
                                                break;
                                            }
                                            i8++;
                                            jArr4 = jArr5;
                                            i7 = 8;
                                        } else if (i8 != length2) {
                                            break;
                                            break;
                                        } else {
                                            i8++;
                                            jArr4 = jArr5;
                                            i7 = 8;
                                        }
                                    }
                                } else {
                                    jArr2 = jArr3;
                                    j = j3;
                                }
                            } else {
                                jArr2 = jArr3;
                                j = j3;
                            }
                            if (boolInvoke.booleanValue()) {
                                mutableScatterMap.removeValueAt(i6);
                            }
                            i = 8;
                        } else {
                            jArr2 = jArr3;
                            j = j3;
                            c = c2;
                            j2 = j4;
                            i = i3;
                        }
                        i5++;
                        i3 = i;
                        j3 = j >> i;
                        c2 = c;
                        j4 = j2;
                        jArr3 = jArr2;
                    }
                    jArr = jArr3;
                    if (i4 != i3) {
                        return;
                    }
                } else {
                    jArr = jArr3;
                }
                if (i2 == length) {
                    return;
                }
                i2++;
                jArr3 = jArr;
            }
        }

        public final void rereadDerivedState(DerivedState<?> derivedState) {
            long[] jArr;
            MutableObjectIntMap<Object> mutableObjectIntMap;
            MutableScatterMap<Object, MutableObjectIntMap<Object>> mutableScatterMap = this.scopeToValues;
            int iHashCode = Long.hashCode(SnapshotKt.currentSnapshot().getSnapshotId());
            Object obj = this.valueToScopes.get(derivedState);
            if (obj == null) {
                return;
            }
            jh2 jh2Var = null;
            int i = 1;
            int i2 = 0;
            if (!(obj instanceof MutableScatterSet)) {
                MutableObjectIntMap<Object> mutableObjectIntMap2 = mutableScatterMap.get(obj);
                if (mutableObjectIntMap2 == null) {
                    mutableObjectIntMap2 = new MutableObjectIntMap<>(i2, i, jh2Var);
                    mutableScatterMap.set(obj, mutableObjectIntMap2);
                    j59 j59Var = j59.a;
                }
                recordRead(derivedState, iHashCode, obj, mutableObjectIntMap2);
                return;
            }
            MutableScatterSet mutableScatterSet = (MutableScatterSet) obj;
            Object[] objArr = mutableScatterSet.elements;
            long[] jArr2 = mutableScatterSet.metadata;
            int length = jArr2.length - 2;
            if (length < 0) {
                return;
            }
            int i3 = 0;
            while (true) {
                long j = jArr2[i3];
                if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i4 = 8;
                    int i5 = 8 - ((~(i3 - length)) >>> 31);
                    int i6 = 0;
                    while (i6 < i5) {
                        if ((j & 255) < 128) {
                            Object obj2 = objArr[(i3 << 3) + i6];
                            MutableObjectIntMap<Object> mutableObjectIntMap3 = mutableScatterMap.get(obj2);
                            if (mutableObjectIntMap3 == null) {
                                mutableObjectIntMap = new MutableObjectIntMap<>(i2, i, jh2Var);
                                mutableScatterMap.set(obj2, mutableObjectIntMap);
                                j59 j59Var2 = j59.a;
                            } else {
                                mutableObjectIntMap = mutableObjectIntMap3;
                            }
                            recordRead(derivedState, iHashCode, obj2, mutableObjectIntMap);
                        }
                        j >>= i4;
                        i6++;
                        i4 = i4;
                        jArr2 = jArr2;
                    }
                    jArr = jArr2;
                    if (i5 != i4) {
                        return;
                    }
                } else {
                    jArr = jArr2;
                }
                if (i3 == length) {
                    return;
                }
                i3++;
                jArr2 = jArr;
            }
        }

        public final void setReadingDerivedStates(boolean z) {
            this.readingDerivedStates = z;
        }

        public final void recordRead(Object obj) {
            Object obj2 = this.currentScope;
            obj2.getClass();
            int i = this.currentToken;
            MutableObjectIntMap<Object> mutableObjectIntMap = this.currentScopeReads;
            if (mutableObjectIntMap == null) {
                mutableObjectIntMap = new MutableObjectIntMap<>(0, 1, null);
                this.currentScopeReads = mutableObjectIntMap;
                this.scopeToValues.set(obj2, mutableObjectIntMap);
                j59 j59Var = j59.a;
            }
            recordRead(obj, i, obj2, mutableObjectIntMap);
        }
    }
}
