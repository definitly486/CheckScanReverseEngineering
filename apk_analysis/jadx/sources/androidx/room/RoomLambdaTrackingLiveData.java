package androidx.room;

import androidx.room.util.DBUtil;
import androidx.sqlite.SQLiteConnection;
import defpackage.e02;
import defpackage.nl3;

/* JADX INFO: loaded from: classes3.dex */
public final class RoomLambdaTrackingLiveData<T> extends RoomTrackingLiveData<T> {
    private final nl3<SQLiteConnection, T> lambdaFunction;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public RoomLambdaTrackingLiveData(RoomDatabase roomDatabase, InvalidationLiveDataContainer invalidationLiveDataContainer, boolean z, String[] strArr, nl3<? super SQLiteConnection, ? extends T> nl3Var) {
        super(roomDatabase, invalidationLiveDataContainer, z, strArr, null);
        roomDatabase.getClass();
        invalidationLiveDataContainer.getClass();
        strArr.getClass();
        nl3Var.getClass();
        this.lambdaFunction = nl3Var;
    }

    @Override // androidx.room.RoomTrackingLiveData
    public Object compute(e02<? super T> e02Var) {
        return DBUtil.performSuspending(getDatabase(), true, getInTransaction(), this.lambdaFunction, e02Var);
    }
}
