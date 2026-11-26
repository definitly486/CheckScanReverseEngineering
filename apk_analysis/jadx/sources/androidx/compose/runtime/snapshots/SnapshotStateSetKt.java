package androidx.compose.runtime.snapshots;

import androidx.compose.runtime.external.kotlinx.collections.immutable.ExtensionsKt;
import androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentSet;
import defpackage.aa4;
import defpackage.ah;
import defpackage.j59;
import defpackage.nl3;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public final class SnapshotStateSetKt {
    private static final Object sync = new Object();

    public static final <T> boolean attemptUpdate(StateSetStateRecord<T> stateSetStateRecord, int i, PersistentSet<? extends T> persistentSet) {
        boolean z;
        synchronized (sync) {
            if (stateSetStateRecord.getModification$runtime() == i) {
                stateSetStateRecord.setSet$runtime(persistentSet);
                z = true;
                stateSetStateRecord.setModification$runtime(stateSetStateRecord.getModification$runtime() + 1);
            } else {
                z = false;
            }
        }
        return z;
    }

    public static final <T> void clearImpl(SnapshotStateSet<T> snapshotStateSet) {
        Snapshot current;
        StateRecord firstStateRecord = snapshotStateSet.getFirstStateRecord();
        firstStateRecord.getClass();
        StateSetStateRecord stateSetStateRecord = (StateSetStateRecord) firstStateRecord;
        synchronized (SnapshotKt.getLock()) {
            current = Snapshot.Companion.getCurrent();
            StateSetStateRecord stateSetStateRecord2 = (StateSetStateRecord) SnapshotKt.writableRecord(stateSetStateRecord, snapshotStateSet, current);
            synchronized (sync) {
                stateSetStateRecord2.setSet$runtime(ExtensionsKt.persistentSetOf());
                stateSetStateRecord2.setModification$runtime(stateSetStateRecord2.getModification$runtime() + 1);
            }
        }
        SnapshotKt.notifyWrite(current, snapshotStateSet);
    }

    public static final <T> boolean conditionalUpdate(SnapshotStateSet<T> snapshotStateSet, nl3<? super PersistentSet<? extends T>, ? extends PersistentSet<? extends T>> nl3Var) {
        int modification$runtime;
        PersistentSet<T> set$runtime;
        Snapshot current;
        boolean zAttemptUpdate;
        do {
            synchronized (sync) {
                StateRecord firstStateRecord = snapshotStateSet.getFirstStateRecord();
                firstStateRecord.getClass();
                StateSetStateRecord stateSetStateRecord = (StateSetStateRecord) SnapshotKt.current((StateSetStateRecord) firstStateRecord);
                modification$runtime = stateSetStateRecord.getModification$runtime();
                set$runtime = stateSetStateRecord.getSet$runtime();
                j59 j59Var = j59.a;
            }
            set$runtime.getClass();
            PersistentSet<? extends T> persistentSetInvoke = nl3Var.invoke(set$runtime);
            if (aa4.e(persistentSetInvoke, set$runtime)) {
                return false;
            }
            StateRecord firstStateRecord2 = snapshotStateSet.getFirstStateRecord();
            firstStateRecord2.getClass();
            StateSetStateRecord stateSetStateRecord2 = (StateSetStateRecord) firstStateRecord2;
            synchronized (SnapshotKt.getLock()) {
                current = Snapshot.Companion.getCurrent();
                zAttemptUpdate = attemptUpdate((StateSetStateRecord) SnapshotKt.writableRecord(stateSetStateRecord2, snapshotStateSet, current), modification$runtime, persistentSetInvoke);
            }
            SnapshotKt.notifyWrite(current, snapshotStateSet);
        } while (!zAttemptUpdate);
        return true;
    }

    public static final <T> int getModification(SnapshotStateSet<T> snapshotStateSet) {
        StateRecord firstStateRecord = snapshotStateSet.getFirstStateRecord();
        firstStateRecord.getClass();
        return ((StateSetStateRecord) SnapshotKt.current((StateSetStateRecord) firstStateRecord)).getModification$runtime();
    }

    public static final <T> StateSetStateRecord<T> getReadable(SnapshotStateSet<T> snapshotStateSet) {
        StateRecord firstStateRecord = snapshotStateSet.getFirstStateRecord();
        firstStateRecord.getClass();
        return (StateSetStateRecord) SnapshotKt.readable((StateSetStateRecord) firstStateRecord, snapshotStateSet);
    }

    public static /* synthetic */ void getReadable$annotations(SnapshotStateSet snapshotStateSet) {
    }

    public static final <R, T> R mutate(SnapshotStateSet<T> snapshotStateSet, nl3<? super Set<T>, ? extends R> nl3Var) {
        int modification$runtime;
        PersistentSet<T> set$runtime;
        PersistentSet.Builder<T> builder;
        R rInvoke;
        Snapshot current;
        boolean zAttemptUpdate;
        do {
            synchronized (sync) {
                StateRecord firstStateRecord = snapshotStateSet.getFirstStateRecord();
                firstStateRecord.getClass();
                StateSetStateRecord stateSetStateRecord = (StateSetStateRecord) SnapshotKt.current((StateSetStateRecord) firstStateRecord);
                modification$runtime = stateSetStateRecord.getModification$runtime();
                set$runtime = stateSetStateRecord.getSet$runtime();
                j59 j59Var = j59.a;
            }
            if (set$runtime != null && (builder = set$runtime.builder()) != null) {
                rInvoke = nl3Var.invoke(builder);
                PersistentSet<T> persistentSetBuild = builder.build();
                if (aa4.e(persistentSetBuild, set$runtime)) {
                    break;
                }
                StateRecord firstStateRecord2 = snapshotStateSet.getFirstStateRecord();
                firstStateRecord2.getClass();
                StateSetStateRecord stateSetStateRecord2 = (StateSetStateRecord) firstStateRecord2;
                synchronized (SnapshotKt.getLock()) {
                    current = Snapshot.Companion.getCurrent();
                    zAttemptUpdate = attemptUpdate((StateSetStateRecord) SnapshotKt.writableRecord(stateSetStateRecord2, snapshotStateSet, current), modification$runtime, persistentSetBuild);
                }
                SnapshotKt.notifyWrite(current, snapshotStateSet);
            } else {
                ah.f("No set to mutate");
                return null;
            }
        } while (!zAttemptUpdate);
        return rInvoke;
    }

    public static final <T> boolean mutateBoolean(SnapshotStateSet<T> snapshotStateSet, nl3<? super Set<T>, Boolean> nl3Var) {
        int modification$runtime;
        PersistentSet<T> set$runtime;
        PersistentSet.Builder<T> builder;
        Boolean boolInvoke;
        Snapshot current;
        boolean zAttemptUpdate;
        do {
            synchronized (sync) {
                StateRecord firstStateRecord = snapshotStateSet.getFirstStateRecord();
                firstStateRecord.getClass();
                StateSetStateRecord stateSetStateRecord = (StateSetStateRecord) SnapshotKt.current((StateSetStateRecord) firstStateRecord);
                modification$runtime = stateSetStateRecord.getModification$runtime();
                set$runtime = stateSetStateRecord.getSet$runtime();
                j59 j59Var = j59.a;
            }
            if (set$runtime != null && (builder = set$runtime.builder()) != null) {
                boolInvoke = nl3Var.invoke(builder);
                PersistentSet<T> persistentSetBuild = builder.build();
                if (aa4.e(persistentSetBuild, set$runtime)) {
                    break;
                }
                StateRecord firstStateRecord2 = snapshotStateSet.getFirstStateRecord();
                firstStateRecord2.getClass();
                StateSetStateRecord stateSetStateRecord2 = (StateSetStateRecord) firstStateRecord2;
                synchronized (SnapshotKt.getLock()) {
                    current = Snapshot.Companion.getCurrent();
                    zAttemptUpdate = attemptUpdate((StateSetStateRecord) SnapshotKt.writableRecord(stateSetStateRecord2, snapshotStateSet, current), modification$runtime, persistentSetBuild);
                }
                SnapshotKt.notifyWrite(current, snapshotStateSet);
            } else {
                ah.f("No set to mutate");
                return false;
            }
        } while (!zAttemptUpdate);
        return boolInvoke.booleanValue();
    }

    public static final <T> StateRecord stateRecordWith(SnapshotStateSet<T> snapshotStateSet, PersistentSet<? extends T> persistentSet) {
        StateSetStateRecord stateSetStateRecord = new StateSetStateRecord(SnapshotKt.currentSnapshot().getSnapshotId(), persistentSet);
        if (Snapshot.Companion.isInSnapshot()) {
            stateSetStateRecord.setNext$runtime(new StateSetStateRecord(SnapshotId_jvmKt.toSnapshotId(1), persistentSet));
        }
        return stateSetStateRecord;
    }

    public static final <R, T> R withCurrent(SnapshotStateSet<T> snapshotStateSet, nl3<? super StateSetStateRecord<T>, ? extends R> nl3Var) {
        StateRecord firstStateRecord = snapshotStateSet.getFirstStateRecord();
        firstStateRecord.getClass();
        return nl3Var.invoke(SnapshotKt.current((StateSetStateRecord) firstStateRecord));
    }

    public static final <R, T> R writable(SnapshotStateSet<T> snapshotStateSet, nl3<? super StateSetStateRecord<T>, ? extends R> nl3Var) {
        Snapshot current;
        R rInvoke;
        StateRecord firstStateRecord = snapshotStateSet.getFirstStateRecord();
        firstStateRecord.getClass();
        StateSetStateRecord stateSetStateRecord = (StateSetStateRecord) firstStateRecord;
        synchronized (SnapshotKt.getLock()) {
            current = Snapshot.Companion.getCurrent();
            rInvoke = nl3Var.invoke(SnapshotKt.writableRecord(stateSetStateRecord, snapshotStateSet, current));
        }
        SnapshotKt.notifyWrite(current, snapshotStateSet);
        return rInvoke;
    }
}
