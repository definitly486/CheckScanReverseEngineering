package androidx.compose.runtime.snapshots;

/* JADX INFO: loaded from: classes2.dex */
public interface StateObject {

    public static final class DefaultImpls {
        @Deprecated
        public static StateRecord mergeRecords(StateObject stateObject, StateRecord stateRecord, StateRecord stateRecord2, StateRecord stateRecord3) {
            return StateObject.super.mergeRecords(stateRecord, stateRecord2, stateRecord3);
        }
    }

    StateRecord getFirstStateRecord();

    default StateRecord mergeRecords(StateRecord stateRecord, StateRecord stateRecord2, StateRecord stateRecord3) {
        return null;
    }

    void prependStateRecord(StateRecord stateRecord);
}
