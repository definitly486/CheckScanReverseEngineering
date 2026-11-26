package androidx.compose.runtime;

import androidx.collection.ObjectIntMap;
import androidx.compose.runtime.snapshots.StateObject;

/* JADX INFO: loaded from: classes2.dex */
public interface DerivedState<T> extends State<T> {

    public interface Record<T> {
        T getCurrentValue();

        ObjectIntMap<StateObject> getDependencies();
    }

    Record<T> getCurrentRecord();

    SnapshotMutationPolicy<T> getPolicy();
}
