package androidx.datastore.core;

import defpackage.gh4;
import defpackage.ll3;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: loaded from: classes2.dex */
public final class DataStoreImpl$storageConnectionDelegate$1<T> extends gh4 implements ll3<StorageConnection<T>> {
    final /* synthetic */ DataStoreImpl<T> this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DataStoreImpl$storageConnectionDelegate$1(DataStoreImpl<T> dataStoreImpl) {
        super(0);
        this.this$0 = dataStoreImpl;
    }

    @Override // defpackage.ll3
    public final StorageConnection<T> invoke() {
        return ((DataStoreImpl) this.this$0).storage.createConnection();
    }
}
