package androidx.compose.runtime.snapshots;

import defpackage.ul2;

/* JADX INFO: loaded from: classes2.dex */
public abstract class StateRecord {
    public static final int $stable = 8;
    private StateRecord next;
    private long snapshotId;

    public StateRecord() {
        this(SnapshotKt.currentSnapshot().getSnapshotId());
    }

    public abstract void assign(StateRecord stateRecord);

    public abstract StateRecord create();

    @ul2
    public /* synthetic */ StateRecord create(int i) {
        StateRecord stateRecordCreate = create();
        stateRecordCreate.snapshotId = SnapshotId_jvmKt.toSnapshotId(i);
        return stateRecordCreate;
    }

    public final StateRecord getNext$runtime() {
        return this.next;
    }

    public final long getSnapshotId$runtime() {
        return this.snapshotId;
    }

    public final void setNext$runtime(StateRecord stateRecord) {
        this.next = stateRecord;
    }

    public final void setSnapshotId$runtime(long j) {
        this.snapshotId = j;
    }

    public StateRecord create(long j) {
        StateRecord stateRecordCreate = create();
        stateRecordCreate.snapshotId = j;
        return stateRecordCreate;
    }

    public StateRecord(long j) {
        this.snapshotId = j;
    }

    @ul2
    public StateRecord(int i) {
        this(SnapshotId_jvmKt.toSnapshotId(i));
    }
}
