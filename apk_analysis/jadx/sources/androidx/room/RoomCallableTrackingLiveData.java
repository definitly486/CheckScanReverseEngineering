package androidx.room;

import defpackage.e02;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes3.dex */
public final class RoomCallableTrackingLiveData<T> extends RoomTrackingLiveData<T> {
    private final Callable<T> callableFunction;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RoomCallableTrackingLiveData(RoomDatabase roomDatabase, InvalidationLiveDataContainer invalidationLiveDataContainer, boolean z, String[] strArr, Callable<T> callable) {
        super(roomDatabase, invalidationLiveDataContainer, z, strArr, null);
        roomDatabase.getClass();
        invalidationLiveDataContainer.getClass();
        strArr.getClass();
        callable.getClass();
        this.callableFunction = callable;
    }

    @Override // androidx.room.RoomTrackingLiveData
    public Object compute(e02<? super T> e02Var) {
        return this.callableFunction.call();
    }
}
