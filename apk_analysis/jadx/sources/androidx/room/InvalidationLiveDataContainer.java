package androidx.room;

import androidx.lifecycle.LiveData;
import androidx.sqlite.SQLiteConnection;
import defpackage.nl3;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Set;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes3.dex */
public final class InvalidationLiveDataContainer {
    private final RoomDatabase database;
    private final Set<LiveData<?>> liveDataSet;

    public InvalidationLiveDataContainer(RoomDatabase roomDatabase) {
        roomDatabase.getClass();
        this.database = roomDatabase;
        Set<LiveData<?>> setNewSetFromMap = Collections.newSetFromMap(new IdentityHashMap());
        setNewSetFromMap.getClass();
        this.liveDataSet = setNewSetFromMap;
    }

    public final <T> LiveData<T> create(String[] strArr, boolean z, Callable<T> callable) {
        strArr.getClass();
        callable.getClass();
        return new RoomCallableTrackingLiveData(this.database, this, z, strArr, callable);
    }

    public final Set<LiveData<?>> getLiveDataSet$room_runtime() {
        return this.liveDataSet;
    }

    public final void onActive(LiveData<?> liveData) {
        liveData.getClass();
        this.liveDataSet.add(liveData);
    }

    public final void onInactive(LiveData<?> liveData) {
        liveData.getClass();
        this.liveDataSet.remove(liveData);
    }

    public final <T> LiveData<T> create(String[] strArr, boolean z, nl3<? super SQLiteConnection, ? extends T> nl3Var) {
        strArr.getClass();
        nl3Var.getClass();
        return new RoomLambdaTrackingLiveData(this.database, this, z, strArr, nl3Var);
    }
}
